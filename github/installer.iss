[Setup]
AppName=GitHub Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/github-desktop
AppSupportURL=https://github.com/Ryanabcraft/github-desktop/issues
DefaultDirName={localappdata}\GitHub Desktop
DefaultGroupName=GitHub Desktop
UninstallDisplayIcon={app}\GitHub.exe
UninstallDisplayName=GitHub Desktop
OutputDir=dist_installer
OutputBaseFilename=GitHub-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\GitHub.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\GitHub"; Filename: "{app}\GitHub.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\GitHub Desktop"; Filename: "{app}\GitHub.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar GitHub Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\GitHub.exe"; Description: "Executar GitHub Desktop"; Flags: postinstall nowait skipifsilent
