[Setup]
AppName=Wikipedia Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/wikipedia-desktop
AppSupportURL=https://github.com/Ryanabcraft/wikipedia-desktop/issues
DefaultDirName={localappdata}\Wikipedia Desktop
DefaultGroupName=Wikipedia Desktop
UninstallDisplayIcon={app}\Wikipedia.exe
UninstallDisplayName=Wikipedia Desktop
OutputDir=dist_installer
OutputBaseFilename=Wikipedia-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Wikipedia.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Wikipedia"; Filename: "{app}\Wikipedia.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Wikipedia Desktop"; Filename: "{app}\Wikipedia.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Wikipedia Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Wikipedia.exe"; Description: "Executar Wikipedia Desktop"; Flags: postinstall nowait skipifsilent
