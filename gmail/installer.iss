[Setup]
AppName=Gmail Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/gmail-desktop
AppSupportURL=https://github.com/Ryanabcraft/gmail-desktop/issues
DefaultDirName={localappdata}\Gmail Desktop
DefaultGroupName=Gmail Desktop
UninstallDisplayIcon={app}\Gmail.exe
UninstallDisplayName=Gmail Desktop
OutputDir=dist_installer
OutputBaseFilename=Gmail-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Gmail.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Gmail"; Filename: "{app}\Gmail.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Gmail Desktop"; Filename: "{app}\Gmail.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Gmail Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Gmail.exe"; Description: "Executar Gmail Desktop"; Flags: postinstall nowait skipifsilent
