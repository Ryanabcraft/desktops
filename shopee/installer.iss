[Setup]
AppName=Shopee Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/shopee-desktop
AppSupportURL=https://github.com/Ryanabcraft/shopee-desktop/issues
DefaultDirName={localappdata}\Shopee Desktop
DefaultGroupName=Shopee Desktop
UninstallDisplayIcon={app}\Shopee.exe
UninstallDisplayName=Shopee Desktop
OutputDir=dist_installer
OutputBaseFilename=Shopee-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Shopee.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Shopee"; Filename: "{app}\Shopee.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Shopee Desktop"; Filename: "{app}\Shopee.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Shopee Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Shopee.exe"; Description: "Executar Shopee Desktop"; Flags: postinstall nowait skipifsilent
