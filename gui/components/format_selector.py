# gui/components/format_selector.py
from PyQt6.QtWidgets import QWidget, QLabel, QVBoxLayout

class FormatSelector(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QVBoxLayout()
        label = QLabel("Componente: Seleção de Formato")
        layout.addWidget(label)
        self.setLayout(layout)
