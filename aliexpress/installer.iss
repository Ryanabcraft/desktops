[Setup]
AppName=AliExpress Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/aliexpress-desktop
AppSupportURL=https://github.com/Ryanabcraft/aliexpress-desktop/issues
DefaultDirName={localappdata}\AliExpress Desktop
DefaultGroupName=AliExpress Desktop
UninstallDisplayIcon={app}\AliExpress.exe
UninstallDisplayName=AliExpress Desktop
OutputDir=dist_installer
OutputBaseFilename=AliExpress-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\AliExpress.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\AliExpress"; Filename: "{app}\AliExpress.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\AliExpress Desktop"; Filename: "{app}\AliExpress.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar AliExpress Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\AliExpress.exe"; Description: "Executar AliExpress Desktop"; Flags: postinstall nowait skipifsilent
