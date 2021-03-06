; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName      "Launchy"
#define MyAppPublisher "OpenNingia"
#define MyAppURL       "http://openningia.github.com/Launchy/"
#define MyAppExeName   "Launchy.exe"
#define MyAppUrlName   "Launchy.url"

#if !Defined(PWD)
#define PWD "..\.."
#endif

[Setup]
AppMutex=LaunchyMutex,Global\LaunchyMutex
AppName={#MyAppName}
AppVerName={#MyAppName} {%APPVEYOR_BUILD_VERSION|2.8.10}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:DefaultInstallDirectory}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\..\license.txt
OutputDir=Release\
OutputBaseFilename=Launchy_Setup
SetupIconFile=..\Launchy.ico
Compression=lzma
SolidCompression=true
ShowLanguageDialog=yes
AppID=Launchy_21344213
CreateUninstallRegKey=not IsPortable
UninstallDisplayIcon={app}\{#MyAppExeName}
PrivilegesRequired=none
WizardSmallImageFile=header.bmp
AllowNoIcons=yes
; ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Check: not IsPortable
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0, 6.1; Check: not IsPortable
Name: iconscurrentuser; Description: {cm:IconsCurrentUser}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive; Check: not IsRegularUser And not IsPortable
Name: iconscommon; Description: {cm:IconsAllUsers}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive unchecked; Check: not IsRegularUser And not IsPortable

[InstallDelete]
Type: filesandordirs; Name: {app}\skins\Black Glass
Type: filesandordirs; Name: {app}\skins\Default
Type: filesandordirs; Name: {app}\skins\Mercury
Type: filesandordirs; Name: {app}\skins\Note
Type: filesandordirs; Name: {app}\skins\Quicksilver2
Type: filesandordirs; Name: {app}\skins\Spotlight Wide
Type: filesandordirs; Name: {app}\platform_win.dll

[Files]
Source: {#PWD}\release\{#MyAppExeName}; DestDir: {app}; Flags: ignoreversion
Source: LaunchyPortable.ini; DestDir: {app}; DestName: Launchy.ini; Flags: onlyifdoesntexist; Check: IsPortable

Source: "{#PWD}\release\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#PWD}\release\bearer\*.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "{#PWD}\release\iconengines\*.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "{#PWD}\release\imageformats\*.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#PWD}\release\platforms\*.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#PWD}\release\translations\*.qm"; DestDir: "{app}\tr"; Flags: ignoreversion

; redist
Source: {#PWD}\release\vcredist*.exe; DestDir: {tmp}; Flags: deleteafterinstall

; Translations
Source: {#PWD}\translations\launchy_es.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_de.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_ja.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_zh.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_nl.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_rus.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_zh_TW.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_it_IT.qm; DestDir: {app}\tr\; Flags: ignoreversion

; Plugins
; plugins may require all 3 runtimes
Source: "{#PWD}\release\plugins\*.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion

; Plugin icons
Source: {#PWD}\plugins\controly\*.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
Source: {#PWD}\plugins\calcy\*.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion

; Documentation
Source: {#PWD}\license.txt; DestDir: {app}; Flags: ignoreversion

; Skins
Source: {#PWD}\skins\Mercury\*.*; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: {#PWD}\skins\Quicksilver2\*.*; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: {#PWD}\skins\Note\*.*; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: {#PWD}\skins\Black_Glass\*.*; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: {#PWD}\skins\Default\*.*; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: {#PWD}\skins\Spotlight_Wide\*.*; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion

Source: ..\Utilities\Special Folders\C Drive.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Control Panel.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Computer.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Documents.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Music.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Network Places.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Pictures.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Recycle Bin.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Logoff.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Reboot.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Shutdown.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Hibernate.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion

[INI]
Filename: {app}\{#MyAppUrlName}; Section: InternetShortcut; Key: URL; String: {#MyAppURL}

[Icons]
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /show
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {app}\{#MyAppUrlName}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {code:UserOrCommonDirectory|startup}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\Launchy Rescue Mode; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /rescue

Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Parameters: /show; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Parameters: /show; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: quicklaunchicon

[Run]
Filename: {tmp}\vcredist_x86.exe; Parameters: "/q /passive /norestart /Q:a /c:""msiexec /q /i vcredist.msi"" "; StatusMsg: Installing VC++ Redistributables...
Filename: {app}\{#MyAppExeName}; Parameters: /show; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent runasoriginaluser

[UninstallDelete]
Type: files; Name: {app}\{#MyAppUrlName}

[CustomMessages]
CreateIconsFor=Create start menu and desktop icons for:
IconsCurrentUser=The current user only
IconsAllUsers=All users

[Code]
var
  PortablePage: TInputOptionWizardPage;

function IsRegularUser(): Boolean;
begin
  Result := not (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

function IsPortable(): Boolean;
begin
  if PortablePage = nil then
    Result := false
  else
    Result := PortablePage.Values[1];
end;

function DefaultInstallDirectory(Param: String): String;
begin
  if IsPortable then
    Result := ExpandConstant('{drive:{srcexe}}')
  else if IsRegularUser then
    Result := ExpandConstant('{localappdata}')
  else
    Result := ExpandConstant('{pf}');
  Result := Result + '\{#MyAppName}';
end;

function UserOrCommonDirectory(Param: String): String;
begin
  if IsTaskSelected('iconscommon') then
    Result := ExpandConstant('{common' + Param + '}')
  else
    Result := ExpandConstant('{user' + Param + '}')
end;

procedure InitializeWizard;
begin
  PortablePage := CreateInputOptionPage(wpLicense,
    'Installation Type', 'How should Launchy be installed?',
    'Launchy can run as an installed application or in portable mode. Please select your preferred mode',
    True, False);
  PortablePage.Add('Normal');
  PortablePage.Add('Portable');
  PortablePage.Values[0] := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = PortablePage.ID) then
  begin
    WizardForm.DirEdit.Text := DefaultInstallDirectory('');
    WizardForm.NoIconsCheck.Checked := IsPortable;
  end;
  Result := true;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if (PageID = wpSelectProgramGroup) and IsPortable then
  begin
      WizardForm.NoIconsCheck.Checked := true;
      Result := true;
  end;
end;

#IFDEF UNICODE
  #DEFINE AW "W"
#ELSE
  #DEFINE AW "A"
#ENDIF
type
  INSTALLSTATE = Longint;
const
  INSTALLSTATE_INVALIDARG = -2;  // An invalid parameter was passed to the function.
  INSTALLSTATE_UNKNOWN = -1;     // The product is neither advertised or installed.
  INSTALLSTATE_ADVERTISED = 1;   // The product is advertised but not installed.
  INSTALLSTATE_ABSENT = 2;       // The product is installed for a different user.
  INSTALLSTATE_DEFAULT = 5;      // The product is installed for the current user.

  VC_2005_REDIST_X86 = '{A49F249F-0C91-497F-86DF-B2585E8E76B7}';
  VC_2005_REDIST_X64 = '{6E8E85E8-CE4B-4FF5-91F7-04999C9FAE6A}';
  VC_2005_REDIST_IA64 = '{03ED71EA-F531-4927-AABD-1C31BCE8E187}';
  VC_2005_SP1_REDIST_X86 = '{7299052B-02A4-4627-81F2-1818DA5D550D}';
  VC_2005_SP1_REDIST_X64 = '{071C9B48-7C32-4621-A0AC-3F809523288F}';
  VC_2005_SP1_REDIST_IA64 = '{0F8FB34E-675E-42ED-850B-29D98C2ECE08}';
  VC_2005_SP1_ATL_SEC_UPD_REDIST_X86 = '{837B34E3-7C30-493C-8F6A-2B0F04E2912C}';
  VC_2005_SP1_ATL_SEC_UPD_REDIST_X64 = '{6CE5BAE9-D3CA-4B99-891A-1DC6C118A5FC}';
  VC_2005_SP1_ATL_SEC_UPD_REDIST_IA64 = '{85025851-A784-46D8-950D-05CB3CA43A13}';

  VC_2008_REDIST_X86 = '{FF66E9F6-83E7-3A3E-AF14-8DE9A809A6A4}';
  VC_2008_REDIST_X64 = '{350AA351-21FA-3270-8B7A-835434E766AD}';
  VC_2008_REDIST_IA64 = '{2B547B43-DB50-3139-9EBE-37D419E0F5FA}';
  VC_2008_SP1_REDIST_X86 = '{9A25302D-30C0-39D9-BD6F-21E6EC160475}';
  VC_2008_SP1_REDIST_X64 = '{8220EEFE-38CD-377E-8595-13398D740ACE}';
  VC_2008_SP1_REDIST_IA64 = '{5827ECE1-AEB0-328E-B813-6FC68622C1F9}';
  VC_2008_SP1_ATL_SEC_UPD_REDIST_X86 = '{1F1C2DFC-2D24-3E06-BCB8-725134ADF989}';
  VC_2008_SP1_ATL_SEC_UPD_REDIST_X64 = '{4B6C7001-C7D6-3710-913E-5BC23FCE91E6}';
  VC_2008_SP1_ATL_SEC_UPD_REDIST_IA64 = '{977AD349-C2A8-39DD-9273-285C08987C7B}';
  VC_2008_SP1_MFC_SEC_UPD_REDIST_X86 = '{9BE518E6-ECC6-35A9-88E4-87755C07200F}';
  VC_2008_SP1_MFC_SEC_UPD_REDIST_X64 = '{5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}';
  VC_2008_SP1_MFC_SEC_UPD_REDIST_IA64 = '{515643D1-4E9E-342F-A75A-D1F16448DC04}';

  VC_2010_REDIST_X86 = '{196BB40D-1578-3D01-B289-BEFC77A11A1E}';
  VC_2010_REDIST_X64 = '{DA5E371C-6333-3D8A-93A4-6FD5B20BCC6E}';
  VC_2010_REDIST_IA64 = '{C1A35166-4301-38E9-BA67-02823AD72A1B}';
  VC_2010_SP1_REDIST_X86 = '{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}';
  VC_2010_SP1_REDIST_X64 = '{1D8E6291-B0D5-35EC-8441-6616F567A0F7}';
  VC_2010_SP1_REDIST_IA64 = '{88C73C1C-2DE5-3B01-AFB8-B46EF4AB41CD}';
  
  VC_2013_REDIST_X86 = '{ce085a78-074e-4823-8dc1-8a721b94b76d}';
  VC_2013_REDIST_X64 = '{7f51bdb9-ee21-49ee-94d6-90afc321780e}';

function MsiQueryProductState(szProduct: string): INSTALLSTATE; 
  external 'MsiQueryProductState{#AW}@msi.dll stdcall';

function VCVersionInstalled(const ProductID: string): Boolean;
begin
  Result := MsiQueryProductState(ProductID) = INSTALLSTATE_DEFAULT;
end;

function VCRedistNeedsInstall: Boolean;
begin
  // here the Result must be True when you need to install your VCRedist
  // or False when you don't need to, so now it's upon you how you build
  // this statement, the following won't install your VC redist only when
  // the Visual C++ 2010 Redist (x86) and Visual C++ 2010 SP1 Redist(x86)
  // are installed for the current user
  // Result := not (VCVersionInstalled(VC_2010_REDIST_X86) and 
  // VCVersionInstalled(VC_2010_SP1_REDIST_X86));
  Result := not VCVersionInstalled(VC_2010_SP1_REDIST_X86)
end;
