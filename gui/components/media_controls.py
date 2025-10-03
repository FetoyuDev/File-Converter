# gui/components/media_controls.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class MediaControls(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Controles de Mídia")
        layout.addWidget(label)
        self.setLayout(layout)
