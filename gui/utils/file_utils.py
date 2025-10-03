# File Utilities
# Provides utility functions for file operations
# Handles file selection, validation, and basic file management

import os
import shutil
from pathlib import Path
from PyQt6.QtWidgets import QFileDialog
from typing import List, Optional, Tuple


def get_file_size(file_path: str) -> str:
    """Get human-readable file size"""
    try:
        size_bytes = os.path.getsize(file_path)
        for unit in ['B', 'KB', 'MB', 'GB', 'TB']:
            if size_bytes < 1024.0:
                return f"{size_bytes:.2f} {unit}"
            size_bytes /= 1024.0
        return f"{size_bytes:.2f} PB"
    except Exception as e:
        return "Unknown"


def validate_file_exists(file_path: str) -> bool:
    """Check if file exists and is accessible"""
    return os.path.isfile(file_path) and os.access(file_path, os.R_OK)


def get_file_extension(file_path: str) -> str:
    """Get file extension without dot"""
    return Path(file_path).suffix.lower().lstrip('.')


def ensure_directory_exists(directory: str) -> bool:
    """Create directory if it doesn't exist"""
    try:
        os.makedirs(directory, exist_ok=True)
        return True
    except Exception as e:
        print(f"Error creating directory: {e}")
        return False


def get_safe_filename(filename: str) -> str:
    """Remove invalid characters from filename"""
    invalid_chars = '<>:"/\\|?*'
    safe_name = filename
    for char in invalid_chars:
        safe_name = safe_name.replace(char, '_')
    return safe_name


def get_unique_filename(file_path: str) -> str:
    """Generate unique filename if file already exists"""
    if not os.path.exists(file_path):
        return file_path
    
    path = Path(file_path)
    directory = path.parent
    stem = path.stem
    extension = path.suffix
    
    counter = 1
    while True:
        new_path = directory / f"{stem}_{counter}{extension}"
        if not os.path.exists(new_path):
            return str(new_path)
        counter += 1


def copy_file(source: str, destination: str) -> Tuple[bool, str]:
    """Copy file from source to destination"""
    try:
        ensure_directory_exists(str(Path(destination).parent))
        shutil.copy2(source, destination)
        return True, "File copied successfully"
    except Exception as e:
        return False, f"Error copying file: {str(e)}"


def delete_file(file_path: str) -> Tuple[bool, str]:
    """Delete file safely"""
    try:
        if os.path.exists(file_path):
            os.remove(file_path)
            return True, "File deleted successfully"
        return False, "File not found"
    except Exception as e:
        return False, f"Error deleting file: {str(e)}"


def select_input_file(parent=None, filter_str: str = "All Files (*.*)") -> Optional[str]:
    """Open file dialog to select input file"""
    file_path, _ = QFileDialog.getOpenFileName(
        parent,
        "Select Input File",
        "",
        filter_str
    )
    return file_path if file_path else None


def select_input_files(parent=None, filter_str: str = "All Files (*.*)") -> List[str]:
    """Open file dialog to select multiple input files"""
    file_paths, _ = QFileDialog.getOpenFileNames(
        parent,
        "Select Input Files",
        "",
        filter_str
    )
    return file_paths if file_paths else []


def select_output_file(parent=None, filter_str: str = "All Files (*.*)", default_name: str = "") -> Optional[str]:
    """Open file dialog to select output file location"""
    file_path, _ = QFileDialog.getSaveFileName(
        parent,
        "Select Output File",
        default_name,
        filter_str
    )
    return file_path if file_path else None


def select_directory(parent=None, title: str = "Select Directory") -> Optional[str]:
    """Open directory dialog"""
    directory = QFileDialog.getExistingDirectory(
        parent,
        title
    )
    return directory if directory else None


def get_file_info(file_path: str) -> dict:
    """Get comprehensive file information"""
    if not validate_file_exists(file_path):
        return {}
    
    path = Path(file_path)
    return {
        'name': path.name,
        'stem': path.stem,
        'extension': path.suffix.lstrip('.'),
        'size': get_file_size(file_path),
        'size_bytes': os.path.getsize(file_path),
        'directory': str(path.parent),
        'absolute_path': str(path.absolute())
    }
