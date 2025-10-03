# gui/components/file_selector.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class FileSelector(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Seleção de Arquivos/Pastas")
        layout.addWidget(label)
        self.setLayout(layout)
