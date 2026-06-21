# Gemini Desktop

App desktop leve que abre o [Google Gemini](https://gemini.google.com) em uma janela limpa, sem abas de navegador.

- ✅ **Login automático** — usa seus cookies do navegador, sem precisar logar de novo
- ✅ **Multiplataforma** — Windows, Linux e macOS
- ✅ **20+ navegadores** — Chrome, Edge, Brave, Firefox, Opera, Vivaldi e mais
- ✅ **Código aberto** — Python puro, ~10 MB
- ✅ **Sem telemetria** — não coleta nenhum dado

## Download

| Plataforma | Download |
|------------|----------|
| **Windows** | [`Google-Gemini-Setup.exe`](https://github.com/Ryanabcraft/gemini-desktop/releases/latest) — Instalador Inno Setup |
| **Linux / macOS** | [`gemini_app.py`](gemini_app.py) — Rode com `python3 gemini_app.py` |

## Como usar

### Windows
1. Baixe o instalador `.exe` da [última release](https://github.com/Ryanabcraft/gemini-desktop/releases/latest)
2. Execute e siga os passos
3. Pronto! O Gemini abre em janela limpa

### Linux / macOS
```bash
# Baixe o script
wget https://raw.githubusercontent.com/Ryanabcraft/gemini-desktop/main/gemini_app.py

# Execute
python3 gemini_app.py
```

Requer Python 3.6+ e um navegador instalado.

## ChatGPT Desktop também!

Também temos o [ChatGPT Desktop](https://ryanabcraft.github.io/chatgpt-desktop/) —
mesma ideia, pro ChatGPT. Repositório: [Ryanabcraft/chatgpt-desktop](https://github.com/Ryanabcraft/chatgpt-desktop)

## Como funciona

O app detecta automaticamente seu navegador principal (Chrome, Edge, Brave, Firefox, Opera, etc.)
e abre o Gemini no modo `--app` (Chromium) ou `--new-window` (Firefox).

Você só precisa estar logado no Google Gemini no seu navegador — o app usa os mesmos cookies.

## Navegadores compatíveis

- **Chromium**: Chrome, Edge, Brave, Opera, Vivaldi, Chromium, Yandex, Epic, Comodo Dragon, Slimjet, Cốc Cốc
- **Firefox**: Firefox, Firefox ESR

## Licença

MIT
