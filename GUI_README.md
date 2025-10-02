# File Converter GUI - Especificações de Desenvolvimento

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
└── GUI_README.md
```

## Funcionalidades Principais

### 1. Sistema de Temas
- **Temas inclusos:**
  - AMOLED Dark (preto puro #000000)
  - Dark (cinza escuro)
  - Light (claro padrão)
  - Ocean Blue (azul oceano)
  - Sunset (laranja/rosa)
  - Forest Green (verde floresta)
- Troca dinâmica de temas sem reinicialização
- Salvamento automático de preferências

### 2. Seleção de Arquivos e Pastas
- Seleção múltipla de arquivos (Ctrl+Click)
- Seleção múltipla de pastas
- Drag & drop de arquivos/pastas
- Lista com ícones por tipo de arquivo
- Busca/filtro na lista de arquivos

### 3. Conversão Personalizada
- Seleção de formato individual para cada arquivo
- Conversão em lote com formatos diferentes
- Detecção automática de tipo de mídia:
  - Vídeo (mp4, avi, mkv, webm, mov, etc.)
  - Áudio (mp3, wav, flac, ogg, aac, etc.)
  - Imagem (jpg, png, gif, bmp, webp, svg, etc.)
  - Documento (pdf, doc, txt, etc.)

### 4. Controles de Mídia Dinâmicos
Controles exibidos conforme o tipo de arquivo selecionado:
- **Play/Pause**: vídeo, áudio, GIF
- **Stop**: vídeo, áudio
- **Next/Previous**: navegação em lotes
- **Loop**: One/All/Disabled
- **Random**: On/Off para navegação aleatória
- **Zoom In/Out**: imagens, documentos, vídeos

### 5. Sistema de Logs
- Janela flutuante/dockable de logs
- Níveis de log: Info, Warning, Error
- Filtros por tipo de mensagem
- Exportação de logs
- Auto-scroll opcional

### 6. Barra de Busca
- Busca em tempo real na lista de arquivos
- Filtros por:
  - Nome do arquivo
  - Tipo/extensão
  - Tamanho
  - Status de conversão

### 7. Sistema de Tradução Reescrito
- Arquivos JSON para cada idioma
- Carregamento dinâmico de idiomas
- Fallback para inglês se tradução não existir
- Hot-reload de traduções
- Suporte a variáveis nas strings

## Requisitos do Sistema

### Dependências Python
```
PySide6>=6.6.0
Pillow>=10.0.0
ffmpeg-python>=0.2.0
```

### Software Externo
- FFmpeg (para conversão de mídia)
- ImageMagick (para conversão de imagens)

## Instalação

### Linux
```bash
pip install -r requirements.txt
sudo apt install ffmpeg imagemagick  # Debian/Ubuntu
```

### Windows
```bash
pip install -r requirements.txt
# Baixar FFmpeg de https://ffmpeg.org/download.html
# Adicionar ao PATH do sistema
```

## Uso

```bash
python gui/main.py
```

## Estrutura de Tradução

### Exemplo: `i18n/pt_BR.json`
```json
{
  "app": {
    "title": "Conversor de Arquivos",
    "version": "Versão {version}"
  },
  "menu": {
    "file": "Arquivo",
    "edit": "Editar",
    "view": "Visualizar",
    "help": "Ajuda"
  },
  "buttons": {
    "add_files": "Adicionar Arquivos",
    "add_folders": "Adicionar Pastas",
    "convert": "Converter",
    "cancel": "Cancelar"
  },
  "media_controls": {
    "play": "Reproduzir",
    "pause": "Pausar",
    "stop": "Parar",
    "next": "Próximo",
    "previous": "Anterior"
  }
}
```

## Contribuindo

1. Faça fork do repositório
2. Crie uma branch para sua feature (`git checkout -b feature/MinhaFeature`)
3. Commit suas mudanças (`git commit -m 'Adiciona MinhaFeature'`)
4. Push para a branch (`git push origin feature/MinhaFeature`)
5. Abra um Pull Request

## Licença

Este projeto mantém a licença do repositório principal.

## Roadmap

- [x] Criar branch gui-development
- [x] Estrutura básica do projeto
- [ ] Implementar janela principal
- [ ] Implementar sistema de temas
- [ ] Implementar seleção de arquivos
- [ ] Implementar conversão backend
- [ ] Implementar controles de mídia
- [ ] Implementar sistema de logs
- [ ] Implementar sistema de tradução
- [ ] Testes multiplataforma
- [ ] Documentação completa
- [ ] Release v1.0.0
