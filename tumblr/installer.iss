[Setup]
AppName=Tumblr Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/tumblr-desktop
AppSupportURL=https://github.com/Ryanabcraft/tumblr-desktop/issues
DefaultDirName={localappdata}\Tumblr Desktop
DefaultGroupName=Tumblr Desktop
UninstallDisplayIcon={app}\Tumblr.exe
UninstallDisplayName=Tumblr Desktop
OutputDir=dist_installer
OutputBaseFilename=Tumblr-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Tumblr.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Tumblr"; Filename: "{app}\Tumblr.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Tumblr Desktop"; Filename: "{app}\Tumblr.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Tumblr Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Tumblr.exe"; Description: "Executar Tumblr Desktop"; Flags: postinstall nowait skipifsilent
