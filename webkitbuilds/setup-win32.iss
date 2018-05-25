; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "TrustNote"
#define MyAppPackageName "trustnote"
#define MyAppVersion "1.1.5.4"
#define MyAppPublisher "TrustNote"
#define MyAppURL "https://trustnote.org"
#define MyAppExeName "TrustNote.exe"

[Setup]
; AppId={{804636ee-b017-4cad-8719-e58ac97ffa5c}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename={#MyAppPackageName}-win32
; SourceDir=../../trustnotebuilds
OutputDir=../../trustnotebuilds
Compression=lzma
SolidCompression=yes
; SetupIconFile=../public/img/icons/icon-white-outline.ico
UninstallDisplayIcon={app}/icon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
; Name: "french"; MessagesFile: "compiler:Languages\French.isl"
; Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
; Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Registry]
Root: HKLM; Subkey: "Software\Classes\trustnote"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\trustnote"; ValueType: string; ValueName: ""; ValueData: "URL:trustnote Protocol"
Root: HKLM; Subkey: "Software\Classes\trustnote"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""
Root: HKLM; Subkey: "Software\Classes\trustnote\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\icon.ico"
Root: HKLM; Subkey: "Software\Classes\trustnote\shell"
Root: HKLM; Subkey: "Software\Classes\trustnote\shell\open"
Root: HKLM; Subkey: "Software\Classes\trustnote\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName} ""%1"""

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
; Source: "..\trustnotebuilds\trustnote-test\win32\trustnote.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\trustnotebuilds\{#MyAppPackageName}\win32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "../public/img/icons/icon-white-outline.ico"; DestDir: "{app}"; DestName: "icon.ico"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}/icon.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}/icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

