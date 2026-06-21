[Setup]
AppName=Medium Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/medium-desktop
AppSupportURL=https://github.com/Ryanabcraft/medium-desktop/issues
DefaultDirName={localappdata}\Medium Desktop
DefaultGroupName=Medium Desktop
UninstallDisplayIcon={app}\Medium.exe
UninstallDisplayName=Medium Desktop
OutputDir=dist_installer
OutputBaseFilename=Medium-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Medium.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Medium"; Filename: "{app}\Medium.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Medium Desktop"; Filename: "{app}\Medium.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Medium Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Medium.exe"; Description: "Executar Medium Desktop"; Flags: postinstall nowait skipifsilent
