[Setup]
AppName=Dev.to Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/devto-desktop
AppSupportURL=https://github.com/Ryanabcraft/devto-desktop/issues
DefaultDirName={localappdata}\Dev.to Desktop
DefaultGroupName=Dev.to Desktop
UninstallDisplayIcon={app}\DevTo.exe
UninstallDisplayName=Dev.to Desktop
OutputDir=dist_installer
OutputBaseFilename=DevTo-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\DevTo.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Dev.to"; Filename: "{app}\DevTo.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Dev.to Desktop"; Filename: "{app}\DevTo.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Dev.to Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\DevTo.exe"; Description: "Executar Dev.to Desktop"; Flags: postinstall nowait skipifsilent
