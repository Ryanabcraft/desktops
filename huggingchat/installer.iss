[Setup]
AppName=HuggingChat Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/huggingchat-desktop
AppSupportURL=https://github.com/Ryanabcraft/huggingchat-desktop/issues
DefaultDirName={localappdata}\HuggingChat Desktop
DefaultGroupName=HuggingChat Desktop
UninstallDisplayIcon={app}\HugChat.exe
UninstallDisplayName=HuggingChat Desktop
OutputDir=dist_installer
OutputBaseFilename=HuggingChat-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\HugChat.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\HuggingChat"; Filename: "{app}\HugChat.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\HuggingChat Desktop"; Filename: "{app}\HugChat.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar HuggingChat Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\HugChat.exe"; Description: "Executar HuggingChat Desktop"; Flags: postinstall nowait skipifsilent
