# ChatGPT Desktop

App desktop leve que abre o [ChatGPT](https://chatgpt.com) em uma janela limpa, sem abas de navegador.

- ✅ **Login automático** — usa seus cookies do navegador, sem precisar logar de novo
- ✅ **Multiplataforma** — Windows, Linux e macOS
- ✅ **20+ navegadores** — Chrome, Edge, Brave, Firefox, Opera, Vivaldi e mais
- ✅ **Código aberto** — Python puro, ~10 MB
- ✅ **Sem telemetria** — não coleta nenhum dado

## Download

| Plataforma | Download |
|------------|----------|
| **Windows** | [`ChatGPT-Desktop-Setup.exe`](https://github.com/Ryanabcraft/chatgpt-desktop/releases/latest) — Instalador Inno Setup |
| **Linux / macOS** | [`chatgpt_app.py`](chatgpt_app.py) — Rode com `python3 chatgpt_app.py` |

## Como usar

### Windows
1. Baixe o instalador `.exe` da [última release](https://github.com/Ryanabcraft/chatgpt-desktop/releases/latest)
2. Execute e siga os passos
3. Pronto! O ChatGPT abre em janela limpa

### Linux / macOS
```bash
# Baixe o script
wget https://raw.githubusercontent.com/Ryanabcraft/chatgpt-desktop/main/chatgpt_app.py

# Execute
python3 chatgpt_app.py
```

Requer Python 3.6+ e um navegador instalado.

## Como funciona

O app detecta automaticamente seu navegador principal (Chrome, Edge, Brave, Firefox, Opera, etc.)
e abre o ChatGPT no modo `--app` (Chromium) ou `--new-window` (Firefox).

Você só precisa estar logado no ChatGPT no seu navegador — o app usa os mesmos cookies.

## Navegadores compatíveis

- **Chromium**: Chrome, Edge, Brave, Opera, Vivaldi, Chromium, Yandex, Epic, Comodo Dragon, Slimjet, Cốc Cốc
- **Firefox**: Firefox, Firefox ESR

## Licença

MIT
