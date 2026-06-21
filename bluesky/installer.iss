[Setup]
AppName=Bluesky Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/bluesky-desktop
AppSupportURL=https://github.com/Ryanabcraft/bluesky-desktop/issues
DefaultDirName={localappdata}\Bluesky Desktop
DefaultGroupName=Bluesky Desktop
UninstallDisplayIcon={app}\Bluesky.exe
UninstallDisplayName=Bluesky Desktop
OutputDir=dist_installer
OutputBaseFilename=Bluesky-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Bluesky.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Bluesky"; Filename: "{app}\Bluesky.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Bluesky Desktop"; Filename: "{app}\Bluesky.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Bluesky Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Bluesky.exe"; Description: "Executar Bluesky Desktop"; Flags: postinstall nowait skipifsilent
