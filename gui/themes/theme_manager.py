# gui/themes/theme_manager.py
"""
Gerenciador de temas - Aplica e troca estilos .qss na GUI.
"""

import os
from PyQt6.QtWidgets import QApplication

class ThemeManager:
    THEMES_DIR = os.path.join(os.path.dirname(__file__))  # Pasta onde estão os .qss
    THEMES_LIST = [
        "light.qss",
        "dark.qss",
        "amoled_dark.qss",
        "ocean_blue.qss",
        "sunset.qss",
        "forest_green.qss",
        "chroma_neon.qss"
    ]

    @staticmethod
    def apply_theme(theme_name: str, app: QApplication):
        """
        Aplica o tema .qss especificado à aplicação.
        """
        file_name = theme_name if theme_name.endswith(".qss") else f"{theme_name}.qss"
        theme_path = os.path.join(ThemeManager.THEMES_DIR, file_name)
        if os.path.exists(theme_path):
            with open(theme_path, "r") as f:
                app.setStyleSheet(f.read())
            print(f"Tema aplicado: {file_name}")
        else:
            print(f"Arquivo de tema não encontrado: {theme_path}")

    @staticmethod
    def list_themes():
        """
        Lista arquivos de tema disponíveis no diretório.
        """
        return [f for f in os.listdir(ThemeManager.THEMES_DIR) if f.endswith(".qss")]

# Exemplo de uso em main.py:
# ThemeManager.apply_theme("chroma_neon", app)
