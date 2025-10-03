# gui/main_window.py
"""
Janela principal do File Converter GUI.
Gerencia os componentes e a integração entre eles.
"""

from PyQt6.QtWidgets import QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel

from gui.components.file_selector import FileSelector
from gui.components.format_selector import FormatSelector
from gui.components.search_bar import SearchBar
from gui.components.media_controls import MediaControls
from gui.components.log_viewer import LogViewer
from gui.components.preview_panel import PreviewPanel

class MainWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("File Converter")
        self.setGeometry(100, 100, 1200, 700)

        # Widget central
        central_widget = QWidget(self)
        self.setCentralWidget(central_widget)

        layout = QVBoxLayout()

        self.file_selector = FileSelector()
        layout.addWidget(self.file_selector)

        self.format_selector = FormatSelector()
        layout.addWidget(self.format_selector)

        self.search_bar = SearchBar()
        layout.addWidget(self.search_bar)

        controls_layout = QHBoxLayout()
        self.media_controls = MediaControls()
        controls_layout.addWidget(self.media_controls)
        self.preview_panel = PreviewPanel()
        controls_layout.addWidget(self.preview_panel)
        layout.addLayout(controls_layout)

        self.log_viewer = LogViewer()
        layout.addWidget(self.log_viewer)
        
        central_widget.setLayout(layout)
