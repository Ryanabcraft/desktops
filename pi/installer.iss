[Setup]
AppName=Pi Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/pi-desktop
AppSupportURL=https://github.com/Ryanabcraft/pi-desktop/issues
DefaultDirName={localappdata}\Pi Desktop
DefaultGroupName=Pi Desktop
UninstallDisplayIcon={app}\Pi.exe
UninstallDisplayName=Pi Desktop
OutputDir=dist_installer
OutputBaseFilename=Pi-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Pi.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Pi"; Filename: "{app}\Pi.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Pi Desktop"; Filename: "{app}\Pi.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Pi Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Pi.exe"; Description: "Executar Pi Desktop"; Flags: postinstall nowait skipifsilent
