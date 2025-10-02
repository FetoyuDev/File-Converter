#!/usr/bin/env python3
"""
File Converter GUI - Main Application Entry Point
Cross-platform GUI for file conversion with theme support and media controls
"""

import sys
from pathlib import Path
from PySide6.QtWidgets import QApplication
from PySide6.QtCore import Qt

# Add parent directory to path for imports
sys.path.insert(0, str(Path(__file__).parent.parent))

from gui.main_window import MainWindow
from gui.themes.theme_manager import ThemeManager
from gui.utils.settings import Settings


def main():
    """
    Main application entry point
    """
    # Enable high DPI support
    QApplication.setHighDpiScaleFactorRoundingPolicy(
        Qt.HighDpiScaleFactorRoundingPolicy.PassThrough
    )
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling)
    QApplication.setAttribute(Qt.AA_UseHighDpiPixmaps)
    
    # Create application
    app = QApplication(sys.argv)
    app.setApplicationName("File Converter")
    app.setApplicationVersion("1.0.0")
    app.setOrganizationName("FetoyuDev")
    
    # Load settings
    settings = Settings()
    
    # Initialize theme manager
    theme_manager = ThemeManager(app)
    
    # Load saved theme or default to dark
    saved_theme = settings.get('theme', 'dark')
    theme_manager.apply_theme(saved_theme)
    
    # Create and show main window
    main_window = MainWindow(theme_manager, settings)
    main_window.show()
    
    # Run application
    sys.exit(app.exec())


if __name__ == '__main__':
    main()
