[Setup]
AppName=Google Docs Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/gdocs-desktop
AppSupportURL=https://github.com/Ryanabcraft/gdocs-desktop/issues
DefaultDirName={localappdata}\Google Docs Desktop
DefaultGroupName=Google Docs Desktop
UninstallDisplayIcon={app}\GDocs.exe
UninstallDisplayName=Google Docs Desktop
OutputDir=dist_installer
OutputBaseFilename=GoogleDocs-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\GDocs.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Google Docs"; Filename: "{app}\GDocs.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Google Docs Desktop"; Filename: "{app}\GDocs.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Google Docs Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\GDocs.exe"; Description: "Executar Google Docs Desktop"; Flags: postinstall nowait skipifsilent
