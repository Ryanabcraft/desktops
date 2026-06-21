[Setup]
AppName=Google Gemini
AppVersion=1.1.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/gemini-desktop
AppSupportURL=https://github.com/Ryanabcraft/gemini-desktop/issues
DefaultDirName={localappdata}\Google Gemini
DefaultGroupName=Google Gemini
UninstallDisplayIcon={app}\Google Gemini.exe
UninstallDisplayName=Google Gemini
OutputDir=dist_installer
OutputBaseFilename=Google-Gemini-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Google Gemini.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Google Gemini"; Filename: "{app}\Google Gemini.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Google Gemini"; Filename: "{app}\Google Gemini.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Google Gemini"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Google Gemini.exe"; Description: "Executar Google Gemini"; Flags: postinstall nowait skipifsilent
