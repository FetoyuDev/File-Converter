# gui/components/preview_panel.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class PreviewPanel(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Painel de Pré-visualização")
        layout.addWidget(label)
        self.setLayout(layout)
