[Setup]
AppName=Reddit Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/reddit-desktop
AppSupportURL=https://github.com/Ryanabcraft/reddit-desktop/issues
DefaultDirName={localappdata}\Reddit Desktop
DefaultGroupName=Reddit Desktop
UninstallDisplayIcon={app}\Reddit.exe
UninstallDisplayName=Reddit Desktop
OutputDir=dist_installer
OutputBaseFilename=Reddit-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Reddit.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Reddit"; Filename: "{app}\Reddit.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Reddit Desktop"; Filename: "{app}\Reddit.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Reddit Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Reddit.exe"; Description: "Executar Reddit Desktop"; Flags: postinstall nowait skipifsilent
