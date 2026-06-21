[Setup]
AppName=ChatGPT Desktop
AppVersion=1.1.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/chatgpt-desktop
AppSupportURL=https://github.com/Ryanabcraft/chatgpt-desktop/issues
DefaultDirName={localappdata}\ChatGPT Desktop
DefaultGroupName=ChatGPT Desktop
UninstallDisplayIcon={app}\ChatGPT.exe
UninstallDisplayName=ChatGPT Desktop
OutputDir=dist_installer
OutputBaseFilename=ChatGPT-Desktop-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\ChatGPT.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\ChatGPT Desktop"; Filename: "{app}\ChatGPT.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\ChatGPT Desktop"; Filename: "{app}\ChatGPT.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar ChatGPT Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\ChatGPT.exe"; Description: "Executar ChatGPT Desktop"; Flags: postinstall nowait skipifsilent
