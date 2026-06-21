[Setup]
AppName=YouTube Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/youtube-desktop
AppSupportURL=https://github.com/Ryanabcraft/youtube-desktop/issues
DefaultDirName={localappdata}\YouTube Desktop
DefaultGroupName=YouTube Desktop
UninstallDisplayIcon={app}\YouTube.exe
UninstallDisplayName=YouTube Desktop
OutputDir=dist_installer
OutputBaseFilename=YouTube-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\YouTube.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\YouTube"; Filename: "{app}\YouTube.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\YouTube Desktop"; Filename: "{app}\YouTube.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar YouTube Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\YouTube.exe"; Description: "Executar YouTube Desktop"; Flags: postinstall nowait skipifsilent
