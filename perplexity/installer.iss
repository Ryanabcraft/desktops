[Setup]
AppName=Perplexity Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/perplexity-desktop
AppSupportURL=https://github.com/Ryanabcraft/perplexity-desktop/issues
DefaultDirName={localappdata}\Perplexity Desktop
DefaultGroupName=Perplexity Desktop
UninstallDisplayIcon={app}\Perplexity.exe
UninstallDisplayName=Perplexity Desktop
OutputDir=dist_installer
OutputBaseFilename=Perplexity-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Perplexity.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Perplexity"; Filename: "{app}\Perplexity.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Perplexity Desktop"; Filename: "{app}\Perplexity.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Perplexity Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Perplexity.exe"; Description: "Executar Perplexity Desktop"; Flags: postinstall nowait skipifsilent
