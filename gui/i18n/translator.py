"""
Translation System for File Converter GUI
Rewritten JSON-based i18n system with hot-reload support
"""

import json
import os
from pathlib import Path
from typing import Dict, Any, Optional
from PySide6.QtCore import QObject, Signal


class Translator(QObject):
    """
    JSON-based translation system with dynamic language switching
    """
    
    language_changed = Signal(str)  # Emits new language code
    
    def __init__(self, default_language: str = 'en_US'):
        super().__init__()
        self.current_language = default_language
        self.translations: Dict[str, Any] = {}
        self.fallback_translations: Dict[str, Any] = {}
        self.i18n_dir = Path(__file__).parent
        
        # Load default English as fallback
        self._load_language('en_US', is_fallback=True)
        
        # Load requested language
        if default_language != 'en_US':
            self._load_language(default_language)
    
    def _load_language(self, lang_code: str, is_fallback: bool = False) -> bool:
        """
        Load language file from i18n directory
        
        Args:
            lang_code: Language code (e.g., 'pt_BR', 'es_ES')
            is_fallback: Whether this is the fallback language
        
        Returns:
            True if loaded successfully, False otherwise
        """
        lang_file = self.i18n_dir / f"{lang_code}.json"
        
        if not lang_file.exists():
            print(f"Warning: Translation file {lang_file} not found")
            return False
        
        try:
            with open(lang_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            if is_fallback:
                self.fallback_translations = data
            else:
                self.translations = data
            
            return True
        except (json.JSONDecodeError, IOError) as e:
            print(f"Error loading {lang_file}: {e}")
            return False
    
    def set_language(self, lang_code: str) -> bool:
        """
        Change current language
        
        Args:
            lang_code: New language code
        
        Returns:
            True if language changed successfully
        """
        if lang_code == self.current_language:
            return True
        
        if self._load_language(lang_code):
            self.current_language = lang_code
            self.language_changed.emit(lang_code)
            return True
        
        return False
    
    def get(self, key: str, **kwargs) -> str:
        """
        Get translated string by key path
        
        Args:
            key: Dot-separated key path (e.g., 'app.title', 'menu.file')
            **kwargs: Variables to substitute in translation string
        
        Returns:
            Translated string with variables substituted
        """
        # Try to get from current language
        value = self._get_nested(self.translations, key)
        
        # Fall back to English if not found
        if value is None:
            value = self._get_nested(self.fallback_translations, key)
        
        # Return key itself if translation not found
        if value is None:
            return f"[{key}]"
        
        # Substitute variables
        if kwargs:
            try:
                return value.format(**kwargs)
            except KeyError as e:
                print(f"Warning: Missing variable {e} for key '{key}'")
                return value
        
        return value
    
    def _get_nested(self, data: Dict, key: str) -> Optional[str]:
        """
        Get value from nested dictionary using dot notation
        
        Args:
            data: Dictionary to search
            key: Dot-separated key path
        
        Returns:
            Value if found, None otherwise
        """
        keys = key.split('.')
        current = data
        
        for k in keys:
            if isinstance(current, dict) and k in current:
                current = current[k]
            else:
                return None
        
        return current if isinstance(current, str) else None
    
    def get_available_languages(self) -> Dict[str, str]:
        """
        Get list of available languages
        
        Returns:
            Dictionary mapping language codes to native names
        """
        languages = {}
        lang_metadata_file = self.i18n_dir / 'languages.json'
        
        if lang_metadata_file.exists():
            try:
                with open(lang_metadata_file, 'r', encoding='utf-8') as f:
                    languages = json.load(f)
            except (json.JSONDecodeError, IOError) as e:
                print(f"Error loading languages metadata: {e}")
        
        # Fallback: scan directory for .json files
        if not languages:
            for file in self.i18n_dir.glob('*.json'):
                if file.stem != 'languages':
                    languages[file.stem] = file.stem
        
        return languages
    
    def tr(self, key: str, **kwargs) -> str:
        """
        Shorthand for get()
        """
        return self.get(key, **kwargs)


# Global translator instance
_translator: Optional[Translator] = None


def get_translator() -> Translator:
    """
    Get or create global translator instance
    """
    global _translator
    if _translator is None:
        _translator = Translator()
    return _translator


def tr(key: str, **kwargs) -> str:
    """
    Global translation function
    """
    return get_translator().get(key, **kwargs)
