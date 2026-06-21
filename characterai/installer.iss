[Setup]
AppName=Character.AI Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/characterai-desktop
AppSupportURL=https://github.com/Ryanabcraft/characterai-desktop/issues
DefaultDirName={localappdata}\Character.AI Desktop
DefaultGroupName=Character.AI Desktop
UninstallDisplayIcon={app}\CharAI.exe
UninstallDisplayName=Character.AI Desktop
OutputDir=dist_installer
OutputBaseFilename=CharacterAI-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\CharAI.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Character.AI"; Filename: "{app}\CharAI.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Character.AI Desktop"; Filename: "{app}\CharAI.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Character.AI Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\CharAI.exe"; Description: "Executar Character.AI Desktop"; Flags: postinstall nowait skipifsilent
