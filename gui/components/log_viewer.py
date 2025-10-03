# gui/components/log_viewer.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class LogViewer(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Visualizador de Logs")
        layout.addWidget(label)
        self.setLayout(layout)
