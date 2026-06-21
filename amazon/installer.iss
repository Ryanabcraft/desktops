[Setup]
AppName=Amazon Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/amazon-desktop
AppSupportURL=https://github.com/Ryanabcraft/amazon-desktop/issues
DefaultDirName={localappdata}\Amazon Desktop
DefaultGroupName=Amazon Desktop
UninstallDisplayIcon={app}\Amazon.exe
UninstallDisplayName=Amazon Desktop
OutputDir=dist_installer
OutputBaseFilename=Amazon-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Amazon.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Amazon"; Filename: "{app}\Amazon.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Amazon Desktop"; Filename: "{app}\Amazon.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Amazon Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Amazon.exe"; Description: "Executar Amazon Desktop"; Flags: postinstall nowait skipifsilent
