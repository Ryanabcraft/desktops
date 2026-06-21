[Setup]
AppName=Shein Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/shein-desktop
AppSupportURL=https://github.com/Ryanabcraft/shein-desktop/issues
DefaultDirName={localappdata}\Shein Desktop
DefaultGroupName=Shein Desktop
UninstallDisplayIcon={app}\Shein.exe
UninstallDisplayName=Shein Desktop
OutputDir=dist_installer
OutputBaseFilename=Shein-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Shein.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Shein"; Filename: "{app}\Shein.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Shein Desktop"; Filename: "{app}\Shein.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Shein Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Shein.exe"; Description: "Executar Shein Desktop"; Flags: postinstall nowait skipifsilent
