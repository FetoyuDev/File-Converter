# gui/components/search_bar.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class SearchBar(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Barra de Busca")
        layout.addWidget(label)
        self.setLayout(layout)
