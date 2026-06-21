[Setup]
AppName=SoundCloud Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/soundcloud-desktop
AppSupportURL=https://github.com/Ryanabcraft/soundcloud-desktop/issues
DefaultDirName={localappdata}\SoundCloud Desktop
DefaultGroupName=SoundCloud Desktop
UninstallDisplayIcon={app}\SoundCloud.exe
UninstallDisplayName=SoundCloud Desktop
OutputDir=dist_installer
OutputBaseFilename=SoundCloud-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\SoundCloud.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\SoundCloud"; Filename: "{app}\SoundCloud.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\SoundCloud Desktop"; Filename: "{app}\SoundCloud.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar SoundCloud Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\SoundCloud.exe"; Description: "Executar SoundCloud Desktop"; Flags: postinstall nowait skipifsilent
