#!/usr/bin/env python3
"""
File Converter GUI - Main Application Entry Point
Cross-platform GUI for file conversion with theme support and media controls
"""

import sys
from pathlib import Path
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import Qt

# Add parent directory to path for imports
sys.path.insert(0, str(Path(__file__).parent.parent))

from gui.main_window import MainWindow
from gui.utils.settings import get_settings


def main():
    """
    Main application entry point
    """
    # Create application
    app = QApplication(sys.argv)
    app.setApplicationName("File Converter")
    app.setApplicationVersion("1.0.0")
    app.setOrganizationName("FetoyuDev")
    
    # Load settings
    settings = get_settings()
    
    # Create and show main window
    main_window = MainWindow()
    main_window.show()
    
    # Run application
    sys.exit(app.exec())


if __name__ == '__main__':
    main()
