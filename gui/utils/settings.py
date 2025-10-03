# Settings Management
# Handles application configuration and user preferences
# Provides persistence for themes, language, and other settings

import json
import os
from pathlib import Path
from typing import Any, Dict
from PyQt6.QtCore import QSettings


class Settings:
    """Application settings manager"""
    
    def __init__(self, app_name: str = "FileConverter", org_name: str = "FetoyuDev"):
        self.app_name = app_name
        self.org_name = org_name
        self.settings = QSettings(org_name, app_name)
        self._defaults = self._get_defaults()
    
    def _get_defaults(self) -> Dict[str, Any]:
        """Get default settings"""
        return {
            'theme': 'light',
            'language': 'en',
            'window_width': 1000,
            'window_height': 700,
            'window_x': None,
            'window_y': None,
            'output_directory': str(Path.home() / 'Downloads'),
            'auto_open_output': False,
            'remember_last_format': True,
            'last_video_format': 'mp4',
            'last_audio_format': 'mp3',
            'last_image_format': 'png',
            'show_advanced_options': False,
            'check_updates': True,
        }
    
    def get(self, key: str, default: Any = None) -> Any:
        """Get setting value"""
        if default is None:
            default = self._defaults.get(key)
        return self.settings.value(key, default)
    
    def set(self, key: str, value: Any) -> None:
        """Set setting value"""
        self.settings.setValue(key, value)
    
    def get_all(self) -> Dict[str, Any]:
        """Get all settings as dictionary"""
        result = {}
        for key in self._defaults.keys():
            result[key] = self.get(key)
        return result
    
    def reset(self, key: str = None) -> None:
        """Reset setting to default (or all if key is None)"""
        if key:
            self.set(key, self._defaults.get(key))
        else:
            for key, value in self._defaults.items():
                self.set(key, value)
    
    def reset_all(self) -> None:
        """Reset all settings to defaults"""
        self.reset()
    
    def save_window_geometry(self, x: int, y: int, width: int, height: int) -> None:
        """Save window position and size"""
        self.set('window_x', x)
        self.set('window_y', y)
        self.set('window_width', width)
        self.set('window_height', height)
    
    def get_window_geometry(self) -> tuple:
        """Get saved window geometry"""
        return (
            self.get('window_x'),
            self.get('window_y'),
            self.get('window_width'),
            self.get('window_height')
        )
    
    def get_theme(self) -> str:
        """Get current theme"""
        return self.get('theme', 'light')
    
    def set_theme(self, theme: str) -> None:
        """Set theme (light/dark)"""
        if theme in ['light', 'dark']:
            self.set('theme', theme)
    
    def get_language(self) -> str:
        """Get current language"""
        return self.get('language', 'en')
    
    def set_language(self, language: str) -> None:
        """Set language"""
        self.set('language', language)
    
    def get_output_directory(self) -> str:
        """Get output directory"""
        return self.get('output_directory', str(Path.home() / 'Downloads'))
    
    def set_output_directory(self, directory: str) -> None:
        """Set output directory"""
        self.set('output_directory', directory)
    
    def export_to_json(self, file_path: str) -> bool:
        """Export settings to JSON file"""
        try:
            with open(file_path, 'w') as f:
                json.dump(self.get_all(), f, indent=4)
            return True
        except Exception as e:
            print(f"Error exporting settings: {e}")
            return False
    
    def import_from_json(self, file_path: str) -> bool:
        """Import settings from JSON file"""
        try:
            with open(file_path, 'r') as f:
                data = json.load(f)
            for key, value in data.items():
                if key in self._defaults:
                    self.set(key, value)
            return True
        except Exception as e:
            print(f"Error importing settings: {e}")
            return False


# Global settings instance
_settings_instance = None

def get_settings() -> Settings:
    """Get global settings instance"""
    global _settings_instance
    if _settings_instance is None:
        _settings_instance = Settings()
    return _settings_instance
