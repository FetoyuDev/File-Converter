<details>
  <summary>
Português (PT-BR)</summary>

  # File Converter
  - Especificações de Desenvolvimento

  ## Visão Geral
  Esta branch contém a implementação da interface gráfica (GUI) multiplataforma para o File Converter, desenvolvida em Python usando PySide6 para compatibilidade com Windows e Linux.

  ## Arquitetura do Projeto
  ```
  File-Converter/
  ├── gui/
  │   ├── main.py                 # Aplicação principal
  │   ├── main_window.py          # Janela principal
  │   ├── components/
  │   │   ├── file_selector.py    # Seleção múltipla de arquivos/pastas
  │   │   ├── format_selector.py  # Seleção de formato por arquivo
  │   │   ├── search_bar.py       # Barra de busca
  │   │   ├── media_controls.py   # Controles de mídia dinâmicos
  │   │   ├── log_viewer.py       # Visualizador de logs
  │   │   └── preview_panel.py    # Painel de preview com zoom
  │   ├── themes/
  │   │   ├── theme_manager.py    # Gerenciador de temas
  │   │   ├── amoled_dark.qss     # Tema AMOLED escuro
  │   │   ├── dark.qss            # Tema escuro
  │   │   ├── light.qss           # Tema claro
  │   │   ├── ocean_blue.qss      # Tema Ocean Blue
  │   │   ├── sunset.qss          # Tema Sunset
  │   │   └── forest_green.qss    # Tema Forest Green
  │   ├── i18n/
  │   │   ├── translator.py       # Sistema de tradução
  │   │   ├── en_US.json          # Inglês
  │   │   ├── pt_BR.json          # Português Brasil
  │   │   ├── es_ES.json          # Espanhol
  │   │   └── languages.json      # Metadados de idiomas
  │   └── utils/
  │       ├── file_utils.py       # Utilitários de arquivo
  │       ├── converter.py        # Backend de conversão
  │       └── settings.py         # Gerenciamento de configurações
  ├── requirements.txt
  └── README.md
  ```

  ## Funcionalidades Principais
  1. Sistema de Temas: troca dinâmica, preferências salvas, múltiplos temas.
  2. Seleção de Arquivos/Pastas: múltipla, drag & drop, busca/filtro.
  3. Conversão Personalizada: por arquivo, lote, detecção automática de mídia.
  4. Controles de Mídia Dinâmicos: play/pause/stop/next/prev/loop/random/zoom.
  5. Logs: níveis, filtros, exportação, auto-scroll.
  6. Barra de Busca: filtros por nome, tipo, tamanho, status.
  7. Tradução: JSON por idioma, fallback, hot-reload, variáveis.

  ## Requisitos do Sistema
  - PySide6>=6.6.0
  - Pillow>=10.0.0
  - ffmpeg-python>=0.2.0
  - FFmpeg e ImageMagick instalados no sistema

  ## Instalação
  - Linux: `pip install -r requirements.txt && sudo apt install ffmpeg imagemagick`
  - Windows: `pip install -r requirements.txt` e instalar FFmpeg e adicionar ao PATH

  ## Uso
  ```bash
  python gui/main.py
  ```

  ## Contribuindo
  1. Fork, 2. Branch, 3. Commit, 4. Push, 5. PR

  ## Licença
  Este projeto mantém a licença do repositório principal.
</details>

<details>
  <summary>
English (EN)</summary>

  # File Converter
  - Development Specifications

  ## Overview
  This branch contains the cross-platform GUI implementation built with Python and PySide6, compatible with Windows and Linux.

  ## Project Architecture
  See the tree above. Key modules: components (UI widgets), themes (QSS), i18n (JSON translations), utils, and conversion backend.

  ## Key Features
  1. Themes: live switching, persisted preferences, multiple presets.
  2. File/Folder Selection: multi-select, drag & drop, search/filter.
  3. Custom Conversion: per-file format, batch with mixed formats, auto media detection.
  4. Dynamic Media Controls: play/pause/stop/next/prev/loop/random/zoom.
  5. Logs: levels, filters, export, optional auto-scroll.
  6. Search Bar: filters by name, type, size, status.
  7. Translation: JSON per locale, fallback, hot-reload, templated variables.

  ## System Requirements
  - PySide6>=6.6.0, Pillow>=10.0.0, ffmpeg-python>=0.2.0
  - FFmpeg and ImageMagick installed on the OS

  ## Installation
  - Linux: `pip install -r requirements.txt && sudo apt install ffmpeg imagemagick`
  - Windows: `pip install -r requirements.txt`, install FFmpeg and add to PATH

  ## Usage
  ```bash
  python gui/main.py
  ```

  ## Contributing
  1. Fork, 2. Branch, 3. Commit, 4. Push, 5. PR

  ## License
  This project inherits the main repository license.
</details>

<details>
  <summary>
Español (ES)</summary>

  # File Converter
  - Especificaciones de Desarrollo

  ## Visión General
  Esta rama contiene la implementación de la GUI multiplataforma con Python y PySide6, compatible con Windows y Linux.

  ## Arquitectura del Proyecto
  Ver el árbol anterior. Módulos clave: components (widgets), themes (QSS), i18n (traducciones JSON), utils y backend de conversión.

  ## Funcionalidades Clave
  1. Temas: cambio en vivo, preferencias guardadas, múltiples presets.
  2. Selección de Archivos/Carpetas: multiselección, arrastrar y soltar, búsqueda/filtro.
  3. Conversión Personalizada: formato por archivo, lote mixto, detección automática.
  4. Controles Dinámicos: play/pausa/stop/sig/ant/bucle/aleatorio/zoom.
  5. Registros: niveles, filtros, exportación, auto-scroll opcional.
  6. Barra de Búsqueda: filtros por nombre, tipo, tamaño, estado.
  7. Traducción: JSON por idioma, respaldo, recarga en caliente, variables.

  ## Requisitos del Sistema
  - PySide6>=6.6.0, Pillow>=10.0.0, ffmpeg-python>=0.2.0
  - FFmpeg e ImageMagick instalados en el sistema

  ## Instalación
  - Linux: `pip install -r requirements.txt && sudo apt install ffmpeg imagemagick`
  - Windows: `pip install -r requirements.txt`, instalar FFmpeg y agregar al PATH

  ## Uso
  ```bash
  python gui/main.py
  ```

  ## Contribución
  1. Fork, 2. Rama, 3. Commit, 4. Push, 5. PR

  ## Licencia
  Este proyecto mantiene la licencia del repositorio principal.
</details>
