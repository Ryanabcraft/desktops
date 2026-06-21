[Setup]
AppName=Stack Overflow Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/stackoverflow-desktop
AppSupportURL=https://github.com/Ryanabcraft/stackoverflow-desktop/issues
DefaultDirName={localappdata}\Stack Overflow Desktop
DefaultGroupName=Stack Overflow Desktop
UninstallDisplayIcon={app}\StackOverflow.exe
UninstallDisplayName=Stack Overflow Desktop
OutputDir=dist_installer
OutputBaseFilename=StackOverflow-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\StackOverflow.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Stack Overflow"; Filename: "{app}\StackOverflow.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Stack Overflow Desktop"; Filename: "{app}\StackOverflow.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Stack Overflow Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\StackOverflow.exe"; Description: "Executar Stack Overflow Desktop"; Flags: postinstall nowait skipifsilent
