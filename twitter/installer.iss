[Setup]
AppName=X/Twitter
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/twitter-desktop
AppSupportURL=https://github.com/Ryanabcraft/twitter-desktop/issues
DefaultDirName={localappdata}\X/Twitter
DefaultGroupName=X/Twitter
UninstallDisplayIcon={app}\Twitter.exe
UninstallDisplayName=X/Twitter
OutputDir=dist_installer
OutputBaseFilename=Twitter-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Twitter.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\X"; Filename: "{app}\Twitter.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\X/Twitter"; Filename: "{app}\Twitter.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar X/Twitter"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Twitter.exe"; Description: "Executar X/Twitter"; Flags: postinstall nowait skipifsilent
