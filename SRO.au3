#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=sro.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Region
#EndRegion
Global Const $GMEM_FIXED = 0
Global Const $GMEM_MOVEABLE = 2
Global Const $GMEM_NOCOMPACT = 16
Global Const $GMEM_NODISCARD = 32
Global Const $GMEM_ZEROINIT = 64
Global Const $GMEM_MODIFY = 128
Global Const $GMEM_DISCARDABLE = 256
Global Const $GMEM_NOT_BANKED = 4096
Global Const $GMEM_SHARE = 8192
Global Const $GMEM_DDESHARE = 8192
Global Const $GMEM_NOTIFY = 16384
Global Const $GMEM_LOWER = 4096
Global Const $GMEM_VALID_FLAGS = 32626
Global Const $GMEM_INVALID_HANDLE = 32768
Global Const $GPTR = $GMEM_FIXED + $GMEM_ZEROINIT
Global Const $GHND = $GMEM_MOVEABLE + $GMEM_ZEROINIT
Global Const $MEM_COMMIT = 4096
Global Const $MEM_RESERVE = 8192
Global Const $MEM_TOP_DOWN = 1048576
Global Const $MEM_SHARED = 134217728
Global Const $PAGE_NOACCESS = 1
Global Const $PAGE_READONLY = 2
Global Const $PAGE_READWRITE = 4
Global Const $PAGE_EXECUTE = 16
Global Const $PAGE_EXECUTE_READ = 32
Global Const $PAGE_EXECUTE_READWRITE = 64
Global Const $PAGE_GUARD = 256
Global Const $PAGE_NOCACHE = 512
Global Const $MEM_DECOMMIT = 16384
Global Const $MEM_RELEASE = 32768
Global Const $TAGPOINT = "long X;long Y"
Global Const $TAGRECT = "long Left;long Top;long Right;long Bottom"
Global Const $TAGSIZE = "long X;long Y"
Global Const $TAGMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $TAGFILETIME = "dword Lo;dword Hi"
Global Const $TAGSYSTEMTIME = "word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds"
Global Const $TAGTIME_ZONE_INFORMATION = "long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias"
Global Const $TAGNMHDR = "hwnd hWndFrom;uint_ptr IDFrom;INT Code"
Global Const $TAGCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $TAGNMCBEDRAGBEGIN = $TAGNMHDR & ";int ItemID;ptr szText"
Global Const $TAGNMCBEENDEDIT = $TAGNMHDR & ";bool fChanged;int NewSelection;ptr szText;int Why"
Global Const $TAGNMCOMBOBOXEX = $TAGNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $TAGDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $TAGNMDATETIMECHANGE = $TAGNMHDR & ";dword Flag;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMEFORMAT = $TAGNMHDR & ";ptr Format;" & $TAGSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $TAGNMDATETIMEFORMATQUERY = $TAGNMHDR & ";ptr Format;long SizeX;long SizeY"
Global Const $TAGNMDATETIMEKEYDOWN = $TAGNMHDR & ";int VirtKey;ptr Format;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMESTRING = $TAGNMHDR & ";ptr UserString;" & $TAGSYSTEMTIME & ";dword Flags"
Global Const $TAGEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $TAGGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $TAGGDIPENCODERPARAM = "byte GUID[16];dword Count;dword Type;ptr Values"
Global Const $TAGGDIPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $TAGGDIPRECTF = "float X;float Y;float Width;float Height"
Global Const $TAGGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $TAGGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $TAGGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $TAGGDIPPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $TAGHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $TAGNMHDDISPINFO = $TAGNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $TAGNMHDFILTERBTNCLICK = $TAGNMHDR & ";int Item;" & $TAGRECT
Global Const $TAGNMHEADER = $TAGNMHDR & ";int Item;int Button;ptr pItem"
Global Const $TAGGETIPADDRESS = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $TAGNMIPADDRESS = $TAGNMHDR & ";int Field;int Value"
Global Const $TAGLVFINDINFO = "uint Flags;ptr Text;lparam Param;" & $TAGPOINT & ";uint Direction"
Global Const $TAGLVHITTESTINFO = $TAGPOINT & ";uint Flags;int Item;int SubItem"
Global Const $TAGLVITEM = "uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns"
Global Const $TAGNMLISTVIEW = $TAGNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "long ActionX;long ActionY;lparam Param"
Global Const $TAGNMLVCUSTOMDRAW = $TAGNMHDR & ";dword dwDrawStage;handle hdc;long Left;long Top;long Right;long Bottom;" & "dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;long TextLeft;long TextTop;long TextRight;long TextBottom;uint uAlign"
Global Const $TAGNMLVDISPINFO = $TAGNMHDR & ";" & $TAGLVITEM
Global Const $TAGNMLVFINDITEM = $TAGNMHDR & ";" & $TAGLVFINDINFO
Global Const $TAGNMLVGETINFOTIP = $TAGNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $TAGNMITEMACTIVATE = $TAGNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $TAGPOINT & ";lparam lParam;uint KeyFlags"
Global Const $TAGNMLVKEYDOWN = $TAGNMHDR & ";align 1;word VKey;uint Flags"
Global Const $TAGNMLVSCROLL = $TAGNMHDR & ";int DX;int DY"
Global Const $TAGMCHITTESTINFO = "uint Size;" & $TAGPOINT & ";uint Hit;" & $TAGSYSTEMTIME
Global Const $TAGMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $TAGMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $TAGMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $TAGNMDAYSTATE = $TAGNMHDR & ";" & $TAGSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $TAGNMSELCHANGE = $TAGNMHDR & ";word BegYear;word BegMonth;word BegDOW;word BegDay;" & "word BegHour;word BegMinute;word BegSecond;word BegMSeconds;word EndYear;word EndMonth;word EndDOW;" & "word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds"
Global Const $TAGNMOBJECTNOTIFY = $TAGNMHDR & ";int Item;ptr piid;ptr pObject;long Result"
Global Const $TAGNMTCKEYDOWN = $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGTVITEM = "uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param"
Global Const $TAGTVITEMEX = $TAGTVITEM & ";int Integral"
Global Const $TAGNMTREEVIEW = $TAGNMHDR & ";uint Action;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;handle NewhItem;" & "uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;" & "lparam NewParam;long PointX;long PointY"
Global Const $TAGNMTVCUSTOMDRAW = $TAGNMHDR & ";dword DrawStage;handle HDC;long Left;long Top;long Right;long Bottom;" & "dword_ptr ItemSpec;uint ItemState;lparam ItemParam;dword ClrText;dword ClrTextBk;int Level"
Global Const $TAGNMTVDISPINFO = $TAGNMHDR & ";" & $TAGTVITEM
Global Const $TAGNMTVGETINFOTIP = $TAGNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $TAGTVHITTESTINFO = $TAGPOINT & ";uint Flags;handle Item"
Global Const $TAGNMTVKEYDOWN = $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMMOUSE = $TAGNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $TAGPOINT & ";lparam HitInfo"
Global Const $TAGTOKEN_PRIVILEGES = "dword Count;int64 LUID;dword Attributes"
Global Const $TAGIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $TAGRECT
Global Const $TAGMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $TAGMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $TAGREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader"
Global Const $TAGNMREBARAUTOBREAK = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $TAGNMRBAUTOSIZE = $TAGNMHDR & ";bool fChanged;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;" & "long ActualLeft;long ActualTop;long ActualRight;long ActualBottom"
Global Const $TAGNMREBAR = $TAGNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;laram lParam"
Global Const $TAGNMREBARCHEVRON = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;" & $TAGRECT & ";lparam lParamNM"
Global Const $TAGNMREBARCHILDSIZE = $TAGNMHDR & ";uint uBand;uint wID;long CLeft;long CTop;long CRight;long CBottom;" & "long BLeft;long BTop;long BRight;long BBottom"
Global Const $TAGCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $TAGNMTOOLBAR = $TAGNMHDR & ";int iItem;" & "int iBitmap;int idCommand;byte fsState;byte fsStyle;align;dword_ptr dwData;int_ptr iString" & ";int cchText;ptr pszText;" & $TAGRECT
Global Const $TAGNMTBHOTITEM = $TAGNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $TAGTBBUTTON = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $TAGTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $TAGNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $TAGOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;dword Offset;dword OffsetHigh;handle hEvent"
Global Const $TAGOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $TAGBITMAPINFO = "dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & "long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad"
Global Const $TAGBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $TAGGUID = "dword Data1;word Data2;word Data3;byte Data4[8]"
Global Const $TAGWINDOWPLACEMENT = "uint length; uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $TAGWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $TAGSCROLLINFO = "uint cbSize;uint fMask;int  nMin;int  nMax;uint nPage;int  nPos;int  nTrackPos"
Global Const $TAGSCROLLBARINFO = "dword cbSize;" & $TAGRECT & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $TAGLOGFONT = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $TAGKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $TAGPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $TAGSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $TAGSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $TAGWIN32_FIND_DATA = "dword dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; dword nFileSizeHigh; dword nFileSizeLow; dword dwReserved0; dword dwReserved1; wchar cFileName[260]; wchar cAlternateFileName[14]"
Global Const $PROCESS_TERMINATE = 1
Global Const $PROCESS_CREATE_THREAD = 2
Global Const $PROCESS_SET_SESSIONID = 4
Global Const $PROCESS_VM_OPERATION = 8
Global Const $PROCESS_VM_READ = 16
Global Const $PROCESS_VM_WRITE = 32
Global Const $PROCESS_DUP_HANDLE = 64
Global Const $PROCESS_CREATE_PROCESS = 128
Global Const $PROCESS_SET_QUOTA = 256
Global Const $PROCESS_SET_INFORMATION = 512
Global Const $PROCESS_QUERY_INFORMATION = 1024
Global Const $PROCESS_SUSPEND_RESUME = 2048
Global Const $PROCESS_ALL_ACCESS = 2035711
Global Const $ERROR_NO_TOKEN = 1008
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 1
Global Const $SE_PRIVILEGE_ENABLED = 2
Global Const $SE_PRIVILEGE_REMOVED = 4
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = -2147483648
Global Const $TOKENUSER = 1
Global Const $TOKENGROUPS = 2
Global Const $TOKENPRIVILEGES = 3
Global Const $TOKENOWNER = 4
Global Const $TOKENPRIMARYGROUP = 5
Global Const $TOKENDEFAULTDACL = 6
Global Const $TOKENSOURCE = 7
Global Const $TOKENTYPE = 8
Global Const $TOKENIMPERSONATIONLEVEL = 9
Global Const $TOKENSTATISTICS = 10
Global Const $TOKENRESTRICTEDSIDS = 11
Global Const $TOKENSESSIONID = 12
Global Const $TOKENGROUPSANDPRIVILEGES = 13
Global Const $TOKENSESSIONREFERENCE = 14
Global Const $TOKENSANDBOXINERT = 15
Global Const $TOKENAUDITPOLICY = 16
Global Const $TOKENORIGIN = 17
Global Const $TOKENELEVATIONTYPE = 18
Global Const $TOKENLINKEDTOKEN = 19
Global Const $TOKENELEVATION = 20
Global Const $TOKENHASRESTRICTIONS = 21
Global Const $TOKENACCESSINFORMATION = 22
Global Const $TOKENVIRTUALIZATIONALLOWED = 23
Global Const $TOKENVIRTUALIZATIONENABLED = 24
Global Const $TOKENINTEGRITYLEVEL = 25
Global Const $TOKENUIACCESS = 26
Global Const $TOKENMANDATORYPOLICY = 27
Global Const $TOKENLOGONSID = 28
Global Const $TOKEN_ASSIGN_PRIMARY = 1
Global Const $TOKEN_DUPLICATE = 2
Global Const $TOKEN_IMPERSONATE = 4
Global Const $TOKEN_QUERY = 8
Global Const $TOKEN_QUERY_SOURCE = 16
Global Const $TOKEN_ADJUST_PRIVILEGES = 32
Global Const $TOKEN_ADJUST_GROUPS = 64
Global Const $TOKEN_ADJUST_DEFAULT = 128
Global Const $TOKEN_ADJUST_SESSIONID = 256
Func _WinAPI_GetLastError($CURERR = @error, $CUREXT = @extended)
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($CURERR, $CUREXT, $ARESULT[0])
EndFunc   ;==>_WinAPI_GetLastError
Func _WinAPI_SetLastError($IERRCODE, $CURERR = @error, $CUREXT = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $IERRCODE)
	Return SetError($CURERR, $CUREXT)
EndFunc   ;==>_WinAPI_SetLastError
Func _Security__AdjustTokenPrivileges($HTOKEN, $FDISABLEALL, $PNEWSTATE, $IBUFFERLEN, $PPREVSTATE = 0, $PREQUIRED = 0)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $HTOKEN, "bool", $FDISABLEALL, "ptr", $PNEWSTATE, "dword", $IBUFFERLEN, "ptr", $PPREVSTATE, "ptr", $PREQUIRED)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Security__AdjustTokenPrivileges
Func _Security__GetAccountSid($SACCOUNT, $SSYSTEM = "")
	Local $AACCT = _Security__LookupAccountName($SACCOUNT, $SSYSTEM)
	If @error Then Return SetError(@error, 0, 0)
	Return _Security__StringSidToSid($AACCT[0])
EndFunc   ;==>_Security__GetAccountSid
Func _Security__GetLengthSid($PSID)
	If Not _Security__IsValidSid($PSID) Then Return SetError(-1, 0, 0)
	Local $ARESULT = DllCall("advapi32.dll", "dword", "GetLengthSid", "ptr", $PSID)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_Security__GetLengthSid
Func _Security__GetTokenInformation($HTOKEN, $ICLASS)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $HTOKEN, "int", $ICLASS, "ptr", 0, "dword", 0, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ARESULT[0] Then Return 0
	Local $TBUFFER = DllStructCreate("byte[" & $ARESULT[5] & "]")
	Local $PBUFFER = DllStructGetPtr($TBUFFER)
	$ARESULT = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $HTOKEN, "int", $ICLASS, "ptr", $PBUFFER, "dword", $ARESULT[5], "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ARESULT[0] Then Return 0
	Return $TBUFFER
EndFunc   ;==>_Security__GetTokenInformation
Func _Security__ImpersonateSelf($ILEVEL = 2)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $ILEVEL)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Security__ImpersonateSelf
Func _Security__IsValidSid($PSID)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "IsValidSid", "ptr", $PSID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Security__IsValidSid
Func _Security__LookupAccountName($SACCOUNT, $SSYSTEM = "")
	Local $TDATA = DllStructCreate("byte SID[256]")
	Local $PSID = DllStructGetPtr($TDATA, "SID")
	Local $ARESULT = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $SSYSTEM, "wstr", $SACCOUNT, "ptr", $PSID, "dword*", 256, "wstr", "", "dword*", 256, "int*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ARESULT[0] Then Return 0
	Local $AACCT[3]
	$AACCT[0] = _Security__SidToStringSid($PSID)
	$AACCT[1] = $ARESULT[5]
	$AACCT[2] = $ARESULT[7]
	Return $AACCT
EndFunc   ;==>_Security__LookupAccountName
Func _Security__LookupAccountSid($VSID)
	Local $PSID, $AACCT[3]
	If IsString($VSID) Then
		Local $TSID = _Security__StringSidToSid($VSID)
		$PSID = DllStructGetPtr($TSID)
	Else
		$PSID = $VSID
	EndIf
	If Not _Security__IsValidSid($PSID) Then Return SetError(-1, 0, 0)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "LookupAccountSidW", "ptr", 0, "ptr", $PSID, "wstr", "", "dword*", 256, "wstr", "", "dword*", 256, "int*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ARESULT[0] Then Return 0
	Local $AACCT[3]
	$AACCT[0] = $ARESULT[3]
	$AACCT[1] = $ARESULT[5]
	$AACCT[2] = $ARESULT[7]
	Return $AACCT
EndFunc   ;==>_Security__LookupAccountSid
Func _Security__LookupPrivilegeValue($SSYSTEM, $SNAME)
	Local $ARESULT = DllCall("advapi32.dll", "int", "LookupPrivilegeValueW", "wstr", $SSYSTEM, "wstr", $SNAME, "int64*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $ARESULT[0], $ARESULT[3])
EndFunc   ;==>_Security__LookupPrivilegeValue
Func _Security__OpenProcessToken($HPROCESS, $IACCESS)
	Local $ARESULT = DllCall("advapi32.dll", "int", "OpenProcessToken", "handle", $HPROCESS, "dword", $IACCESS, "ptr", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $ARESULT[0], $ARESULT[3])
EndFunc   ;==>_Security__OpenProcessToken
Func _Security__OpenThreadToken($IACCESS, $HTHREAD = 0, $FOPENASSELF = False)
	If $HTHREAD = 0 Then $HTHREAD = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $HTHREAD[0], "dword", $IACCESS, "int", $FOPENASSELF, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $ARESULT[0], $ARESULT[4])
EndFunc   ;==>_Security__OpenThreadToken
Func _Security__OpenThreadTokenEx($IACCESS, $HTHREAD = 0, $FOPENASSELF = False)
	Local $HTOKEN = _Security__OpenThreadToken($IACCESS, $HTHREAD, $FOPENASSELF)
	If $HTOKEN = 0 Then
		If _WinAPI_GetLastError() <> $ERROR_NO_TOKEN Then Return SetError(-3, _WinAPI_GetLastError(), 0)
		If Not _Security__ImpersonateSelf() Then Return SetError(-1, _WinAPI_GetLastError(), 0)
		$HTOKEN = _Security__OpenThreadToken($IACCESS, $HTHREAD, $FOPENASSELF)
		If $HTOKEN = 0 Then Return SetError(-2, _WinAPI_GetLastError(), 0)
	EndIf
	Return $HTOKEN
EndFunc   ;==>_Security__OpenThreadTokenEx
Func _Security__SetPrivilege($HTOKEN, $SPRIVILEGE, $FENABLE)
	Local $ILUID = _Security__LookupPrivilegeValue("", $SPRIVILEGE)
	If $ILUID = 0 Then Return SetError(-1, 0, False)
	Local $TCURRSTATE = DllStructCreate($TAGTOKEN_PRIVILEGES)
	Local $PCURRSTATE = DllStructGetPtr($TCURRSTATE)
	Local $ICURRSTATE = DllStructGetSize($TCURRSTATE)
	Local $TPREVSTATE = DllStructCreate($TAGTOKEN_PRIVILEGES)
	Local $PPREVSTATE = DllStructGetPtr($TPREVSTATE)
	Local $IPREVSTATE = DllStructGetSize($TPREVSTATE)
	Local $TREQUIRED = DllStructCreate("int Data")
	Local $PREQUIRED = DllStructGetPtr($TREQUIRED)
	DllStructSetData($TCURRSTATE, "Count", 1)
	DllStructSetData($TCURRSTATE, "LUID", $ILUID)
	If Not _Security__AdjustTokenPrivileges($HTOKEN, False, $PCURRSTATE, $ICURRSTATE, $PPREVSTATE, $PREQUIRED) Then Return SetError(-2, @error, False)
	DllStructSetData($TPREVSTATE, "Count", 1)
	DllStructSetData($TPREVSTATE, "LUID", $ILUID)
	Local $IATTRIBUTES = DllStructGetData($TPREVSTATE, "Attributes")
	If $FENABLE Then
		$IATTRIBUTES = BitOR($IATTRIBUTES, $SE_PRIVILEGE_ENABLED)
	Else
		$IATTRIBUTES = BitAND($IATTRIBUTES, BitNOT($SE_PRIVILEGE_ENABLED))
	EndIf
	DllStructSetData($TPREVSTATE, "Attributes", $IATTRIBUTES)
	If Not _Security__AdjustTokenPrivileges($HTOKEN, False, $PPREVSTATE, $IPREVSTATE, $PCURRSTATE, $PREQUIRED) Then Return SetError(-3, @error, False)
	Return True
EndFunc   ;==>_Security__SetPrivilege
Func _Security__SidToStringSid($PSID)
	If Not _Security__IsValidSid($PSID) Then Return SetError(-1, 0, "")
	Local $ARESULT = DllCall("advapi32.dll", "int", "ConvertSidToStringSidW", "ptr", $PSID, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, "")
	If Not $ARESULT[0] Then Return ""
	Local $TBUFFER = DllStructCreate("wchar Text[256]", $ARESULT[2])
	Local $SSID = DllStructGetData($TBUFFER, "Text")
	DllCall("Kernel32.dll", "ptr", "LocalFree", "ptr", $ARESULT[2])
	Return $SSID
EndFunc   ;==>_Security__SidToStringSid
Func _Security__SidTypeStr($ITYPE)
	Switch $ITYPE
		Case 1
			Return "User"
		Case 2
			Return "Group"
		Case 3
			Return "Domain"
		Case 4
			Return "Alias"
		Case 5
			Return "Well Known Group"
		Case 6
			Return "Deleted Account"
		Case 7
			Return "Invalid"
		Case 8
			Return "Invalid"
		Case 9
			Return "Computer"
		Case Else
			Return "Unknown SID Type"
	EndSwitch
EndFunc   ;==>_Security__SidTypeStr
Func _Security__StringSidToSid($SSID)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $SSID, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ARESULT[0] Then Return 0
	Local $ISIZE = _Security__GetLengthSid($ARESULT[2])
	Local $TBUFFER = DllStructCreate("byte Data[" & $ISIZE & "]", $ARESULT[2])
	Local $TSID = DllStructCreate("byte Data[" & $ISIZE & "]")
	DllStructSetData($TSID, "Data", DllStructGetData($TBUFFER, "Data"))
	DllCall("kernel32.dll", "ptr", "LocalFree", "ptr", $ARESULT[2])
	Return $TSID
EndFunc   ;==>_Security__StringSidToSid
Global Const $TAGMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Func _MEMFREE(ByRef $TMEMMAP)
	Local $PMEMORY = DllStructGetData($TMEMMAP, "Mem")
	Local $HPROCESS = DllStructGetData($TMEMMAP, "hProc")
	Local $BRESULT = _MemVirtualFreeEx($HPROCESS, $PMEMORY, 0, $MEM_RELEASE)
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HPROCESS)
	If @error Then Return SetError(@error, @extended, False)
	Return $BRESULT
EndFunc   ;==>_MEMFREE
Func _MemGlobalAlloc($IBYTES, $IFLAGS = 0)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $IFLAGS, "ulong_ptr", $IBYTES)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemGlobalAlloc
Func _MemGlobalFree($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_MemGlobalFree
Func _MemGlobalLock($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemGlobalLock
Func _MemGlobalSize($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemGlobalSize
Func _MemGlobalUnlock($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemGlobalUnlock
Func _MEMINIT($HWND, $ISIZE, ByRef $TMEMMAP)
	Local $ARESULT = DllCall("User32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $HWND, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $IPROCESSID = $ARESULT[2]
	If $IPROCESSID = 0 Then Return SetError(1, 0, 0)
	Local $IACCESS = BitOR($PROCESS_VM_OPERATION, $PROCESS_VM_READ, $PROCESS_VM_WRITE)
	Local $HPROCESS = __MEM_OPENPROCESS($IACCESS, False, $IPROCESSID, True)
	Local $IALLOC = BitOR($MEM_RESERVE, $MEM_COMMIT)
	Local $PMEMORY = _MemVirtualAllocEx($HPROCESS, 0, $ISIZE, $IALLOC, $PAGE_READWRITE)
	If $PMEMORY = 0 Then Return SetError(2, 0, 0)
	$TMEMMAP = DllStructCreate($TAGMEMMAP)
	DllStructSetData($TMEMMAP, "hProc", $HPROCESS)
	DllStructSetData($TMEMMAP, "Size", $ISIZE)
	DllStructSetData($TMEMMAP, "Mem", $PMEMORY)
	Return $PMEMORY
EndFunc   ;==>_MEMINIT
Func _MemMoveMemory($PSOURCE, $PDEST, $ILENGTH)
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "ptr", $PDEST, "ptr", $PSOURCE, "ulong_ptr", $ILENGTH)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_MemMoveMemory
Func _MEMREAD(ByRef $TMEMMAP, $PSRCE, $PDEST, $ISIZE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($TMEMMAP, "hProc"), "ptr", $PSRCE, "ptr", $PDEST, "ulong_ptr", $ISIZE, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_MEMREAD
Func _MEMWRITE(ByRef $TMEMMAP, $PSRCE, $PDEST = 0, $ISIZE = 0, $SSRCE = "ptr")
	If $PDEST = 0 Then $PDEST = DllStructGetData($TMEMMAP, "Mem")
	If $ISIZE = 0 Then $ISIZE = DllStructGetData($TMEMMAP, "Size")
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($TMEMMAP, "hProc"), "ptr", $PDEST, $SSRCE, $PSRCE, "ulong_ptr", $ISIZE, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_MEMWRITE
Func _MemVirtualAlloc($PADDRESS, $ISIZE, $IALLOCATION, $IPROTECT)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IALLOCATION, "dword", $IPROTECT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemVirtualAlloc
Func _MemVirtualAllocEx($HPROCESS, $PADDRESS, $ISIZE, $IALLOCATION, $IPROTECT)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $HPROCESS, "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IALLOCATION, "dword", $IPROTECT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_MemVirtualAllocEx
Func _MemVirtualFree($PADDRESS, $ISIZE, $IFREETYPE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IFREETYPE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_MemVirtualFree
Func _MemVirtualFreeEx($HPROCESS, $PADDRESS, $ISIZE, $IFREETYPE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $HPROCESS, "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IFREETYPE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_MemVirtualFreeEx
Func __MEM_OPENPROCESS($IACCESS, $FINHERIT, $IPROCESSID, $FDEBUGPRIV = False)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, 0)
	If $ARESULT[0] Then Return $ARESULT[0]
	If Not $FDEBUGPRIV Then Return 0
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, 0)
	_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0
	If Not @error Then
		$ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT[0] Then $IRET = $ARESULT[0]
		_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", False)
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>__MEM_OPENPROCESS
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 1
Global Const $FILE_ATTRIBUTE_HIDDEN = 2
Global Const $FILE_ATTRIBUTE_SYSTEM = 4
Global Const $FILE_ATTRIBUTE_DIRECTORY = 16
Global Const $FILE_ATTRIBUTE_ARCHIVE = 32
Global Const $FILE_ATTRIBUTE_DEVICE = 64
Global Const $FILE_ATTRIBUTE_NORMAL = 128
Global Const $FILE_ATTRIBUTE_TEMPORARY = 256
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 512
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 1024
Global Const $FILE_ATTRIBUTE_COMPRESSED = 2048
Global Const $FILE_ATTRIBUTE_OFFLINE = 4096
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 8192
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 16384
Global Const $FILE_SHARE_READ = 1
Global Const $FILE_SHARE_WRITE = 2
Global Const $FILE_SHARE_DELETE = 4
Global Const $GENERIC_ALL = 268435456
Global Const $GENERIC_EXECUTE = 536870912
Global Const $GENERIC_WRITE = 1073741824
Global Const $GENERIC_READ = -2147483648
Func _SendMessage($HWND, $IMSG, $WPARAM = 0, $LPARAM = 0, $IRETURN = 0, $WPARAMTYPE = "wparam", $LPARAMTYPE = "lparam", $SRETURNTYPE = "lresult")
	Local $ARESULT = DllCall("user32.dll", $SRETURNTYPE, "SendMessageW", "hwnd", $HWND, "uint", $IMSG, $WPARAMTYPE, $WPARAM, $LPARAMTYPE, $LPARAM)
	If @error Then Return SetError(@error, @extended, "")
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT[$IRETURN]
	Return $ARESULT
EndFunc   ;==>_SendMessage
Func _SendMessageA($HWND, $IMSG, $WPARAM = 0, $LPARAM = 0, $IRETURN = 0, $WPARAMTYPE = "wparam", $LPARAMTYPE = "lparam", $SRETURNTYPE = "lresult")
	Local $ARESULT = DllCall("user32.dll", $SRETURNTYPE, "SendMessageA", "hwnd", $HWND, "uint", $IMSG, $WPARAMTYPE, $WPARAM, $LPARAMTYPE, $LPARAM)
	If @error Then Return SetError(@error, @extended, "")
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT[$IRETURN]
	Return $ARESULT
EndFunc   ;==>_SendMessageA
Global $__GAINPROCESS_WINAPI[64][2] = [[0, 0]]
Global $__GAWINLIST_WINAPI[64][2] = [[0, 0]]
Global Const $__WINAPICONSTANT_WM_SETFONT = 48
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER = 256
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM = 4096
Global Const $__WINAPICONSTANT_LOGPIXELSX = 88
Global Const $__WINAPICONSTANT_LOGPIXELSY = 90
Global Const $HGDI_ERROR = Ptr(-1)
Global Const $INVALID_HANDLE_VALUE = Ptr(-1)
Global Const $CLR_INVALID = -1
Global Const $__WINAPICONSTANT_FLASHW_CAPTION = 1
Global Const $__WINAPICONSTANT_FLASHW_TRAY = 2
Global Const $__WINAPICONSTANT_FLASHW_TIMER = 4
Global Const $__WINAPICONSTANT_FLASHW_TIMERNOFG = 12
Global Const $__WINAPICONSTANT_GW_HWNDNEXT = 2
Global Const $__WINAPICONSTANT_GW_CHILD = 5
Global Const $__WINAPICONSTANT_DI_MASK = 1
Global Const $__WINAPICONSTANT_DI_IMAGE = 2
Global Const $__WINAPICONSTANT_DI_NORMAL = 3
Global Const $__WINAPICONSTANT_DI_COMPAT = 4
Global Const $__WINAPICONSTANT_DI_DEFAULTSIZE = 8
Global Const $__WINAPICONSTANT_DI_NOMIRROR = 16
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE = 4
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER = 8
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE = 16
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE = 32
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED = 134217728
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
Global Const $MB_PRECOMPOSED = 1
Global Const $MB_COMPOSITE = 2
Global Const $MB_USEGLYPHCHARS = 4
Global Const $ULW_ALPHA = 2
Global Const $ULW_COLORKEY = 1
Global Const $ULW_OPAQUE = 4
Global Const $WH_CALLWNDPROC = 4
Global Const $WH_CALLWNDPROCRET = 12
Global Const $WH_CBT = 5
Global Const $WH_DEBUG = 9
Global Const $WH_FOREGROUNDIDLE = 11
Global Const $WH_GETMESSAGE = 3
Global Const $WH_JOURNALPLAYBACK = 1
Global Const $WH_JOURNALRECORD = 0
Global Const $WH_KEYBOARD = 2
Global Const $WH_KEYBOARD_LL = 13
Global Const $WH_MOUSE = 7
Global Const $WH_MOUSE_LL = 14
Global Const $WH_MSGFILTER = -1
Global Const $WH_SHELL = 10
Global Const $WH_SYSMSGFILTER = 6
Global Const $WPF_ASYNCWINDOWPLACEMENT = 4
Global Const $WPF_RESTORETOMAXIMIZED = 2
Global Const $WPF_SETMINPOSITION = 1
Global Const $KF_EXTENDED = 256
Global Const $KF_ALTDOWN = 8192
Global Const $KF_UP = 32768
Global Const $LLKHF_EXTENDED = BitShift($KF_EXTENDED, 8)
Global Const $LLKHF_INJECTED = 16
Global Const $LLKHF_ALTDOWN = BitShift($KF_ALTDOWN, 8)
Global Const $LLKHF_UP = BitShift($KF_UP, 8)
Global Const $OFN_ALLOWMULTISELECT = 512
Global Const $OFN_CREATEPROMPT = 8192
Global Const $OFN_DONTADDTORECENT = 33554432
Global Const $OFN_ENABLEHOOK = 32
Global Const $OFN_ENABLEINCLUDENOTIFY = 4194304
Global Const $OFN_ENABLESIZING = 8388608
Global Const $OFN_ENABLETEMPLATE = 64
Global Const $OFN_ENABLETEMPLATEHANDLE = 128
Global Const $OFN_EXPLORER = 524288
Global Const $OFN_EXTENSIONDIFFERENT = 1024
Global Const $OFN_FILEMUSTEXIST = 4096
Global Const $OFN_FORCESHOWHIDDEN = 268435456
Global Const $OFN_HIDEREADONLY = 4
Global Const $OFN_LONGNAMES = 2097152
Global Const $OFN_NOCHANGEDIR = 8
Global Const $OFN_NODEREFERENCELINKS = 1048576
Global Const $OFN_NOLONGNAMES = 262144
Global Const $OFN_NONETWORKBUTTON = 131072
Global Const $OFN_NOREADONLYRETURN = 32768
Global Const $OFN_NOTESTFILECREATE = 65536
Global Const $OFN_NOVALIDATE = 256
Global Const $OFN_OVERWRITEPROMPT = 2
Global Const $OFN_PATHMUSTEXIST = 2048
Global Const $OFN_READONLY = 1
Global Const $OFN_SHAREAWARE = 16384
Global Const $OFN_SHOWHELP = 16
Global Const $OFN_EX_NOPLACESBAR = 1
Global Const $TAGCURSORINFO = "dword Size;dword Flags;handle hCursor;" & $TAGPOINT
Global Const $TAGDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $TAGFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $TAGICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $TAGMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Func _WinAPI_AttachConsole($IPROCESSID = -1)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "AttachConsole", "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_AttachConsole
Func _WinAPI_AttachThreadInput($IATTACH, $IATTACHTO, $FATTACH)
	Local $ARESULT = DllCall("user32.dll", "bool", "AttachThreadInput", "dword", $IATTACH, "dword", $IATTACHTO, "bool", $FATTACH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_AttachThreadInput
Func _WinAPI_Beep($IFREQ = 500, $IDURATION = 1000)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "Beep", "dword", $IFREQ, "dword", $IDURATION)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_Beep
Func _WinAPI_BitBlt($HDESTDC, $IXDEST, $IYDEST, $IWIDTH, $IHEIGHT, $HSRCDC, $IXSRC, $IYSRC, $IROP)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $HDESTDC, "int", $IXDEST, "int", $IYDEST, "int", $IWIDTH, "int", $IHEIGHT, "handle", $HSRCDC, "int", $IXSRC, "int", $IYSRC, "dword", $IROP)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_BitBlt
Func _WinAPI_CallNextHookEx($HHK, $ICODE, $WPARAM, $LPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $HHK, "int", $ICODE, "wparam", $WPARAM, "lparam", $LPARAM)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CallNextHookEx
Func _WinAPI_CallWindowProc($LPPREVWNDFUNC, $HWND, $MSG, $WPARAM, $LPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $LPPREVWNDFUNC, "hwnd", $HWND, "uint", $MSG, "wparam", $WPARAM, "lparam", $LPARAM)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CallWindowProc
Func _WinAPI_ClientToScreen($HWND, ByRef $TPOINT)
	Local $PPOINT = DllStructGetPtr($TPOINT)
	DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $HWND, "ptr", $PPOINT)
	Return SetError(@error, @extended, $TPOINT)
EndFunc   ;==>_WinAPI_ClientToScreen
Func _WinAPI_CloseHandle($HOBJECT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HOBJECT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CloseHandle
Func _WinAPI_CombineRgn($HRGNDEST, $HRGNSRC1, $HRGNSRC2, $ICOMBINEMODE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $HRGNDEST, "handle", $HRGNSRC1, "handle", $HRGNSRC2, "int", $ICOMBINEMODE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CombineRgn
Func _WinAPI_CommDlgExtendedError()
	Local Const $CDERR_DIALOGFAILURE = 65535
	Local Const $CDERR_FINDRESFAILURE = 6
	Local Const $CDERR_INITIALIZATION = 2
	Local Const $CDERR_LOADRESFAILURE = 7
	Local Const $CDERR_LOADSTRFAILURE = 5
	Local Const $CDERR_LOCKRESFAILURE = 8
	Local Const $CDERR_MEMALLOCFAILURE = 9
	Local Const $CDERR_MEMLOCKFAILURE = 10
	Local Const $CDERR_NOHINSTANCE = 4
	Local Const $CDERR_NOHOOK = 11
	Local Const $CDERR_NOTEMPLATE = 3
	Local Const $CDERR_REGISTERMSGFAIL = 12
	Local Const $CDERR_STRUCTSIZE = 1
	Local Const $FNERR_BUFFERTOOSMALL = 12291
	Local Const $FNERR_INVALIDFILENAME = 12290
	Local Const $FNERR_SUBCLASSFAILURE = 12289
	Local $ARESULT = DllCall("comdlg32.dll", "dword", "CommDlgExtendedError")
	If @error Then Return SetError(@error, @extended, 0)
	Switch $ARESULT[0]
		Case $CDERR_DIALOGFAILURE
			Return SetError($ARESULT[0], 0, "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle.")
		Case $CDERR_FINDRESFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function failed to find a specified resource.")
		Case $CDERR_INITIALIZATION
			Return SetError($ARESULT[0], 0, "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available.")
		Case $CDERR_LOADRESFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function failed to load a specified resource.")
		Case $CDERR_LOADSTRFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function failed to load a specified string.")
		Case $CDERR_LOCKRESFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function failed to lock a specified resource.")
		Case $CDERR_MEMALLOCFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function was unable to allocate memory for internal structures.")
		Case $CDERR_MEMLOCKFAILURE
			Return SetError($ARESULT[0], 0, "The common dialog box function was unable to lock the memory associated with a handle.")
		Case $CDERR_NOHINSTANCE
			Return SetError($ARESULT[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle.")
		Case $CDERR_NOHOOK
			Return SetError($ARESULT[0], 0, "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure.")
		Case $CDERR_NOTEMPLATE
			Return SetError($ARESULT[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template.")
		Case $CDERR_REGISTERMSGFAIL
			Return SetError($ARESULT[0], 0, "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function.")
		Case $CDERR_STRUCTSIZE
			Return SetError($ARESULT[0], 0, "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid")
		Case $FNERR_BUFFERTOOSMALL
			Return SetError($ARESULT[0], 0, "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name.")
		Case $FNERR_INVALIDFILENAME
			Return SetError($ARESULT[0], 0, "A file name is invalid.")
		Case $FNERR_SUBCLASSFAILURE
			Return SetError($ARESULT[0], 0, "An attempt to subclass a list box failed because sufficient memory was not available.")
	EndSwitch
	Return Hex($ARESULT[0])
EndFunc   ;==>_WinAPI_CommDlgExtendedError
Func _WinAPI_CopyIcon($HICON)
	Local $ARESULT = DllCall("user32.dll", "handle", "CopyIcon", "handle", $HICON)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CopyIcon
Func _WinAPI_CreateBitmap($IWIDTH, $IHEIGHT, $IPLANES = 1, $IBITSPERPEL = 1, $PBITS = 0)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $IWIDTH, "int", $IHEIGHT, "uint", $IPLANES, "uint", $IBITSPERPEL, "ptr", $PBITS)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateBitmap
Func _WinAPI_CreateCompatibleBitmap($HDC, $IWIDTH, $IHEIGHT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $HDC, "int", $IWIDTH, "int", $IHEIGHT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateCompatibleBitmap
Func _WinAPI_CreateCompatibleDC($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateCompatibleDC
Func _WinAPI_CreateEvent($PATTRIBUTES = 0, $FMANUALRESET = True, $FINITIALSTATE = True, $SNAME = "")
	Local $SNAMETYPE = "wstr"
	If $SNAME = "" Then
		$SNAME = 0
		$SNAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "handle", "CreateEventW", "ptr", $PATTRIBUTES, "bool", $FMANUALRESET, "bool", $FINITIALSTATE, $SNAMETYPE, $SNAME)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateEvent
Func _WinAPI_CreateFile($SFILENAME, $ICREATION, $IACCESS = 4, $ISHARE = 0, $IATTRIBUTES = 0, $PSECURITY = 0)
	Local $IDA = 0, $ISM = 0, $ICD = 0, $IFA = 0
	If BitAND($IACCESS, 1) <> 0 Then $IDA = BitOR($IDA, $GENERIC_EXECUTE)
	If BitAND($IACCESS, 2) <> 0 Then $IDA = BitOR($IDA, $GENERIC_READ)
	If BitAND($IACCESS, 4) <> 0 Then $IDA = BitOR($IDA, $GENERIC_WRITE)
	If BitAND($ISHARE, 1) <> 0 Then $ISM = BitOR($ISM, $FILE_SHARE_DELETE)
	If BitAND($ISHARE, 2) <> 0 Then $ISM = BitOR($ISM, $FILE_SHARE_READ)
	If BitAND($ISHARE, 4) <> 0 Then $ISM = BitOR($ISM, $FILE_SHARE_WRITE)
	Switch $ICREATION
		Case 0
			$ICD = $CREATE_NEW
		Case 1
			$ICD = $CREATE_ALWAYS
		Case 2
			$ICD = $OPEN_EXISTING
		Case 3
			$ICD = $OPEN_ALWAYS
		Case 4
			$ICD = $TRUNCATE_EXISTING
	EndSwitch
	If BitAND($IATTRIBUTES, 1) <> 0 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_ARCHIVE)
	If BitAND($IATTRIBUTES, 2) <> 0 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_HIDDEN)
	If BitAND($IATTRIBUTES, 4) <> 0 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_READONLY)
	If BitAND($IATTRIBUTES, 8) <> 0 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_SYSTEM)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $SFILENAME, "dword", $IDA, "dword", $ISM, "ptr", $PSECURITY, "dword", $ICD, "dword", $IFA, "ptr", 0)
	If @error Or $ARESULT[0] = Ptr(-1) Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateFile
Func _WinAPI_CreateFont($NHEIGHT, $NWIDTH, $NESCAPE = 0, $NORIENTN = 0, $FNWEIGHT = $__WINAPICONSTANT_FW_NORMAL, $BITALIC = False, $BUNDERLINE = False, $BSTRIKEOUT = False, $NCHARSET = $__WINAPICONSTANT_DEFAULT_CHARSET, $NOUTPUTPREC = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS, $NCLIPPREC = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS, $NQUALITY = $__WINAPICONSTANT_DEFAULT_QUALITY, $NPITCH = 0, $SZFACE = "Arial")
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $NHEIGHT, "int", $NWIDTH, "int", $NESCAPE, "int", $NORIENTN, "int", $FNWEIGHT, "dword", $BITALIC, "dword", $BUNDERLINE, "dword", $BSTRIKEOUT, "dword", $NCHARSET, "dword", $NOUTPUTPREC, "dword", $NCLIPPREC, "dword", $NQUALITY, "dword", $NPITCH, "wstr", $SZFACE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateFont
Func _WinAPI_CreateFontIndirect($TLOGFONT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "ptr", DllStructGetPtr($TLOGFONT))
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateFontIndirect
Func _WinAPI_CreatePen($IPENSTYLE, $IWIDTH, $NCOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreatePen", "int", $IPENSTYLE, "int", $IWIDTH, "dword", $NCOLOR)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreatePen
Func _WinAPI_CreateProcess($SAPPNAME, $SCOMMAND, $PSECURITY, $PTHREAD, $FINHERIT, $IFLAGS, $PENVIRON, $SDIR, $PSTARTUPINFO, $PPROCESS)
	Local $PCOMMAND = 0
	Local $SAPPNAMETYPE = "wstr", $SDIRTYPE = "wstr"
	If $SAPPNAME = "" Then
		$SAPPNAMETYPE = "ptr"
		$SAPPNAME = 0
	EndIf
	If $SCOMMAND <> "" Then
		Local $TCOMMAND = DllStructCreate("wchar Text[" & 260 + 1 & "]")
		$PCOMMAND = DllStructGetPtr($TCOMMAND)
		DllStructSetData($TCOMMAND, "Text", $SCOMMAND)
	EndIf
	If $SDIR = "" Then
		$SDIRTYPE = "ptr"
		$SDIR = 0
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "bool", "CreateProcessW", $SAPPNAMETYPE, $SAPPNAME, "ptr", $PCOMMAND, "ptr", $PSECURITY, "ptr", $PTHREAD, "bool", $FINHERIT, "dword", $IFLAGS, "ptr", $PENVIRON, $SDIRTYPE, $SDIR, "ptr", $PSTARTUPINFO, "ptr", $PPROCESS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateProcess
Func _WinAPI_CreateRectRgn($ILEFTRECT, $ITOPRECT, $IRIGHTRECT, $IBOTTOMRECT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $ILEFTRECT, "int", $ITOPRECT, "int", $IRIGHTRECT, "int", $IBOTTOMRECT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateRectRgn
Func _WinAPI_CreateRoundRectRgn($ILEFTRECT, $ITOPRECT, $IRIGHTRECT, $IBOTTOMRECT, $IWIDTHELLIPSE, $IHEIGHTELLIPSE)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $ILEFTRECT, "int", $ITOPRECT, "int", $IRIGHTRECT, "int", $IBOTTOMRECT, "int", $IWIDTHELLIPSE, "int", $IHEIGHTELLIPSE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateRoundRectRgn
Func _WinAPI_CreateSolidBitmap($HWND, $ICOLOR, $IWIDTH, $IHEIGHT, $BRGB = 1)
	Local $HDC = _WinAPI_GetDC($HWND)
	Local $HDESTDC = _WinAPI_CreateCompatibleDC($HDC)
	Local $HBITMAP = _WinAPI_CreateCompatibleBitmap($HDC, $IWIDTH, $IHEIGHT)
	Local $HOLD = _WinAPI_SelectObject($HDESTDC, $HBITMAP)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllStructSetData($TRECT, 1, 0)
	DllStructSetData($TRECT, 2, 0)
	DllStructSetData($TRECT, 3, $IWIDTH)
	DllStructSetData($TRECT, 4, $IHEIGHT)
	If $BRGB Then
		$ICOLOR = BitOR(BitAND($ICOLOR, 65280), BitShift(BitAND($ICOLOR, 255), -16), BitShift(BitAND($ICOLOR, 16711680), 16))
	EndIf
	Local $HBRUSH = _WinAPI_CreateSolidBrush($ICOLOR)
	_WinAPI_FillRect($HDESTDC, DllStructGetPtr($TRECT), $HBRUSH)
	If @error Then
		_WinAPI_DeleteObject($HBITMAP)
		$HBITMAP = 0
	EndIf
	_WinAPI_DeleteObject($HBRUSH)
	_WinAPI_ReleaseDC($HWND, $HDC)
	_WinAPI_SelectObject($HDESTDC, $HOLD)
	_WinAPI_DeleteDC($HDESTDC)
	If Not $HBITMAP Then Return SetError(1, 0, 0)
	Return $HBITMAP
EndFunc   ;==>_WinAPI_CreateSolidBitmap
Func _WinAPI_CreateSolidBrush($NCOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "dword", $NCOLOR)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateSolidBrush
Func _WinAPI_CreateWindowEx($IEXSTYLE, $SCLASS, $SNAME, $ISTYLE, $IX, $IY, $IWIDTH, $IHEIGHT, $HPARENT, $HMENU = 0, $HINSTANCE = 0, $PPARAM = 0)
	If $HINSTANCE = 0 Then $HINSTANCE = _WinAPI_GetModuleHandle("")
	Local $ARESULT = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $IEXSTYLE, "wstr", $SCLASS, "wstr", $SNAME, "dword", $ISTYLE, "int", $IX, "int", $IY, "int", $IWIDTH, "int", $IHEIGHT, "hwnd", $HPARENT, "handle", $HMENU, "handle", $HINSTANCE, "ptr", $PPARAM)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_CreateWindowEx
Func _WinAPI_DefWindowProc($HWND, $IMSG, $IWPARAM, $ILPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $HWND, "uint", $IMSG, "wparam", $IWPARAM, "lparam", $ILPARAM)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DefWindowProc
Func _WinAPI_DeleteDC($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DeleteDC
Func _WinAPI_DeleteObject($HOBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $HOBJECT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DeleteObject
Func _WinAPI_DestroyIcon($HICON)
	Local $ARESULT = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $HICON)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DestroyIcon
Func _WinAPI_DestroyWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DestroyWindow
Func _WinAPI_DrawEdge($HDC, $PTRRECT, $NEDGETYPE, $GRFFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawEdge", "handle", $HDC, "ptr", $PTRRECT, "uint", $NEDGETYPE, "uint", $GRFFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DrawEdge
Func _WinAPI_DrawFrameControl($HDC, $PTRRECT, $NTYPE, $NSTATE)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $HDC, "ptr", $PTRRECT, "uint", $NTYPE, "uint", $NSTATE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DrawFrameControl
Func _WinAPI_DrawIcon($HDC, $IX, $IY, $HICON)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawIcon", "handle", $HDC, "int", $IX, "int", $IY, "handle", $HICON)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DrawIcon
Func _WinAPI_DrawIconEx($HDC, $IX, $IY, $HICON, $IWIDTH = 0, $IHEIGHT = 0, $ISTEP = 0, $HBRUSH = 0, $IFLAGS = 3)
	Local $IOPTIONS
	Switch $IFLAGS
		Case 1
			$IOPTIONS = $__WINAPICONSTANT_DI_MASK
		Case 2
			$IOPTIONS = $__WINAPICONSTANT_DI_IMAGE
		Case 3
			$IOPTIONS = $__WINAPICONSTANT_DI_NORMAL
		Case 4
			$IOPTIONS = $__WINAPICONSTANT_DI_COMPAT
		Case 5
			$IOPTIONS = $__WINAPICONSTANT_DI_DEFAULTSIZE
		Case Else
			$IOPTIONS = $__WINAPICONSTANT_DI_NOMIRROR
	EndSwitch
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $HDC, "int", $IX, "int", $IY, "handle", $HICON, "int", $IWIDTH, "int", $IHEIGHT, "uint", $ISTEP, "handle", $HBRUSH, "uint", $IOPTIONS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DrawIconEx
Func _WinAPI_DrawLine($HDC, $IX1, $IY1, $IX2, $IY2)
	_WinAPI_MoveTo($HDC, $IX1, $IY1)
	If @error Then Return SetError(@error, @extended, False)
	_WinAPI_LineTo($HDC, $IX2, $IY2)
	If @error Then Return SetError(@error, @extended, False)
	Return True
EndFunc   ;==>_WinAPI_DrawLine
Func _WinAPI_DrawText($HDC, $STEXT, ByRef $TRECT, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "int", "DrawTextW", "handle", $HDC, "wstr", $STEXT, "int", -1, "ptr", DllStructGetPtr($TRECT), "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_DrawText
Func _WinAPI_EnableWindow($HWND, $FENABLE = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $HWND, "bool", $FENABLE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_EnableWindow
Func _WinAPI_EnumDisplayDevices($SDEVICE, $IDEVNUM)
	Local $PNAME = 0, $IFLAGS = 0, $ADEVICE[5]
	If $SDEVICE <> "" Then
		Local $TNAME = DllStructCreate("wchar Text[" & StringLen($SDEVICE) + 1 & "]")
		$PNAME = DllStructGetPtr($TNAME)
		DllStructSetData($TNAME, "Text", $SDEVICE)
	EndIf
	Local $TDEVICE = DllStructCreate($TAGDISPLAY_DEVICE)
	Local $PDEVICE = DllStructGetPtr($TDEVICE)
	Local $IDEVICE = DllStructGetSize($TDEVICE)
	DllStructSetData($TDEVICE, "Size", $IDEVICE)
	DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "ptr", $PNAME, "dword", $IDEVNUM, "ptr", $PDEVICE, "dword", 1)
	If @error Then Return SetError(@error, @extended, 0)
	Local $IN = DllStructGetData($TDEVICE, "Flags")
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP) <> 0 Then $IFLAGS = BitOR($IFLAGS, 1)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE) <> 0 Then $IFLAGS = BitOR($IFLAGS, 2)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER) <> 0 Then $IFLAGS = BitOR($IFLAGS, 4)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE) <> 0 Then $IFLAGS = BitOR($IFLAGS, 8)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE) <> 0 Then $IFLAGS = BitOR($IFLAGS, 16)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED) <> 0 Then $IFLAGS = BitOR($IFLAGS, 32)
	$ADEVICE[0] = True
	$ADEVICE[1] = DllStructGetData($TDEVICE, "Name")
	$ADEVICE[2] = DllStructGetData($TDEVICE, "String")
	$ADEVICE[3] = $IFLAGS
	$ADEVICE[4] = DllStructGetData($TDEVICE, "ID")
	Return $ADEVICE
EndFunc   ;==>_WinAPI_EnumDisplayDevices
Func _WinAPI_EnumWindows($FVISIBLE = True, $HWND = Default)
	__WINAPI_ENUMWINDOWSINIT()
	If $HWND = Default Then $HWND = _WinAPI_GetDesktopWindow()
	__WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE)
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindows
Func __WINAPI_ENUMWINDOWSADD($HWND, $SCLASS = "")
	If $SCLASS = "" Then $SCLASS = _WinAPI_GetClassName($HWND)
	$__GAWINLIST_WINAPI[0][0] += 1
	Local $ICOUNT = $__GAWINLIST_WINAPI[0][0]
	If $ICOUNT >= $__GAWINLIST_WINAPI[0][1] Then
		ReDim $__GAWINLIST_WINAPI[$ICOUNT + 64][2]
		$__GAWINLIST_WINAPI[0][1] += 64
	EndIf
	$__GAWINLIST_WINAPI[$ICOUNT][0] = $HWND
	$__GAWINLIST_WINAPI[$ICOUNT][1] = $SCLASS
EndFunc   ;==>__WINAPI_ENUMWINDOWSADD
Func __WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE = True)
	$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_CHILD)
	While $HWND <> 0
		If (Not $FVISIBLE) Or _WinAPI_IsWindowVisible($HWND) Then
			__WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE)
			__WINAPI_ENUMWINDOWSADD($HWND)
		EndIf
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
EndFunc   ;==>__WINAPI_ENUMWINDOWSCHILD
Func __WINAPI_ENUMWINDOWSINIT()
	ReDim $__GAWINLIST_WINAPI[64][2]
	$__GAWINLIST_WINAPI[0][0] = 0
	$__GAWINLIST_WINAPI[0][1] = 64
EndFunc   ;==>__WINAPI_ENUMWINDOWSINIT
Func _WinAPI_EnumWindowsPopup()
	__WINAPI_ENUMWINDOWSINIT()
	Local $HWND = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $__WINAPICONSTANT_GW_CHILD)
	Local $SCLASS
	While $HWND <> 0
		If _WinAPI_IsWindowVisible($HWND) Then
			$SCLASS = _WinAPI_GetClassName($HWND)
			If $SCLASS = "#32768" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "ToolbarWindow32" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "ToolTips_Class32" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "BaseBar" Then
				__WINAPI_ENUMWINDOWSCHILD($HWND)
			EndIf
		EndIf
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindowsPopup
Func _WinAPI_EnumWindowsTop()
	__WINAPI_ENUMWINDOWSINIT()
	Local $HWND = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $__WINAPICONSTANT_GW_CHILD)
	While $HWND <> 0
		If _WinAPI_IsWindowVisible($HWND) Then __WINAPI_ENUMWINDOWSADD($HWND)
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindowsTop
Func _WinAPI_ExpandEnvironmentStrings($SSTRING)
	Local $ARESULT = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $SSTRING, "wstr", "", "dword", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return $ARESULT[2]
EndFunc   ;==>_WinAPI_ExpandEnvironmentStrings
Func _WinAPI_ExtractIconEx($SFILE, $IINDEX, $PLARGE, $PSMALL, $IICONS)
	Local $ARESULT = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $SFILE, "int", $IINDEX, "handle", $PLARGE, "handle", $PSMALL, "uint", $IICONS)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ExtractIconEx
Func _WinAPI_FatalAppExit($SMESSAGE)
	DllCall("kernel32.dll", "none", "FatalAppExitW", "uint", 0, "wstr", $SMESSAGE)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_WinAPI_FatalAppExit
Func _WinAPI_FillRect($HDC, $PTRRECT, $HBRUSH)
	Local $ARESULT
	If IsPtr($HBRUSH) Then
		$ARESULT = DllCall("user32.dll", "int", "FillRect", "handle", $HDC, "ptr", $PTRRECT, "handle", $HBRUSH)
	Else
		$ARESULT = DllCall("user32.dll", "int", "FillRect", "handle", $HDC, "ptr", $PTRRECT, "dword", $HBRUSH)
	EndIf
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FillRect
Func _WinAPI_FindExecutable($SFILENAME, $SDIRECTORY = "")
	Local $ARESULT = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $SFILENAME, "wstr", $SDIRECTORY, "wstr", "")
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $ARESULT[3])
EndFunc   ;==>_WinAPI_FindExecutable
Func _WinAPI_FindWindow($SCLASSNAME, $SWINDOWNAME)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $SCLASSNAME, "wstr", $SWINDOWNAME)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FindWindow
Func _WinAPI_FlashWindow($HWND, $FINVERT = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $HWND, "bool", $FINVERT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FlashWindow
Func _WinAPI_FlashWindowEx($HWND, $IFLAGS = 3, $ICOUNT = 3, $ITIMEOUT = 0)
	Local $TFLASH = DllStructCreate($TAGFLASHWINFO)
	Local $PFLASH = DllStructGetPtr($TFLASH)
	Local $IFLASH = DllStructGetSize($TFLASH)
	Local $IMODE = 0
	If BitAND($IFLAGS, 1) <> 0 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_CAPTION)
	If BitAND($IFLAGS, 2) <> 0 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TRAY)
	If BitAND($IFLAGS, 4) <> 0 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TIMER)
	If BitAND($IFLAGS, 8) <> 0 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TIMERNOFG)
	DllStructSetData($TFLASH, "Size", $IFLASH)
	DllStructSetData($TFLASH, "hWnd", $HWND)
	DllStructSetData($TFLASH, "Flags", $IMODE)
	DllStructSetData($TFLASH, "Count", $ICOUNT)
	DllStructSetData($TFLASH, "Timeout", $ITIMEOUT)
	Local $ARESULT = DllCall("user32.dll", "bool", "FlashWindowEx", "ptr", $PFLASH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FlashWindowEx
Func _WinAPI_FloatToInt($NFLOAT)
	Local $TFLOAT = DllStructCreate("float")
	Local $TINT = DllStructCreate("int", DllStructGetPtr($TFLOAT))
	DllStructSetData($TFLOAT, 1, $NFLOAT)
	Return DllStructGetData($TINT, 1)
EndFunc   ;==>_WinAPI_FloatToInt
Func _WinAPI_FlushFileBuffers($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FlushFileBuffers", "handle", $HFILE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FlushFileBuffers
Func _WinAPI_FormatMessage($IFLAGS, $PSOURCE, $IMESSAGEID, $ILANGUAGEID, ByRef $PBUFFER, $ISIZE, $VARGUMENTS)
	Local $SBUFFERTYPE = "ptr"
	If IsString($PBUFFER) Then $SBUFFERTYPE = "wstr"
	Local $ARESULT = DllCall("Kernel32.dll", "dword", "FormatMessageW", "dword", $IFLAGS, "ptr", $PSOURCE, "dword", $IMESSAGEID, "dword", $ILANGUAGEID, $SBUFFERTYPE, $PBUFFER, "dword", $ISIZE, "ptr", $VARGUMENTS)
	If @error Then Return SetError(@error, @extended, 0)
	If $SBUFFERTYPE = "wstr" Then $PBUFFER = $ARESULT[5]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FormatMessage
Func _WinAPI_FrameRect($HDC, $PTRRECT, $HBRUSH)
	Local $ARESULT = DllCall("user32.dll", "int", "FrameRect", "handle", $HDC, "ptr", $PTRRECT, "handle", $HBRUSH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FrameRect
Func _WinAPI_FreeLibrary($HMODULE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $HMODULE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_FreeLibrary
Func _WinAPI_GetAncestor($HWND, $IFLAGS = 1)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $HWND, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetAncestor
Func _WinAPI_GetAsyncKeyState($IKEY)
	Local $ARESULT = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $IKEY)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetAsyncKeyState
Func _WinAPI_GetBkMode($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetBkMode
Func _WinAPI_GetClassName($HWND)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $HWND, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, False)
	Return SetExtended($ARESULT[0], $ARESULT[2])
EndFunc   ;==>_WinAPI_GetClassName
Func _WinAPI_GetClientHeight($HWND)
	Local $TRECT = _WinAPI_GetClientRect($HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TRECT, "Bottom") - DllStructGetData($TRECT, "Top")
EndFunc   ;==>_WinAPI_GetClientHeight
Func _WinAPI_GetClientWidth($HWND)
	Local $TRECT = _WinAPI_GetClientRect($HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TRECT, "Right") - DllStructGetData($TRECT, "Left")
EndFunc   ;==>_WinAPI_GetClientWidth
Func _WinAPI_GetClientRect($HWND)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $HWND, "ptr", DllStructGetPtr($TRECT))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TRECT
EndFunc   ;==>_WinAPI_GetClientRect
Func _WinAPI_GetCurrentProcess()
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetCurrentProcess
Func _WinAPI_GetCurrentProcessID()
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetCurrentProcessId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetCurrentProcessID
Func _WinAPI_GetCurrentThread()
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetCurrentThread
Func _WinAPI_GetCurrentThreadId()
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetCurrentThreadId
Func _WinAPI_GetCursorInfo()
	Local $TCURSOR = DllStructCreate($TAGCURSORINFO)
	Local $ICURSOR = DllStructGetSize($TCURSOR)
	DllStructSetData($TCURSOR, "Size", $ICURSOR)
	DllCall("user32.dll", "bool", "GetCursorInfo", "ptr", DllStructGetPtr($TCURSOR))
	If @error Then Return SetError(@error, @extended, 0)
	Local $ACURSOR[5]
	$ACURSOR[0] = True
	$ACURSOR[1] = DllStructGetData($TCURSOR, "Flags") <> 0
	$ACURSOR[2] = DllStructGetData($TCURSOR, "hCursor")
	$ACURSOR[3] = DllStructGetData($TCURSOR, "X")
	$ACURSOR[4] = DllStructGetData($TCURSOR, "Y")
	Return $ACURSOR
EndFunc   ;==>_WinAPI_GetCursorInfo
Func _WinAPI_GetDC($HWND)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetDC", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDC
Func _WinAPI_GetDesktopWindow()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDesktopWindow
Func _WinAPI_GetDeviceCaps($HDC, $IINDEX)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $HDC, "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDeviceCaps
Func _WinAPI_GetDIBits($HDC, $HBMP, $ISTARTSCAN, $ISCANLINES, $PBITS, $PBI, $IUSAGE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $HDC, "handle", $HBMP, "uint", $ISTARTSCAN, "uint", $ISCANLINES, "ptr", $PBITS, "ptr", $PBI, "uint", $IUSAGE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDIBits
Func _WinAPI_GetDlgCtrlID($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDlgCtrlID
Func _WinAPI_GetDlgItem($HWND, $IITEMID)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $HWND, "int", $IITEMID)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetDlgItem
Func _WinAPI_GetFocus()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetFocus")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetFocus
Func _WinAPI_GetForegroundWindow()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetForegroundWindow
Func _WinAPI_GetGuiResources($IFLAG = 0, $HPROCESS = -1)
	If $HPROCESS = -1 Then $HPROCESS = _WinAPI_GetCurrentProcess()
	Local $ARESULT = DllCall("user32.dll", "dword", "GetGuiResources", "handle", $HPROCESS, "dword", $IFLAG)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetGuiResources
Func _WinAPI_GetIconInfo($HICON)
	Local $TINFO = DllStructCreate($TAGICONINFO)
	DllCall("user32.dll", "bool", "GetIconInfo", "handle", $HICON, "ptr", DllStructGetPtr($TINFO))
	If @error Then Return SetError(@error, @extended, 0)
	Local $AICON[6]
	$AICON[0] = True
	$AICON[1] = DllStructGetData($TINFO, "Icon") <> 0
	$AICON[2] = DllStructGetData($TINFO, "XHotSpot")
	$AICON[3] = DllStructGetData($TINFO, "YHotSpot")
	$AICON[4] = DllStructGetData($TINFO, "hMask")
	$AICON[5] = DllStructGetData($TINFO, "hColor")
	Return $AICON
EndFunc   ;==>_WinAPI_GetIconInfo
Func _WinAPI_GetFileSizeEx($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetFileSizeEx", "handle", $HFILE, "int64*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[2]
EndFunc   ;==>_WinAPI_GetFileSizeEx
Func _WinAPI_GetLastErrorMessage()
	Local $TBUFFERPTR = DllStructCreate("ptr")
	Local $PBUFFERPTR = DllStructGetPtr($TBUFFERPTR)
	Local $NCOUNT = _WinAPI_FormatMessage(BitOR($__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER, $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM), 0, _WinAPI_GetLastError(), 0, $PBUFFERPTR, 0, 0)
	If @error Then Return SetError(@error, 0, "")
	Local $STEXT = ""
	Local $PBUFFER = DllStructGetData($TBUFFERPTR, 1)
	If $PBUFFER Then
		If $NCOUNT > 0 Then
			Local $TBUFFER = DllStructCreate("wchar[" & ($NCOUNT + 1) & "]", $PBUFFER)
			$STEXT = DllStructGetData($TBUFFER, 1)
		EndIf
		_WinAPI_LocalFree($PBUFFER)
	EndIf
	Return $STEXT
EndFunc   ;==>_WinAPI_GetLastErrorMessage
Func _WinAPI_GetLayeredWindowAttributes($HWND, ByRef $I_TRANSCOLOR, ByRef $TRANSPARENCY, $ASCOLORREF = False)
	$I_TRANSCOLOR = -1
	$TRANSPARENCY = -1
	Local $ARESULT = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $HWND, "dword*", $I_TRANSCOLOR, "byte*", $TRANSPARENCY, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $ASCOLORREF Then
		$ARESULT[2] = Hex(String($ARESULT[2]), 6)
		$ARESULT[2] = "0x" & StringMid($ARESULT[2], 5, 2) & StringMid($ARESULT[2], 3, 2) & StringMid($ARESULT[2], 1, 2)
	EndIf
	$I_TRANSCOLOR = $ARESULT[2]
	$TRANSPARENCY = $ARESULT[3]
	Return $ARESULT[4]
EndFunc   ;==>_WinAPI_GetLayeredWindowAttributes
Func _WinAPI_GetModuleHandle($SMODULENAME)
	Local $SMODULENAMETYPE = "wstr"
	If $SMODULENAME = "" Then
		$SMODULENAME = 0
		$SMODULENAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetModuleHandleW", $SMODULENAMETYPE, $SMODULENAME)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetModuleHandle
Func _WinAPI_GetMousePos($FTOCLIENT = False, $HWND = 0)
	Local $IMODE = Opt("MouseCoordMode", 1)
	Local $APOS = MouseGetPos()
	Opt("MouseCoordMode", $IMODE)
	Local $TPOINT = DllStructCreate($TAGPOINT)
	DllStructSetData($TPOINT, "X", $APOS[0])
	DllStructSetData($TPOINT, "Y", $APOS[1])
	If $FTOCLIENT Then
		_WinAPI_ScreenToClient($HWND, $TPOINT)
		If @error Then Return SetError(@error, @extended, 0)
	EndIf
	Return $TPOINT
EndFunc   ;==>_WinAPI_GetMousePos
Func _WinAPI_GetMousePosX($FTOCLIENT = False, $HWND = 0)
	Local $TPOINT = _WinAPI_GetMousePos($FTOCLIENT, $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TPOINT, "X")
EndFunc   ;==>_WinAPI_GetMousePosX
Func _WinAPI_GetMousePosY($FTOCLIENT = False, $HWND = 0)
	Local $TPOINT = _WinAPI_GetMousePos($FTOCLIENT, $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TPOINT, "Y")
EndFunc   ;==>_WinAPI_GetMousePosY
Func _WinAPI_GetObject($HOBJECT, $ISIZE, $POBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetObject", "handle", $HOBJECT, "int", $ISIZE, "ptr", $POBJECT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetObject
Func _WinAPI_GetOpenFileName($STITLE = "", $SFILTER = "All files (*.*)", $SINITALDIR = ".", $SDEFAULTFILE = "", $SDEFAULTEXT = "", $IFILTERINDEX = 1, $IFLAGS = 0, $IFLAGSEX = 0, $HWNDOWNER = 0)
	Local $IPATHLEN = 4096
	Local $INULLS = 0
	Local $TOFN = DllStructCreate($TAGOPENFILENAME)
	Local $AFILES[1] = [0]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit($SFILTER, "|")
	Local $ASFILTER[$ASFLINES[0] * 2 + 1]
	Local $ISTART, $IFINAL, $STFILTER
	$ASFILTER[0] = $ASFLINES[0] * 2
	For $I = 1 To $ASFLINES[0]
		$ISTART = StringInStr($ASFLINES[$I], "(", 0, 1)
		$IFINAL = StringInStr($ASFLINES[$I], ")", 0, -1)
		$ASFILTER[$I * 2 - 1] = StringStripWS(StringLeft($ASFLINES[$I], $ISTART - 1), 3)
		$ASFILTER[$I * 2] = StringStripWS(StringTrimRight(StringTrimLeft($ASFLINES[$I], $ISTART), StringLen($ASFLINES[$I]) - $IFINAL + 1), 3)
		$STFILTER &= "wchar[" & StringLen($ASFILTER[$I * 2 - 1]) + 1 & "];wchar[" & StringLen($ASFILTER[$I * 2]) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate("wchar Title[" & StringLen($STITLE) + 1 & "]")
	Local $TINITIALDIR = DllStructCreate("wchar InitDir[" & StringLen($SINITALDIR) + 1 & "]")
	Local $TFILTER = DllStructCreate($STFILTER & "wchar")
	Local $TPATH = DllStructCreate("wchar Path[" & $IPATHLEN & "]")
	Local $TEXTN = DllStructCreate("wchar Extension[" & StringLen($SDEFAULTEXT) + 1 & "]")
	For $I = 1 To $ASFILTER[0]
		DllStructSetData($TFILTER, $I, $ASFILTER[$I])
	Next
	DllStructSetData($TTITLE, "Title", $STITLE)
	DllStructSetData($TINITIALDIR, "InitDir", $SINITALDIR)
	DllStructSetData($TPATH, "Path", $SDEFAULTFILE)
	DllStructSetData($TEXTN, "Extension", $SDEFAULTEXT)
	DllStructSetData($TOFN, "StructSize", DllStructGetSize($TOFN))
	DllStructSetData($TOFN, "hwndOwner", $HWNDOWNER)
	DllStructSetData($TOFN, "lpstrFilter", DllStructGetPtr($TFILTER))
	DllStructSetData($TOFN, "nFilterIndex", $IFILTERINDEX)
	DllStructSetData($TOFN, "lpstrFile", DllStructGetPtr($TPATH))
	DllStructSetData($TOFN, "nMaxFile", $IPATHLEN)
	DllStructSetData($TOFN, "lpstrInitialDir", DllStructGetPtr($TINITIALDIR))
	DllStructSetData($TOFN, "lpstrTitle", DllStructGetPtr($TTITLE))
	DllStructSetData($TOFN, "Flags", $IFLAG)
	DllStructSetData($TOFN, "lpstrDefExt", DllStructGetPtr($TEXTN))
	DllStructSetData($TOFN, "FlagsEx", $IFLAGSEX)
	DllCall("comdlg32.dll", "bool", "GetOpenFileNameW", "ptr", DllStructGetPtr($TOFN))
	If @error Then Return SetError(@error, @extended, $AFILES)
	If BitAND($IFLAGS, $OFN_ALLOWMULTISELECT) = $OFN_ALLOWMULTISELECT And BitAND($IFLAGS, $OFN_EXPLORER) = $OFN_EXPLORER Then
		For $X = 1 To $IPATHLEN
			If DllStructGetData($TPATH, "Path", $X) = Chr(0) Then
				DllStructSetData($TPATH, "Path", "|", $X)
				$INULLS += 1
			Else
				$INULLS = 0
			EndIf
			If $INULLS = 2 Then ExitLoop
		Next
		DllStructSetData($TPATH, "Path", Chr(0), $X - 1)
		$AFILES = StringSplit(DllStructGetData($TPATH, "Path"), "|")
		If $AFILES[0] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
		Return StringSplit(DllStructGetData($TPATH, "Path"), "|")
	ElseIf BitAND($IFLAGS, $OFN_ALLOWMULTISELECT) = $OFN_ALLOWMULTISELECT Then
		$AFILES = StringSplit(DllStructGetData($TPATH, "Path"), " ")
		If $AFILES[0] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
		Return StringSplit(StringReplace(DllStructGetData($TPATH, "Path"), " ", "|"), "|")
	Else
		Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
	EndIf
EndFunc   ;==>_WinAPI_GetOpenFileName
Func _WinAPI_GetOverlappedResult($HFILE, $POVERLAPPED, ByRef $IBYTES, $FWAIT = False)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetOverlappedResult", "handle", $HFILE, "ptr", $POVERLAPPED, "dword*", 0, "bool", $FWAIT)
	If @error Then Return SetError(@error, @extended, False)
	$IBYTES = $ARESULT[3]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetOverlappedResult
Func _WinAPI_GetParent($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetParent
Func _WinAPI_GetProcessAffinityMask($HPROCESS)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetProcessAffinityMask", "handle", $HPROCESS, "dword_ptr*", 0, "dword_ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $AMASK[3]
	$AMASK[0] = True
	$AMASK[1] = $ARESULT[2]
	$AMASK[2] = $ARESULT[3]
	Return $AMASK
EndFunc   ;==>_WinAPI_GetProcessAffinityMask
Func _WinAPI_GetSaveFileName($STITLE = "", $SFILTER = "All files (*.*)", $SINITALDIR = ".", $SDEFAULTFILE = "", $SDEFAULTEXT = "", $IFILTERINDEX = 1, $IFLAGS = 0, $IFLAGSEX = 0, $HWNDOWNER = 0)
	Local $IPATHLEN = 4096
	Local $TOFN = DllStructCreate($TAGOPENFILENAME)
	Local $AFILES[1] = [0]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit($SFILTER, "|")
	Local $ASFILTER[$ASFLINES[0] * 2 + 1]
	Local $ISTART, $IFINAL, $STFILTER
	$ASFILTER[0] = $ASFLINES[0] * 2
	For $I = 1 To $ASFLINES[0]
		$ISTART = StringInStr($ASFLINES[$I], "(", 0, 1)
		$IFINAL = StringInStr($ASFLINES[$I], ")", 0, -1)
		$ASFILTER[$I * 2 - 1] = StringStripWS(StringLeft($ASFLINES[$I], $ISTART - 1), 3)
		$ASFILTER[$I * 2] = StringStripWS(StringTrimRight(StringTrimLeft($ASFLINES[$I], $ISTART), StringLen($ASFLINES[$I]) - $IFINAL + 1), 3)
		$STFILTER &= "wchar[" & StringLen($ASFILTER[$I * 2 - 1]) + 1 & "];wchar[" & StringLen($ASFILTER[$I * 2]) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate("wchar Title[" & StringLen($STITLE) + 1 & "]")
	Local $TINITIALDIR = DllStructCreate("wchar InitDir[" & StringLen($SINITALDIR) + 1 & "]")
	Local $TFILTER = DllStructCreate($STFILTER & "wchar")
	Local $TPATH = DllStructCreate("wchar Path[" & $IPATHLEN & "]")
	Local $TEXTN = DllStructCreate("wchar Extension[" & StringLen($SDEFAULTEXT) + 1 & "]")
	For $I = 1 To $ASFILTER[0]
		DllStructSetData($TFILTER, $I, $ASFILTER[$I])
	Next
	DllStructSetData($TTITLE, "Title", $STITLE)
	DllStructSetData($TINITIALDIR, "InitDir", $SINITALDIR)
	DllStructSetData($TPATH, "Path", $SDEFAULTFILE)
	DllStructSetData($TEXTN, "Extension", $SDEFAULTEXT)
	DllStructSetData($TOFN, "StructSize", DllStructGetSize($TOFN))
	DllStructSetData($TOFN, "hwndOwner", $HWNDOWNER)
	DllStructSetData($TOFN, "lpstrFilter", DllStructGetPtr($TFILTER))
	DllStructSetData($TOFN, "nFilterIndex", $IFILTERINDEX)
	DllStructSetData($TOFN, "lpstrFile", DllStructGetPtr($TPATH))
	DllStructSetData($TOFN, "nMaxFile", $IPATHLEN)
	DllStructSetData($TOFN, "lpstrInitialDir", DllStructGetPtr($TINITIALDIR))
	DllStructSetData($TOFN, "lpstrTitle", DllStructGetPtr($TTITLE))
	DllStructSetData($TOFN, "Flags", $IFLAG)
	DllStructSetData($TOFN, "lpstrDefExt", DllStructGetPtr($TEXTN))
	DllStructSetData($TOFN, "FlagsEx", $IFLAGSEX)
	DllCall("comdlg32.dll", "bool", "GetSaveFileNameW", "ptr", DllStructGetPtr($TOFN))
	If @error Then Return SetError(@error, @extended, $AFILES)
	Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
EndFunc   ;==>_WinAPI_GetSaveFileName
Func _WinAPI_GetStockObject($IOBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $IOBJECT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetStockObject
Func _WinAPI_GetStdHandle($ISTDHANDLE)
	If $ISTDHANDLE < 0 Or $ISTDHANDLE > 2 Then Return SetError(2, 0, -1)
	Local Const $AHANDLE[3] = [-10, -11, -12]
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $AHANDLE[$ISTDHANDLE])
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetStdHandle
Func _WinAPI_GetSysColor($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "dword", "GetSysColor", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetSysColor
Func _WinAPI_GetSysColorBrush($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetSysColorBrush
Func _WinAPI_GetSystemMetrics($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetSystemMetrics
Func _WinAPI_GetTextExtentPoint32($HDC, $STEXT)
	Local $TSIZE = DllStructCreate($TAGSIZE)
	Local $ISIZE = StringLen($STEXT)
	DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $HDC, "wstr", $STEXT, "int", $ISIZE, "ptr", DllStructGetPtr($TSIZE))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TSIZE
EndFunc   ;==>_WinAPI_GetTextExtentPoint32
Func _WinAPI_GetWindow($HWND, $ICMD)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $HWND, "uint", $ICMD)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetWindow
Func _WinAPI_GetWindowDC($HWND)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetWindowDC
Func _WinAPI_GetWindowHeight($HWND)
	Local $TRECT = _WinAPI_GetWindowRect($HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TRECT, "Bottom") - DllStructGetData($TRECT, "Top")
EndFunc   ;==>_WinAPI_GetWindowHeight
Func _WinAPI_GetWindowLong($HWND, $IINDEX)
	Local $SFUNCNAME = "GetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "GetWindowLongPtrW"
	Local $ARESULT = DllCall("user32.dll", "long_ptr", $SFUNCNAME, "hwnd", $HWND, "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetWindowLong
Func _WinAPI_GetWindowPlacement($HWND)
	Local $TWINDOWPLACEMENT = DllStructCreate($TAGWINDOWPLACEMENT)
	DllStructSetData($TWINDOWPLACEMENT, "length", DllStructGetSize($TWINDOWPLACEMENT))
	Local $PWINDOWPLACEMENT = DllStructGetPtr($TWINDOWPLACEMENT)
	DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $HWND, "ptr", $PWINDOWPLACEMENT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $TWINDOWPLACEMENT
EndFunc   ;==>_WinAPI_GetWindowPlacement
Func _WinAPI_GetWindowRect($HWND)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $HWND, "ptr", DllStructGetPtr($TRECT))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TRECT
EndFunc   ;==>_WinAPI_GetWindowRect
Func _WinAPI_GetWindowRgn($HWND, $HRGN)
	Local $ARESULT = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $HWND, "handle", $HRGN)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetWindowRgn
Func _WinAPI_GetWindowText($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $HWND, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0], $ARESULT[2])
EndFunc   ;==>_WinAPI_GetWindowText
Func _WinAPI_GetWindowThreadProcessId($HWND, ByRef $IPID)
	Local $ARESULT = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $HWND, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	$IPID = $ARESULT[2]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GetWindowThreadProcessId
Func _WinAPI_GetWindowWidth($HWND)
	Local $TRECT = _WinAPI_GetWindowRect($HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($TRECT, "Right") - DllStructGetData($TRECT, "Left")
EndFunc   ;==>_WinAPI_GetWindowWidth
Func _WinAPI_GetXYFromPoint(ByRef $TPOINT, ByRef $IX, ByRef $IY)
	$IX = DllStructGetData($TPOINT, "X")
	$IY = DllStructGetData($TPOINT, "Y")
EndFunc   ;==>_WinAPI_GetXYFromPoint
Func _WinAPI_GlobalMemoryStatus()
	Local $TMEM = DllStructCreate($TAGMEMORYSTATUSEX)
	Local $PMEM = DllStructGetPtr($TMEM)
	Local $IMEM = DllStructGetSize($TMEM)
	DllStructSetData($TMEM, 1, $IMEM)
	DllCall("kernel32.dll", "none", "GlobalMemoryStatusEx", "ptr", $PMEM)
	If @error Then Return SetError(@error, @extended, 0)
	Local $AMEM[7]
	$AMEM[0] = DllStructGetData($TMEM, 2)
	$AMEM[1] = DllStructGetData($TMEM, 3)
	$AMEM[2] = DllStructGetData($TMEM, 4)
	$AMEM[3] = DllStructGetData($TMEM, 5)
	$AMEM[4] = DllStructGetData($TMEM, 6)
	$AMEM[5] = DllStructGetData($TMEM, 7)
	$AMEM[6] = DllStructGetData($TMEM, 8)
	Return $AMEM
EndFunc   ;==>_WinAPI_GlobalMemoryStatus
Func _WinAPI_GUIDFromString($SGUID)
	Local $TGUID = DllStructCreate($TAGGUID)
	_WinAPI_GUIDFromStringEx($SGUID, DllStructGetPtr($TGUID))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TGUID
EndFunc   ;==>_WinAPI_GUIDFromString
Func _WinAPI_GUIDFromStringEx($SGUID, $PGUID)
	Local $ARESULT = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $SGUID, "ptr", $PGUID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_GUIDFromStringEx
Func _WinAPI_HiWord($ILONG)
	Return BitShift($ILONG, 16)
EndFunc   ;==>_WinAPI_HiWord
Func _WinAPI_InProcess($HWND, ByRef $HLASTWND)
	If $HWND = $HLASTWND Then Return True
	For $II = $__GAINPROCESS_WINAPI[0][0] To 1 Step -1
		If $HWND = $__GAINPROCESS_WINAPI[$II][0] Then
			If $__GAINPROCESS_WINAPI[$II][1] Then
				$HLASTWND = $HWND
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $IPROCESSID
	_WinAPI_GetWindowThreadProcessId($HWND, $IPROCESSID)
	Local $ICOUNT = $__GAINPROCESS_WINAPI[0][0] + 1
	If $ICOUNT >= 64 Then $ICOUNT = 1
	$__GAINPROCESS_WINAPI[0][0] = $ICOUNT
	$__GAINPROCESS_WINAPI[$ICOUNT][0] = $HWND
	$__GAINPROCESS_WINAPI[$ICOUNT][1] = ($IPROCESSID = @AutoItPID)
	Return $__GAINPROCESS_WINAPI[$ICOUNT][1]
EndFunc   ;==>_WinAPI_InProcess
Func _WinAPI_IntToFloat($IINT)
	Local $TINT = DllStructCreate("int")
	Local $TFLOAT = DllStructCreate("float", DllStructGetPtr($TINT))
	DllStructSetData($TINT, 1, $IINT)
	Return DllStructGetData($TFLOAT, 1)
EndFunc   ;==>_WinAPI_IntToFloat
Func _WinAPI_IsClassName($HWND, $SCLASSNAME)
	Local $SSEPARATOR = Opt("GUIDataSeparatorChar")
	Local $ACLASSNAME = StringSplit($SCLASSNAME, $SSEPARATOR)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Local $SCLASSCHECK = _WinAPI_GetClassName($HWND)
	For $X = 1 To UBound($ACLASSNAME) - 1
		If StringUpper(StringMid($SCLASSCHECK, 1, StringLen($ACLASSNAME[$X]))) = StringUpper($ACLASSNAME[$X]) Then Return True
	Next
	Return False
EndFunc   ;==>_WinAPI_IsClassName
Func _WinAPI_IsWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_IsWindow
Func _WinAPI_IsWindowVisible($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_IsWindowVisible
Func _WinAPI_InvalidateRect($HWND, $TRECT = 0, $FERASE = True)
	Local $PRECT = 0
	If IsDllStruct($TRECT) Then $PRECT = DllStructGetPtr($TRECT)
	Local $ARESULT = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $HWND, "ptr", $PRECT, "bool", $FERASE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_InvalidateRect
Func _WinAPI_LineTo($HDC, $IX, $IY)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "LineTo", "handle", $HDC, "int", $IX, "int", $IY)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LineTo
Func _WinAPI_LoadBitmap($HINSTANCE, $SBITMAP)
	Local $SBITMAPTYPE = "int"
	If IsString($SBITMAP) Then $SBITMAPTYPE = "wstr"
	Local $ARESULT = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $HINSTANCE, $SBITMAPTYPE, $SBITMAP)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LoadBitmap
Func _WinAPI_LoadImage($HINSTANCE, $SIMAGE, $ITYPE, $IXDESIRED, $IYDESIRED, $ILOAD)
	Local $ARESULT, $SIMAGETYPE = "int"
	If IsString($SIMAGE) Then $SIMAGETYPE = "wstr"
	$ARESULT = DllCall("user32.dll", "handle", "LoadImageW", "handle", $HINSTANCE, $SIMAGETYPE, $SIMAGE, "uint", $ITYPE, "int", $IXDESIRED, "int", $IYDESIRED, "uint", $ILOAD)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LoadImage
Func _WinAPI_LoadLibrary($SFILENAME)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $SFILENAME)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LoadLibrary
Func _WinAPI_LoadLibraryEx($SFILENAME, $IFLAGS = 0)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $SFILENAME, "ptr", 0, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LoadLibraryEx
Func _WinAPI_LoadShell32Icon($IICONID)
	Local $TICONS = DllStructCreate("ptr Data")
	Local $PICONS = DllStructGetPtr($TICONS)
	Local $IICONS = _WinAPI_ExtractIconEx("shell32.dll", $IICONID, 0, $PICONS, 1)
	If @error Then Return SetError(@error, @extended, 0)
	If $IICONS <= 0 Then Return SetError(1, 0, 0)
	Return DllStructGetData($TICONS, "Data")
EndFunc   ;==>_WinAPI_LoadShell32Icon
Func _WinAPI_LoadString($HINSTANCE, $ISTRINGID)
	Local $ARESULT = DllCall("user32.dll", "int", "LoadStringW", "handle", $HINSTANCE, "uint", $ISTRINGID, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0], $ARESULT[3])
EndFunc   ;==>_WinAPI_LoadString
Func _WinAPI_LocalFree($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_LocalFree
Func _WinAPI_LoWord($ILONG)
	Return BitAND($ILONG, 65535)
EndFunc   ;==>_WinAPI_LoWord
Func _WinAPI_MAKELANGID($LGIDPRIMARY, $LGIDSUB)
	Return BitOR(BitShift($LGIDSUB, -10), $LGIDPRIMARY)
EndFunc   ;==>_WinAPI_MAKELANGID
Func _WinAPI_MAKELCID($LGID, $SRTID)
	Return BitOR(BitShift($SRTID, -16), $LGID)
EndFunc   ;==>_WinAPI_MAKELCID
Func _WinAPI_MakeLong($ILO, $IHI)
	Return BitOR(BitShift($IHI, -16), BitAND($ILO, 65535))
EndFunc   ;==>_WinAPI_MakeLong
Func _WinAPI_MakeQWord($LODWORD, $HIDWORD)
	Local $TINT64 = DllStructCreate("uint64")
	Local $TDWORDS = DllStructCreate("dword;dword", DllStructGetPtr($TINT64))
	DllStructSetData($TDWORDS, 1, $LODWORD)
	DllStructSetData($TDWORDS, 2, $HIDWORD)
	Return DllStructGetData($TINT64, 1)
EndFunc   ;==>_WinAPI_MakeQWord
Func _WinAPI_MessageBeep($ITYPE = 1)
	Local $ISOUND
	Switch $ITYPE
		Case 1
			$ISOUND = 0
		Case 2
			$ISOUND = 16
		Case 3
			$ISOUND = 32
		Case 4
			$ISOUND = 48
		Case 5
			$ISOUND = 64
		Case Else
			$ISOUND = -1
	EndSwitch
	Local $ARESULT = DllCall("user32.dll", "bool", "MessageBeep", "uint", $ISOUND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_MessageBeep
Func _WinAPI_MsgBox($IFLAGS, $STITLE, $STEXT)
	BlockInput(0)
	MsgBox($IFLAGS, $STITLE, $STEXT & "      ")
EndFunc   ;==>_WinAPI_MsgBox
Func _WinAPI_Mouse_Event($IFLAGS, $IX = 0, $IY = 0, $IDATA = 0, $IEXTRAINFO = 0)
	DllCall("user32.dll", "none", "mouse_event", "dword", $IFLAGS, "dword", $IX, "dword", $IY, "dword", $IDATA, "ulong_ptr", $IEXTRAINFO)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_WinAPI_Mouse_Event
Func _WinAPI_MoveTo($HDC, $IX, $IY)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $HDC, "int", $IX, "int", $IY, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_MoveTo
Func _WinAPI_MoveWindow($HWND, $IX, $IY, $IWIDTH, $IHEIGHT, $FREPAINT = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $HWND, "int", $IX, "int", $IY, "int", $IWIDTH, "int", $IHEIGHT, "bool", $FREPAINT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_MoveWindow
Func _WinAPI_MulDiv($INUMBER, $INUMERATOR, $IDENOMINATOR)
	Local $ARESULT = DllCall("kernel32.dll", "int", "MulDiv", "int", $INUMBER, "int", $INUMERATOR, "int", $IDENOMINATOR)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_MulDiv
Func _WinAPI_MultiByteToWideChar($STEXT, $ICODEPAGE = 0, $IFLAGS = 0, $BRETSTRING = False)
	Local $STEXTTYPE = "ptr", $PTEXT = $STEXT
	If IsDllStruct($STEXT) Then
		$PTEXT = DllStructGetPtr($STEXT)
	Else
		If Not IsPtr($STEXT) Then $STEXTTYPE = "STR"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, $STEXTTYPE, $PTEXT, "int", -1, "ptr", 0, "int", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $IOUT = $ARESULT[0]
	Local $TOUT = DllStructCreate("wchar[" & $IOUT & "]")
	Local $POUT = DllStructGetPtr($TOUT)
	$ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, $STEXTTYPE, $PTEXT, "int", -1, "ptr", $POUT, "int", $IOUT)
	If @error Then Return SetError(@error, @extended, 0)
	If $BRETSTRING Then Return DllStructGetData($TOUT, 1)
	Return $TOUT
EndFunc   ;==>_WinAPI_MultiByteToWideChar
Func _WinAPI_MultiByteToWideCharEx($STEXT, $PTEXT, $ICODEPAGE = 0, $IFLAGS = 0)
	Local $ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, "STR", $STEXT, "int", -1, "ptr", $PTEXT, "int", (StringLen($STEXT) + 1) * 2)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_MultiByteToWideCharEx
Func _WinAPI_OpenProcess($IACCESS, $FINHERIT, $IPROCESSID, $FDEBUGPRIV = False)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, 0)
	If $ARESULT[0] Then Return $ARESULT[0]
	If Not $FDEBUGPRIV Then Return 0
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, 0)
	_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0
	If Not @error Then
		$ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT[0] Then $IRET = $ARESULT[0]
		_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", False)
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	_WinAPI_CloseHandle($HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>_WinAPI_OpenProcess
Func __WINAPI_PARSEFILEDIALOGPATH($SPATH)
	Local $AFILES[3]
	$AFILES[0] = 2
	Local $STEMP = StringMid($SPATH, 1, StringInStr($SPATH, "\", 0, -1) - 1)
	$AFILES[1] = $STEMP
	$AFILES[2] = StringMid($SPATH, StringInStr($SPATH, "\", 0, -1) + 1)
	Return $AFILES
EndFunc   ;==>__WINAPI_PARSEFILEDIALOGPATH
Func _WinAPI_PathFindOnPath(Const $SZFILE, $AEXTRAPATHS = "", Const $SZPATHDELIMITER = @LF)
	Local $IEXTRACOUNT = 0
	If IsString($AEXTRAPATHS) Then
		If StringLen($AEXTRAPATHS) Then
			$AEXTRAPATHS = StringSplit($AEXTRAPATHS, $SZPATHDELIMITER, 1 + 2)
			$IEXTRACOUNT = UBound($AEXTRAPATHS, 1)
		EndIf
	ElseIf IsArray($AEXTRAPATHS) Then
		$IEXTRACOUNT = UBound($AEXTRAPATHS)
	EndIf
	Local $TPATHS, $TPATHPTRS
	If $IEXTRACOUNT Then
		Local $SZSTRUCT = ""
		For $PATH In $AEXTRAPATHS
			$SZSTRUCT &= "wchar[" & StringLen($PATH) + 1 & "];"
		Next
		$TPATHS = DllStructCreate($SZSTRUCT)
		$TPATHPTRS = DllStructCreate("ptr[" & $IEXTRACOUNT + 1 & "]")
		For $I = 1 To $IEXTRACOUNT
			DllStructSetData($TPATHS, $I, $AEXTRAPATHS[$I - 1])
			DllStructSetData($TPATHPTRS, 1, DllStructGetPtr($TPATHS, $I), $I)
		Next
		DllStructSetData($TPATHPTRS, 1, Ptr(0), $IEXTRACOUNT + 1)
	EndIf
	Local $ARESULT = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $SZFILE, "ptr", DllStructGetPtr($TPATHPTRS))
	If @error Then Return SetError(@error, @extended, False)
	If $ARESULT[0] = 0 Then Return SetError(1, 0, $SZFILE)
	Return $ARESULT[1]
EndFunc   ;==>_WinAPI_PathFindOnPath
Func _WinAPI_PointFromRect(ByRef $TRECT, $FCENTER = True)
	Local $IX1 = DllStructGetData($TRECT, "Left")
	Local $IY1 = DllStructGetData($TRECT, "Top")
	Local $IX2 = DllStructGetData($TRECT, "Right")
	Local $IY2 = DllStructGetData($TRECT, "Bottom")
	If $FCENTER Then
		$IX1 = $IX1 + (($IX2 - $IX1) / 2)
		$IY1 = $IY1 + (($IY2 - $IY1) / 2)
	EndIf
	Local $TPOINT = DllStructCreate($TAGPOINT)
	DllStructSetData($TPOINT, "X", $IX1)
	DllStructSetData($TPOINT, "Y", $IY1)
	Return $TPOINT
EndFunc   ;==>_WinAPI_PointFromRect
Func _WinAPI_PostMessage($HWND, $IMSG, $IWPARAM, $ILPARAM)
	Local $ARESULT = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $HWND, "uint", $IMSG, "wparam", $IWPARAM, "lparam", $ILPARAM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_PostMessage
Func _WinAPI_PrimaryLangId($LGID)
	Return BitAND($LGID, 1023)
EndFunc   ;==>_WinAPI_PrimaryLangId
Func _WinAPI_PtInRect(ByRef $TRECT, ByRef $TPOINT)
	Local $IX = DllStructGetData($TPOINT, "X")
	Local $IY = DllStructGetData($TPOINT, "Y")
	Local $ARESULT = DllCall("user32.dll", "bool", "PtInRect", "ptr", DllStructGetPtr($TRECT), "long", $IX, "long", $IY)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_PtInRect
Func _WinAPI_ReadFile($HFILE, $PBUFFER, $ITOREAD, ByRef $IREAD, $POVERLAPPED = 0)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $HFILE, "ptr", $PBUFFER, "dword", $ITOREAD, "dword*", 0, "ptr", $POVERLAPPED)
	If @error Then Return SetError(@error, @extended, False)
	$IREAD = $ARESULT[4]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ReadFile
Func _WinAPI_ReadProcessMemory($HPROCESS, $PBASEADDRESS, $PBUFFER, $ISIZE, ByRef $IREAD)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $HPROCESS, "ptr", $PBASEADDRESS, "ptr", $PBUFFER, "ulong_ptr", $ISIZE, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$IREAD = $ARESULT[5]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ReadProcessMemory
Func _WinAPI_RectIsEmpty(ByRef $TRECT)
	Return (DllStructGetData($TRECT, "Left") = 0) And (DllStructGetData($TRECT, "Top") = 0) And (DllStructGetData($TRECT, "Right") = 0) And (DllStructGetData($TRECT, "Bottom") = 0)
EndFunc   ;==>_WinAPI_RectIsEmpty
Func _WinAPI_RedrawWindow($HWND, $TRECT = 0, $HREGION = 0, $IFLAGS = 5)
	Local $PRECT = 0
	If $TRECT <> 0 Then $PRECT = DllStructGetPtr($TRECT)
	Local $ARESULT = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $HWND, "ptr", $PRECT, "handle", $HREGION, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_RedrawWindow
Func _WinAPI_RegisterWindowMessage($SMESSAGE)
	Local $ARESULT = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $SMESSAGE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_RegisterWindowMessage
Func _WinAPI_ReleaseCapture()
	Local $ARESULT = DllCall("user32.dll", "bool", "ReleaseCapture")
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ReleaseCapture
Func _WinAPI_ReleaseDC($HWND, $HDC)
	Local $ARESULT = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $HWND, "handle", $HDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ReleaseDC
Func _WinAPI_ScreenToClient($HWND, ByRef $TPOINT)
	Local $ARESULT = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $HWND, "ptr", DllStructGetPtr($TPOINT))
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ScreenToClient
Func _WinAPI_SelectObject($HDC, $HGDIOBJ)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $HDC, "handle", $HGDIOBJ)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SelectObject
Func _WinAPI_SetBkColor($HDC, $ICOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $HDC, "dword", $ICOLOR)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetBkColor
Func _WinAPI_SetBkMode($HDC, $IBKMODE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $HDC, "int", $IBKMODE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetBkMode
Func _WinAPI_SetCapture($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetCapture
Func _WinAPI_SetCursor($HCURSOR)
	Local $ARESULT = DllCall("user32.dll", "handle", "SetCursor", "handle", $HCURSOR)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetCursor
Func _WinAPI_SetDefaultPrinter($SPRINTER)
	Local $ARESULT = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $SPRINTER)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetDefaultPrinter
Func _WinAPI_SetDIBits($HDC, $HBMP, $ISTARTSCAN, $ISCANLINES, $PBITS, $PBMI, $ICOLORUSE = 0)
	Local $ARESULT = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $HDC, "handle", $HBMP, "uint", $ISTARTSCAN, "uint", $ISCANLINES, "ptr", $PBITS, "ptr", $PBMI, "uint", $ICOLORUSE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetDIBits
Func _WinAPI_SetEndOfFile($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetEndOfFile", "handle", $HFILE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetEndOfFile
Func _WinAPI_SetEvent($HEVENT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetEvent", "handle", $HEVENT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetEvent
Func _WinAPI_SetFilePointer($HFILE, $IPOS, $IMETHOD = 0)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "SetFilePointer", "handle", $HFILE, "long", $IPOS, "ptr", 0, "long", $IMETHOD)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetFilePointer
Func _WinAPI_SetFocus($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetFocus
Func _WinAPI_SetFont($HWND, $HFONT, $FREDRAW = True)
	_SendMessage($HWND, $__WINAPICONSTANT_WM_SETFONT, $HFONT, $FREDRAW, 0, "hwnd")
EndFunc   ;==>_WinAPI_SetFont
Func _WinAPI_SetHandleInformation($HOBJECT, $IMASK, $IFLAGS)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $HOBJECT, "dword", $IMASK, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetHandleInformation
Func _WinAPI_SetLayeredWindowAttributes($HWND, $I_TRANSCOLOR, $TRANSPARENCY = 255, $DWFLAGS = 3, $ISCOLORREF = False)
	If $DWFLAGS = Default Or $DWFLAGS = "" Or $DWFLAGS < 0 Then $DWFLAGS = 3
	If Not $ISCOLORREF Then
		$I_TRANSCOLOR = Hex(String($I_TRANSCOLOR), 6)
		$I_TRANSCOLOR = Execute("0x00" & StringMid($I_TRANSCOLOR, 5, 2) & StringMid($I_TRANSCOLOR, 3, 2) & StringMid($I_TRANSCOLOR, 1, 2))
	EndIf
	Local $ARESULT = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $HWND, "dword", $I_TRANSCOLOR, "byte", $TRANSPARENCY, "dword", $DWFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetLayeredWindowAttributes
Func _WinAPI_SetParent($HWNDCHILD, $HWNDPARENT)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $HWNDCHILD, "hwnd", $HWNDPARENT)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetParent
Func _WinAPI_SetProcessAffinityMask($HPROCESS, $IMASK)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetProcessAffinityMask", "handle", $HPROCESS, "ulong_ptr", $IMASK)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetProcessAffinityMask
Func _WinAPI_SetSysColors($VELEMENTS, $VCOLORS)
	Local $ISEARRAY = IsArray($VELEMENTS), $ISCARRAY = IsArray($VCOLORS)
	Local $IELEMENTNUM
	If Not $ISCARRAY And Not $ISEARRAY Then
		$IELEMENTNUM = 1
	ElseIf $ISCARRAY Or $ISEARRAY Then
		If Not $ISCARRAY Or Not $ISEARRAY Then Return SetError(-1, -1, False)
		If UBound($VELEMENTS) <> UBound($VCOLORS) Then Return SetError(-1, -1, False)
		$IELEMENTNUM = UBound($VELEMENTS)
	EndIf
	Local $TELEMENTS = DllStructCreate("int Element[" & $IELEMENTNUM & "]")
	Local $TCOLORS = DllStructCreate("dword NewColor[" & $IELEMENTNUM & "]")
	Local $PELEMENTS = DllStructGetPtr($TELEMENTS)
	Local $PCOLORS = DllStructGetPtr($TCOLORS)
	If Not $ISEARRAY Then
		DllStructSetData($TELEMENTS, "Element", $VELEMENTS, 1)
	Else
		For $X = 0 To $IELEMENTNUM - 1
			DllStructSetData($TELEMENTS, "Element", $VELEMENTS[$X], $X + 1)
		Next
	EndIf
	If Not $ISCARRAY Then
		DllStructSetData($TCOLORS, "NewColor", $VCOLORS, 1)
	Else
		For $X = 0 To $IELEMENTNUM - 1
			DllStructSetData($TCOLORS, "NewColor", $VCOLORS[$X], $X + 1)
		Next
	EndIf
	Local $ARESULT = DllCall("user32.dll", "bool", "SetSysColors", "int", $IELEMENTNUM, "ptr", $PELEMENTS, "ptr", $PCOLORS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetSysColors
Func _WinAPI_SetTextColor($HDC, $ICOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $HDC, "dword", $ICOLOR)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetTextColor
Func _WinAPI_SetWindowLong($HWND, $IINDEX, $IVALUE)
	_WinAPI_SetLastError(0)
	Local $SFUNCNAME = "SetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "SetWindowLongPtrW"
	Local $ARESULT = DllCall("user32.dll", "long_ptr", $SFUNCNAME, "hwnd", $HWND, "int", $IINDEX, "long_ptr", $IVALUE)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowLong
Func _WinAPI_SetWindowPlacement($HWND, $PWINDOWPLACEMENT)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $HWND, "ptr", $PWINDOWPLACEMENT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowPlacement
Func _WinAPI_SetWindowPos($HWND, $HAFTER, $IX, $IY, $ICX, $ICY, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $HWND, "hwnd", $HAFTER, "int", $IX, "int", $IY, "int", $ICX, "int", $ICY, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowPos
Func _WinAPI_SetWindowRgn($HWND, $HRGN, $BREDRAW = True)
	Local $ARESULT = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $HWND, "handle", $HRGN, "bool", $BREDRAW)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowRgn
Func _WinAPI_SetWindowsHookEx($IDHOOK, $LPFN, $HMOD, $DWTHREADID = 0)
	Local $ARESULT = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $IDHOOK, "ptr", $LPFN, "handle", $HMOD, "dword", $DWTHREADID)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowsHookEx
Func _WinAPI_SetWindowText($HWND, $STEXT)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $HWND, "wstr", $STEXT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SetWindowText
Func _WinAPI_ShowCursor($FSHOW)
	Local $ARESULT = DllCall("user32.dll", "int", "ShowCursor", "bool", $FSHOW)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ShowCursor
Func _WinAPI_ShowError($STEXT, $FEXIT = True)
	_WinAPI_MsgBox(266256, "Error", $STEXT)
	If $FEXIT Then Exit
EndFunc   ;==>_WinAPI_ShowError
Func _WinAPI_ShowMsg($STEXT)
	_WinAPI_MsgBox(64 + 4096, "Information", $STEXT)
EndFunc   ;==>_WinAPI_ShowMsg
Func _WinAPI_ShowWindow($HWND, $ICMDSHOW = 5)
	Local $ARESULT = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $HWND, "int", $ICMDSHOW)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_ShowWindow
Func _WinAPI_StringFromGUID($PGUID)
	Local $ARESULT = DllCall("ole32.dll", "int", "StringFromGUID2", "ptr", $PGUID, "wstr", "", "int", 40)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0], $ARESULT[2])
EndFunc   ;==>_WinAPI_StringFromGUID
Func _WinAPI_SubLangId($LGID)
	Return BitShift($LGID, 10)
EndFunc   ;==>_WinAPI_SubLangId
Func _WinAPI_SystemParametersInfo($IACTION, $IPARAM = 0, $VPARAM = 0, $IWININI = 0)
	Local $ARESULT = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $IACTION, "uint", $IPARAM, "ptr", $VPARAM, "uint", $IWININI)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_SystemParametersInfo
Func _WinAPI_TwipsPerPixelX()
	Local $LNGDC, $TWIPSPERPIXELX
	$LNGDC = _WinAPI_GetDC(0)
	$TWIPSPERPIXELX = 1440 / _WinAPI_GetDeviceCaps($LNGDC, $__WINAPICONSTANT_LOGPIXELSX)
	_WinAPI_ReleaseDC(0, $LNGDC)
	Return $TWIPSPERPIXELX
EndFunc   ;==>_WinAPI_TwipsPerPixelX
Func _WinAPI_TwipsPerPixelY()
	Local $LNGDC, $TWIPSPERPIXELY
	$LNGDC = _WinAPI_GetDC(0)
	$TWIPSPERPIXELY = 1440 / _WinAPI_GetDeviceCaps($LNGDC, $__WINAPICONSTANT_LOGPIXELSY)
	_WinAPI_ReleaseDC(0, $LNGDC)
	Return $TWIPSPERPIXELY
EndFunc   ;==>_WinAPI_TwipsPerPixelY
Func _WinAPI_UnhookWindowsHookEx($HHK)
	Local $ARESULT = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $HHK)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_UnhookWindowsHookEx
Func _WinAPI_UpdateLayeredWindow($HWND, $HDCDEST, $PPTDEST, $PSIZE, $HDCSRCE, $PPTSRCE, $IRGB, $PBLEND, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $HWND, "handle", $HDCDEST, "ptr", $PPTDEST, "ptr", $PSIZE, "handle", $HDCSRCE, "ptr", $PPTSRCE, "dword", $IRGB, "ptr", $PBLEND, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_UpdateLayeredWindow
Func _WinAPI_UpdateWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_UpdateWindow
Func _WinAPI_WaitForInputIdle($HPROCESS, $ITIMEOUT = -1)
	Local $ARESULT = DllCall("user32.dll", "dword", "WaitForInputIdle", "handle", $HPROCESS, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WaitForInputIdle
Func _WinAPI_WaitForMultipleObjects($ICOUNT, $PHANDLES, $FWAITALL = False, $ITIMEOUT = -1)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "WaitForMultipleObjects", "dword", $ICOUNT, "ptr", $PHANDLES, "bool", $FWAITALL, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WaitForMultipleObjects
Func _WinAPI_WaitForSingleObject($HHANDLE, $ITIMEOUT = -1)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "WaitForSingleObject", "handle", $HHANDLE, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, -1)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WaitForSingleObject
Func _WinAPI_WideCharToMultiByte($PUNICODE, $ICODEPAGE = 0, $BRETSTRING = True)
	Local $SUNICODETYPE = "ptr"
	If IsDllStruct($PUNICODE) Then
		$PUNICODE = DllStructGetPtr($PUNICODE)
	Else
		If Not IsPtr($PUNICODE) Then $SUNICODETYPE = "wstr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $ICODEPAGE, "dword", 0, $SUNICODETYPE, $PUNICODE, "int", -1, "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, "")
	Local $TMULTIBYTE = DllStructCreate("char[" & $ARESULT[0] & "]")
	Local $PMULTIBYTE = DllStructGetPtr($TMULTIBYTE)
	$ARESULT = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $ICODEPAGE, "dword", 0, $SUNICODETYPE, $PUNICODE, "int", -1, "ptr", $PMULTIBYTE, "int", $ARESULT[0], "ptr", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, "")
	If $BRETSTRING Then Return DllStructGetData($TMULTIBYTE, 1)
	Return $TMULTIBYTE
EndFunc   ;==>_WinAPI_WideCharToMultiByte
Func _WinAPI_WindowFromPoint(ByRef $TPOINT)
	Local $TPOINTCAST = DllStructCreate("int64", DllStructGetPtr($TPOINT))
	Local $ARESULT = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int64", DllStructGetData($TPOINTCAST, 1))
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WindowFromPoint
Func _WinAPI_WriteConsole($HCONSOLE, $STEXT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteConsoleW", "handle", $HCONSOLE, "wstr", $STEXT, "dword", StringLen($STEXT), "dword*", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WriteConsole
Func _WinAPI_WriteFile($HFILE, $PBUFFER, $ITOWRITE, ByRef $IWRITTEN, $POVERLAPPED = 0)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $HFILE, "ptr", $PBUFFER, "dword", $ITOWRITE, "dword*", 0, "ptr", $POVERLAPPED)
	If @error Then Return SetError(@error, @extended, False)
	$IWRITTEN = $ARESULT[4]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WriteFile
Func _WinAPI_WriteProcessMemory($HPROCESS, $PBASEADDRESS, $PBUFFER, $ISIZE, ByRef $IWRITTEN, $SBUFFER = "ptr")
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $HPROCESS, "ptr", $PBASEADDRESS, $SBUFFER, $PBUFFER, "ulong_ptr", $ISIZE, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$IWRITTEN = $ARESULT[5]
	Return $ARESULT[0]
EndFunc   ;==>_WinAPI_WriteProcessMemory
Func _DateAdd($STYPE, $IVALTOADD, $SDATE)
	Local $ASTIMEPART[4]
	Local $ASDATEPART[4]
	Local $IJULIANDATE
	$STYPE = StringLeft($STYPE, 1)
	If StringInStr("D,M,Y,w,h,n,s", $STYPE) = 0 Or $STYPE = "" Then
		Return SetError(1, 0, 0)
	EndIf
	If Not StringIsInt($IVALTOADD) Then
		Return SetError(2, 0, 0)
	EndIf
	If Not _DateIsValid($SDATE) Then
		Return SetError(3, 0, 0)
	EndIf
	_DateTimeSplit($SDATE, $ASDATEPART, $ASTIMEPART)
	If $STYPE = "d" Or $STYPE = "w" Then
		If $STYPE = "w" Then $IVALTOADD = $IVALTOADD * 7
		$IJULIANDATE = _DateToDayValue($ASDATEPART[1], $ASDATEPART[2], $ASDATEPART[3]) + $IVALTOADD
		_DayValueToDate($IJULIANDATE, $ASDATEPART[1], $ASDATEPART[2], $ASDATEPART[3])
	EndIf
	If $STYPE = "m" Then
		$ASDATEPART[2] = $ASDATEPART[2] + $IVALTOADD
		While $ASDATEPART[2] > 12
			$ASDATEPART[2] = $ASDATEPART[2] - 12
			$ASDATEPART[1] = $ASDATEPART[1] + 1
		WEnd
		While $ASDATEPART[2] < 1
			$ASDATEPART[2] = $ASDATEPART[2] + 12
			$ASDATEPART[1] = $ASDATEPART[1] - 1
		WEnd
	EndIf
	If $STYPE = "y" Then
		$ASDATEPART[1] = $ASDATEPART[1] + $IVALTOADD
	EndIf
	If $STYPE = "h" Or $STYPE = "n" Or $STYPE = "s" Then
		Local $ITIMEVAL = _TimeToTicks($ASTIMEPART[1], $ASTIMEPART[2], $ASTIMEPART[3]) / 1000
		If $STYPE = "h" Then $ITIMEVAL = $ITIMEVAL + $IVALTOADD * 3600
		If $STYPE = "n" Then $ITIMEVAL = $ITIMEVAL + $IVALTOADD * 60
		If $STYPE = "s" Then $ITIMEVAL = $ITIMEVAL + $IVALTOADD
		Local $DAY2ADD = Int($ITIMEVAL / (24 * 60 * 60))
		$ITIMEVAL = $ITIMEVAL - $DAY2ADD * 24 * 60 * 60
		If $ITIMEVAL < 0 Then
			$DAY2ADD = $DAY2ADD - 1
			$ITIMEVAL = $ITIMEVAL + 24 * 60 * 60
		EndIf
		$IJULIANDATE = _DateToDayValue($ASDATEPART[1], $ASDATEPART[2], $ASDATEPART[3]) + $DAY2ADD
		_DayValueToDate($IJULIANDATE, $ASDATEPART[1], $ASDATEPART[2], $ASDATEPART[3])
		_TicksToTime($ITIMEVAL * 1000, $ASTIMEPART[1], $ASTIMEPART[2], $ASTIMEPART[3])
	EndIf
	Local $INUMDAYS = _DAYSINMONTH($ASDATEPART[1])
	If $INUMDAYS[$ASDATEPART[2]] < $ASDATEPART[3] Then $ASDATEPART[3] = $INUMDAYS[$ASDATEPART[2]]
	$SDATE = $ASDATEPART[1] & "/" & StringRight("0" & $ASDATEPART[2], 2) & "/" & StringRight("0" & $ASDATEPART[3], 2)
	If $ASTIMEPART[0] > 0 Then
		If $ASTIMEPART[0] > 2 Then
			$SDATE = $SDATE & " " & StringRight("0" & $ASTIMEPART[1], 2) & ":" & StringRight("0" & $ASTIMEPART[2], 2) & ":" & StringRight("0" & $ASTIMEPART[3], 2)
		Else
			$SDATE = $SDATE & " " & StringRight("0" & $ASTIMEPART[1], 2) & ":" & StringRight("0" & $ASTIMEPART[2], 2)
		EndIf
	EndIf
	Return ($SDATE)
EndFunc   ;==>_DateAdd
Func _DateDayOfWeek($IDAYNUM, $ISHORT = 0)
	Local Const $ADAYOFWEEK[8] = ["", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
	Select
		Case Not StringIsInt($IDAYNUM) Or Not StringIsInt($ISHORT)
			Return SetError(1, 0, "")
		Case $IDAYNUM < 1 Or $IDAYNUM > 7
			Return SetError(1, 0, "")
		Case Else
			Select
				Case $ISHORT = 0
					Return $ADAYOFWEEK[$IDAYNUM]
				Case $ISHORT = 1
					Return StringLeft($ADAYOFWEEK[$IDAYNUM], 3)
				Case Else
					Return SetError(1, 0, "")
			EndSelect
	EndSelect
EndFunc   ;==>_DateDayOfWeek
Func _DateDaysInMonth($IYEAR, $IMONTHNUM)
	If __DATEISMONTH($IMONTHNUM) And __DATEISYEAR($IYEAR) Then
		Local $AINUMDAYS = _DAYSINMONTH($IYEAR)
		Return $AINUMDAYS[$IMONTHNUM]
	EndIf
	Return SetError(1, 0, 0)
EndFunc   ;==>_DateDaysInMonth
Func _DateDiff($STYPE, $SSTARTDATE, $SENDDATE)
	$STYPE = StringLeft($STYPE, 1)
	If StringInStr("d,m,y,w,h,n,s", $STYPE) = 0 Or $STYPE = "" Then
		Return SetError(1, 0, 0)
	EndIf
	If Not _DateIsValid($SSTARTDATE) Then
		Return SetError(2, 0, 0)
	EndIf
	If Not _DateIsValid($SENDDATE) Then
		Return SetError(3, 0, 0)
	EndIf
	Local $ASSTARTDATEPART[4], $ASSTARTTIMEPART[4], $ASENDDATEPART[4], $ASENDTIMEPART[4]
	_DateTimeSplit($SSTARTDATE, $ASSTARTDATEPART, $ASSTARTTIMEPART)
	_DateTimeSplit($SENDDATE, $ASENDDATEPART, $ASENDTIMEPART)
	Local $ADAYSDIFF = _DateToDayValue($ASENDDATEPART[1], $ASENDDATEPART[2], $ASENDDATEPART[3]) - _DateToDayValue($ASSTARTDATEPART[1], $ASSTARTDATEPART[2], $ASSTARTDATEPART[3])
	Local $ITIMEDIFF, $IYEARDIFF, $ISTARTTIMEINSECS, $IENDTIMEINSECS
	If $ASSTARTTIMEPART[0] > 1 And $ASENDTIMEPART[0] > 1 Then
		$ISTARTTIMEINSECS = $ASSTARTTIMEPART[1] * 3600 + $ASSTARTTIMEPART[2] * 60 + $ASSTARTTIMEPART[3]
		$IENDTIMEINSECS = $ASENDTIMEPART[1] * 3600 + $ASENDTIMEPART[2] * 60 + $ASENDTIMEPART[3]
		$ITIMEDIFF = $IENDTIMEINSECS - $ISTARTTIMEINSECS
		If $ITIMEDIFF < 0 Then
			$ADAYSDIFF = $ADAYSDIFF - 1
			$ITIMEDIFF = $ITIMEDIFF + 24 * 60 * 60
		EndIf
	Else
		$ITIMEDIFF = 0
	EndIf
	Select
		Case $STYPE = "d"
			Return ($ADAYSDIFF)
		Case $STYPE = "m"
			$IYEARDIFF = $ASENDDATEPART[1] - $ASSTARTDATEPART[1]
			Local $IMONTHDIFF = $ASENDDATEPART[2] - $ASSTARTDATEPART[2] + $IYEARDIFF * 12
			If $ASENDDATEPART[3] < $ASSTARTDATEPART[3] Then $IMONTHDIFF = $IMONTHDIFF - 1
			$ISTARTTIMEINSECS = $ASSTARTTIMEPART[1] * 3600 + $ASSTARTTIMEPART[2] * 60 + $ASSTARTTIMEPART[3]
			$IENDTIMEINSECS = $ASENDTIMEPART[1] * 3600 + $ASENDTIMEPART[2] * 60 + $ASENDTIMEPART[3]
			$ITIMEDIFF = $IENDTIMEINSECS - $ISTARTTIMEINSECS
			If $ASENDDATEPART[3] = $ASSTARTDATEPART[3] And $ITIMEDIFF < 0 Then $IMONTHDIFF = $IMONTHDIFF - 1
			Return ($IMONTHDIFF)
		Case $STYPE = "y"
			$IYEARDIFF = $ASENDDATEPART[1] - $ASSTARTDATEPART[1]
			If $ASENDDATEPART[2] < $ASSTARTDATEPART[2] Then $IYEARDIFF = $IYEARDIFF - 1
			If $ASENDDATEPART[2] = $ASSTARTDATEPART[2] And $ASENDDATEPART[3] < $ASSTARTDATEPART[3] Then $IYEARDIFF = $IYEARDIFF - 1
			$ISTARTTIMEINSECS = $ASSTARTTIMEPART[1] * 3600 + $ASSTARTTIMEPART[2] * 60 + $ASSTARTTIMEPART[3]
			$IENDTIMEINSECS = $ASENDTIMEPART[1] * 3600 + $ASENDTIMEPART[2] * 60 + $ASENDTIMEPART[3]
			$ITIMEDIFF = $IENDTIMEINSECS - $ISTARTTIMEINSECS
			If $ASENDDATEPART[2] = $ASSTARTDATEPART[2] And $ASENDDATEPART[3] = $ASSTARTDATEPART[3] And $ITIMEDIFF < 0 Then $IYEARDIFF = $IYEARDIFF - 1
			Return ($IYEARDIFF)
		Case $STYPE = "w"
			Return (Int($ADAYSDIFF / 7))
		Case $STYPE = "h"
			Return ($ADAYSDIFF * 24 + Int($ITIMEDIFF / 3600))
		Case $STYPE = "n"
			Return ($ADAYSDIFF * 24 * 60 + Int($ITIMEDIFF / 60))
		Case $STYPE = "s"
			Return ($ADAYSDIFF * 24 * 60 * 60 + $ITIMEDIFF)
	EndSelect
EndFunc   ;==>_DateDiff
Func _DateIsLeapYear($IYEAR)
	If StringIsInt($IYEAR) Then
		Select
			Case Mod($IYEAR, 4) = 0 And Mod($IYEAR, 100) <> 0
				Return 1
			Case Mod($IYEAR, 400) = 0
				Return 1
			Case Else
				Return 0
		EndSelect
	EndIf
	Return SetError(1, 0, 0)
EndFunc   ;==>_DateIsLeapYear
Func __DATEISMONTH($INUMBER)
	If StringIsInt($INUMBER) Then
		If $INUMBER >= 1 And $INUMBER <= 12 Then
			Return 1
		Else
			Return 0
		EndIf
	EndIf
	Return 0
EndFunc   ;==>__DATEISMONTH
Func _DateIsValid($SDATE)
	Local $ASDATEPART[4], $ASTIMEPART[4]
	Local $SDATETIME = StringSplit($SDATE, " T")
	If $SDATETIME[0] > 0 Then $ASDATEPART = StringSplit($SDATETIME[1], "/-.")
	If UBound($ASDATEPART) <> 4 Then Return (0)
	If $ASDATEPART[0] <> 3 Then Return (0)
	If Not StringIsInt($ASDATEPART[1]) Then Return (0)
	If Not StringIsInt($ASDATEPART[2]) Then Return (0)
	If Not StringIsInt($ASDATEPART[3]) Then Return (0)
	$ASDATEPART[1] = Number($ASDATEPART[1])
	$ASDATEPART[2] = Number($ASDATEPART[2])
	$ASDATEPART[3] = Number($ASDATEPART[3])
	Local $INUMDAYS = _DAYSINMONTH($ASDATEPART[1])
	If $ASDATEPART[1] < 1000 Or $ASDATEPART[1] > 2999 Then Return (0)
	If $ASDATEPART[2] < 1 Or $ASDATEPART[2] > 12 Then Return (0)
	If $ASDATEPART[3] < 1 Or $ASDATEPART[3] > $INUMDAYS[$ASDATEPART[2]] Then Return (0)
	If $SDATETIME[0] > 1 Then
		$ASTIMEPART = StringSplit($SDATETIME[2], ":")
		If UBound($ASTIMEPART) < 4 Then ReDim $ASTIMEPART[4]
	Else
		Dim $ASTIMEPART[4]
	EndIf
	If $ASTIMEPART[0] < 1 Then Return (1)
	If $ASTIMEPART[0] < 2 Then Return (0)
	If $ASTIMEPART[0] = 2 Then $ASTIMEPART[3] = "00"
	If Not StringIsInt($ASTIMEPART[1]) Then Return (0)
	If Not StringIsInt($ASTIMEPART[2]) Then Return (0)
	If Not StringIsInt($ASTIMEPART[3]) Then Return (0)
	$ASTIMEPART[1] = Number($ASTIMEPART[1])
	$ASTIMEPART[2] = Number($ASTIMEPART[2])
	$ASTIMEPART[3] = Number($ASTIMEPART[3])
	If $ASTIMEPART[1] < 0 Or $ASTIMEPART[1] > 23 Then Return (0)
	If $ASTIMEPART[2] < 0 Or $ASTIMEPART[2] > 59 Then Return (0)
	If $ASTIMEPART[3] < 0 Or $ASTIMEPART[3] > 59 Then Return (0)
	Return 1
EndFunc   ;==>_DateIsValid
Func __DATEISYEAR($INUMBER)
	If StringIsInt($INUMBER) Then
		If StringLen($INUMBER) = 4 Then
			Return 1
		Else
			Return 0
		EndIf
	EndIf
	Return 0
EndFunc   ;==>__DATEISYEAR
Func _DATELASTWEEKDAYNUM($IWEEKDAYNUM)
	Select
		Case Not StringIsInt($IWEEKDAYNUM)
			Return SetError(1, 0, 0)
		Case $IWEEKDAYNUM < 1 Or $IWEEKDAYNUM > 7
			Return SetError(1, 0, 0)
		Case Else
			Local $ILASTWEEKDAYNUM
			If $IWEEKDAYNUM = 1 Then
				$ILASTWEEKDAYNUM = 7
			Else
				$ILASTWEEKDAYNUM = $IWEEKDAYNUM - 1
			EndIf
			Return $ILASTWEEKDAYNUM
	EndSelect
EndFunc   ;==>_DATELASTWEEKDAYNUM
Func _DATELASTMONTHNUM($IMONTHNUM)
	Select
		Case Not StringIsInt($IMONTHNUM)
			Return SetError(1, 0, 0)
		Case $IMONTHNUM < 1 Or $IMONTHNUM > 12
			Return SetError(1, 0, 0)
		Case Else
			Local $ILASTMONTHNUM
			If $IMONTHNUM = 1 Then
				$ILASTMONTHNUM = 12
			Else
				$ILASTMONTHNUM = $IMONTHNUM - 1
			EndIf
			$ILASTMONTHNUM = StringFormat("%02d", $ILASTMONTHNUM)
			Return $ILASTMONTHNUM
	EndSelect
EndFunc   ;==>_DATELASTMONTHNUM
Func _DATELASTMONTHYEAR($IMONTHNUM, $IYEAR)
	Select
		Case Not StringIsInt($IMONTHNUM) Or Not StringIsInt($IYEAR)
			Return SetError(1, 0, 0)
		Case $IMONTHNUM < 1 Or $IMONTHNUM > 12
			Return SetError(1, 0, 0)
		Case Else
			Local $ILASTYEAR
			If $IMONTHNUM = 1 Then
				$ILASTYEAR = $IYEAR - 1
			Else
				$ILASTYEAR = $IYEAR
			EndIf
			$ILASTYEAR = StringFormat("%04d", $ILASTYEAR)
			Return $ILASTYEAR
	EndSelect
EndFunc   ;==>_DATELASTMONTHYEAR
Func _DATENEXTWEEKDAYNUM($IWEEKDAYNUM)
	Select
		Case Not StringIsInt($IWEEKDAYNUM)
			Return SetError(1, 0, 0)
		Case $IWEEKDAYNUM < 1 Or $IWEEKDAYNUM > 7
			Return SetError(1, 0, 0)
		Case Else
			Local $INEXTWEEKDAYNUM
			If $IWEEKDAYNUM = 7 Then
				$INEXTWEEKDAYNUM = 1
			Else
				$INEXTWEEKDAYNUM = $IWEEKDAYNUM + 1
			EndIf
			Return $INEXTWEEKDAYNUM
	EndSelect
EndFunc   ;==>_DATENEXTWEEKDAYNUM
Func _DATENEXTMONTHNUM($IMONTHNUM)
	Select
		Case Not StringIsInt($IMONTHNUM)
			Return SetError(1, 0, 0)
		Case $IMONTHNUM < 1 Or $IMONTHNUM > 12
			Return SetError(1, 0, 0)
		Case Else
			Local $INEXTMONTHNUM
			If $IMONTHNUM = 12 Then
				$INEXTMONTHNUM = 1
			Else
				$INEXTMONTHNUM = $IMONTHNUM + 1
			EndIf
			$INEXTMONTHNUM = StringFormat("%02d", $INEXTMONTHNUM)
			Return $INEXTMONTHNUM
	EndSelect
EndFunc   ;==>_DATENEXTMONTHNUM
Func _DATENEXTMONTHYEAR($IMONTHNUM, $IYEAR)
	Select
		Case Not StringIsInt($IMONTHNUM) Or Not StringIsInt($IYEAR)
			Return SetError(1, 0, 0)
		Case $IMONTHNUM < 1 Or $IMONTHNUM > 12
			Return SetError(1, 0, 0)
		Case Else
			Local $INEXTYEAR
			If $IMONTHNUM = 12 Then
				$INEXTYEAR = $IYEAR + 1
			Else
				$INEXTYEAR = $IYEAR
			EndIf
			$INEXTYEAR = StringFormat("%04d", $INEXTYEAR)
			Return $INEXTYEAR
	EndSelect
EndFunc   ;==>_DATENEXTMONTHYEAR
Func _DateTimeFormat($SDATE, $STYPE)
	Local $ASDATEPART[4], $ASTIMEPART[4]
	Local $STEMPDATE = "", $STEMPTIME = ""
	Local $SAM, $SPM, $LNGX
	If Not _DateIsValid($SDATE) Then
		Return SetError(1, 0, "")
	EndIf
	If $STYPE < 0 Or $STYPE > 5 Or Not IsInt($STYPE) Then
		Return SetError(2, 0, "")
	EndIf
	_DateTimeSplit($SDATE, $ASDATEPART, $ASTIMEPART)
	Switch $STYPE
		Case 0
			$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 31, "wstr", "", "int", 255)
			If Not @error And $LNGX[0] <> 0 Then
				$STEMPDATE = $LNGX[3]
			Else
				$STEMPDATE = "M/d/yyyy"
			EndIf
			If $ASTIMEPART[0] > 1 Then
				$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 4099, "wstr", "", "int", 255)
				If Not @error And $LNGX[0] <> 0 Then
					$STEMPTIME = $LNGX[3]
				Else
					$STEMPTIME = "h:mm:ss tt"
				EndIf
			EndIf
		Case 1
			$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 32, "wstr", "", "int", 255)
			If Not @error And $LNGX[0] <> 0 Then
				$STEMPDATE = $LNGX[3]
			Else
				$STEMPDATE = "dddd, MMMM dd, yyyy"
			EndIf
		Case 2
			$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 31, "wstr", "", "int", 255)
			If Not @error And $LNGX[0] <> 0 Then
				$STEMPDATE = $LNGX[3]
			Else
				$STEMPDATE = "M/d/yyyy"
			EndIf
		Case 3
			If $ASTIMEPART[0] > 1 Then
				$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 4099, "wstr", "", "int", 255)
				If Not @error And $LNGX[0] <> 0 Then
					$STEMPTIME = $LNGX[3]
				Else
					$STEMPTIME = "h:mm:ss tt"
				EndIf
			EndIf
		Case 4
			If $ASTIMEPART[0] > 1 Then
				$STEMPTIME = "hh:mm"
			EndIf
		Case 5
			If $ASTIMEPART[0] > 1 Then
				$STEMPTIME = "hh:mm:ss"
			EndIf
	EndSwitch
	If $STEMPDATE <> "" Then
		$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 29, "wstr", "", "int", 255)
		If Not @error And $LNGX[0] <> 0 Then
			$STEMPDATE = StringReplace($STEMPDATE, "/", $LNGX[3])
		EndIf
		Local $IWDAY = _DateToDayOfWeek($ASDATEPART[1], $ASDATEPART[2], $ASDATEPART[3])
		$ASDATEPART[3] = StringRight("0" & $ASDATEPART[3], 2)
		$ASDATEPART[2] = StringRight("0" & $ASDATEPART[2], 2)
		$STEMPDATE = StringReplace($STEMPDATE, "d", "@")
		$STEMPDATE = StringReplace($STEMPDATE, "m", "#")
		$STEMPDATE = StringReplace($STEMPDATE, "y", "&")
		$STEMPDATE = StringReplace($STEMPDATE, "@@@@", _DateDayOfWeek($IWDAY, 0))
		$STEMPDATE = StringReplace($STEMPDATE, "@@@", _DateDayOfWeek($IWDAY, 1))
		$STEMPDATE = StringReplace($STEMPDATE, "@@", $ASDATEPART[3])
		$STEMPDATE = StringReplace($STEMPDATE, "@", StringReplace(StringLeft($ASDATEPART[3], 1), "0", "") & StringRight($ASDATEPART[3], 1))
		$STEMPDATE = StringReplace($STEMPDATE, "####", _DateToMonth($ASDATEPART[2], 0))
		$STEMPDATE = StringReplace($STEMPDATE, "###", _DateToMonth($ASDATEPART[2], 1))
		$STEMPDATE = StringReplace($STEMPDATE, "##", $ASDATEPART[2])
		$STEMPDATE = StringReplace($STEMPDATE, "#", StringReplace(StringLeft($ASDATEPART[2], 1), "0", "") & StringRight($ASDATEPART[2], 1))
		$STEMPDATE = StringReplace($STEMPDATE, "&&&&", $ASDATEPART[1])
		$STEMPDATE = StringReplace($STEMPDATE, "&&", StringRight($ASDATEPART[1], 2))
	EndIf
	If $STEMPTIME <> "" Then
		$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 40, "wstr", "", "int", 255)
		If Not @error And $LNGX[0] <> 0 Then
			$SAM = $LNGX[3]
		Else
			$SAM = "AM"
		EndIf
		$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 41, "wstr", "", "int", 255)
		If Not @error And $LNGX[0] <> 0 Then
			$SPM = $LNGX[3]
		Else
			$SPM = "PM"
		EndIf
		$LNGX = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", 1024, "dword", 30, "wstr", "", "int", 255)
		If Not @error And $LNGX[0] <> 0 Then
			$STEMPTIME = StringReplace($STEMPTIME, ":", $LNGX[3])
		EndIf
		If StringInStr($STEMPTIME, "tt") Then
			If $ASTIMEPART[1] < 12 Then
				$STEMPTIME = StringReplace($STEMPTIME, "tt", $SAM)
				If $ASTIMEPART[1] = 0 Then $ASTIMEPART[1] = 12
			Else
				$STEMPTIME = StringReplace($STEMPTIME, "tt", $SPM)
				If $ASTIMEPART[1] > 12 Then $ASTIMEPART[1] = $ASTIMEPART[1] - 12
			EndIf
		EndIf
		$ASTIMEPART[1] = StringRight("0" & $ASTIMEPART[1], 2)
		$ASTIMEPART[2] = StringRight("0" & $ASTIMEPART[2], 2)
		$ASTIMEPART[3] = StringRight("0" & $ASTIMEPART[3], 2)
		$STEMPTIME = StringReplace($STEMPTIME, "hh", StringFormat("%02d", $ASTIMEPART[1]))
		$STEMPTIME = StringReplace($STEMPTIME, "h", StringReplace(StringLeft($ASTIMEPART[1], 1), "0", "") & StringRight($ASTIMEPART[1], 1))
		$STEMPTIME = StringReplace($STEMPTIME, "mm", StringFormat("%02d", $ASTIMEPART[2]))
		$STEMPTIME = StringReplace($STEMPTIME, "ss", StringFormat("%02d", $ASTIMEPART[3]))
		$STEMPDATE = StringStripWS($STEMPDATE & " " & $STEMPTIME, 3)
	EndIf
	Return $STEMPDATE
EndFunc   ;==>_DateTimeFormat
Func _DateTimeSplit($SDATE, ByRef $ASDATEPART, ByRef $ITIMEPART)
	Local $SDATETIME = StringSplit($SDATE, " T")
	If $SDATETIME[0] > 0 Then $ASDATEPART = StringSplit($SDATETIME[1], "/-.")
	If $SDATETIME[0] > 1 Then
		$ITIMEPART = StringSplit($SDATETIME[2], ":")
		If UBound($ITIMEPART) < 4 Then ReDim $ITIMEPART[4]
	Else
		Dim $ITIMEPART[4]
	EndIf
	If UBound($ASDATEPART) < 4 Then ReDim $ASDATEPART[4]
	For $X = 1 To 3
		If StringIsInt($ASDATEPART[$X]) Then
			$ASDATEPART[$X] = Number($ASDATEPART[$X])
		Else
			$ASDATEPART[$X] = -1
		EndIf
		If StringIsInt($ITIMEPART[$X]) Then
			$ITIMEPART[$X] = Number($ITIMEPART[$X])
		Else
			$ITIMEPART[$X] = 0
		EndIf
	Next
	Return 1
EndFunc   ;==>_DateTimeSplit
Func _DateToDayOfWeek($IYEAR, $IMONTH, $IDAY)
	If Not _DateIsValid($IYEAR & "/" & $IMONTH & "/" & $IDAY) Then
		Return SetError(1, 0, "")
	EndIf
	Local $I_AFACTOR = Int((14 - $IMONTH) / 12)
	Local $I_YFACTOR = $IYEAR - $I_AFACTOR
	Local $I_MFACTOR = $IMONTH + (12 * $I_AFACTOR) - 2
	Local $I_DFACTOR = Mod($IDAY + $I_YFACTOR + Int($I_YFACTOR / 4) - Int($I_YFACTOR / 100) + Int($I_YFACTOR / 400) + Int((31 * $I_MFACTOR) / 12), 7)
	Return ($I_DFACTOR + 1)
EndFunc   ;==>_DateToDayOfWeek
Func _DateToDayOfWeekISO($IYEAR, $IMONTH, $IDAY)
	Local $IDOW = _DateToDayOfWeek($IYEAR, $IMONTH, $IDAY)
	If @error Then
		Return SetError(1, 0, "")
	EndIf
	If $IDOW >= 2 Then Return $IDOW - 1
	Return 7
EndFunc   ;==>_DateToDayOfWeekISO
Func _DateToDayValue($IYEAR, $IMONTH, $IDAY)
	If Not _DateIsValid(StringFormat("%04d/%02d/%02d", $IYEAR, $IMONTH, $IDAY)) Then
		Return SetError(1, 0, "")
	EndIf
	If $IMONTH < 3 Then
		$IMONTH = $IMONTH + 12
		$IYEAR = $IYEAR - 1
	EndIf
	Local $I_AFACTOR = Int($IYEAR / 100)
	Local $I_BFACTOR = Int($I_AFACTOR / 4)
	Local $I_CFACTOR = 2 - $I_AFACTOR + $I_BFACTOR
	Local $I_EFACTOR = Int(1461 * ($IYEAR + 4716) / 4)
	Local $I_FFACTOR = Int(153 * ($IMONTH + 1) / 5)
	Local $IJULIANDATE = $I_CFACTOR + $IDAY + $I_EFACTOR + $I_FFACTOR - 1524.5
	Return ($IJULIANDATE)
EndFunc   ;==>_DateToDayValue
Func _DateToMonth($IMONTH, $ISHORT = 0)
	Local $AMONTHNUMBER[13] = ["", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	Local $AMONTHNUMBERABBREV[13] = ["", "Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
	Select
		Case Not StringIsInt($IMONTH)
			Return SetError(1, 0, "")
		Case $IMONTH < 1 Or $IMONTH > 12
			Return SetError(1, 0, "")
		Case Else
			Select
				Case $ISHORT = 0
					Return $AMONTHNUMBER[$IMONTH]
				Case $ISHORT = 1
					Return $AMONTHNUMBERABBREV[$IMONTH]
				Case Else
					Return SetError(1, 0, "")
			EndSelect
	EndSelect
EndFunc   ;==>_DateToMonth
Func _DayValueToDate($IJULIANDATE, ByRef $IYEAR, ByRef $IMONTH, ByRef $IDAY)
	If $IJULIANDATE < 0 Or Not IsNumber($IJULIANDATE) Then
		Return SetError(1, 0, 0)
	EndIf
	Local $I_ZFACTOR = Int($IJULIANDATE + 0.5)
	Local $I_WFACTOR = Int(($I_ZFACTOR - 1867216.25) / 36524.25)
	Local $I_XFACTOR = Int($I_WFACTOR / 4)
	Local $I_AFACTOR = $I_ZFACTOR + 1 + $I_WFACTOR - $I_XFACTOR
	Local $I_BFACTOR = $I_AFACTOR + 1524
	Local $I_CFACTOR = Int(($I_BFACTOR - 122.1) / 365.25)
	Local $I_DFACTOR = Int(365.25 * $I_CFACTOR)
	Local $I_EFACTOR = Int(($I_BFACTOR - $I_DFACTOR) / 30.6001)
	Local $I_FFACTOR = Int(30.6001 * $I_EFACTOR)
	$IDAY = $I_BFACTOR - $I_DFACTOR - $I_FFACTOR
	If $I_EFACTOR - 1 < 13 Then
		$IMONTH = $I_EFACTOR - 1
	Else
		$IMONTH = $I_EFACTOR - 13
	EndIf
	If $IMONTH < 3 Then
		$IYEAR = $I_CFACTOR - 4715
	Else
		$IYEAR = $I_CFACTOR - 4716
	EndIf
	$IYEAR = StringFormat("%04d", $IYEAR)
	$IMONTH = StringFormat("%02d", $IMONTH)
	$IDAY = StringFormat("%02d", $IDAY)
	Return $IYEAR & "/" & $IMONTH & "/" & $IDAY
EndFunc   ;==>_DayValueToDate
Func _DATE_JULIANDAYNO($IYEAR, $IMONTH, $IDAY)
	Local $SFULLDATE = StringFormat("%04d/%02d/%02d", $IYEAR, $IMONTH, $IDAY)
	If Not _DateIsValid($SFULLDATE) Then
		Return SetError(1, 0, "")
	EndIf
	Local $IJDAY = 0
	Local $AIDAYSINMONTH = _DAYSINMONTH($IYEAR)
	For $ICNTR = 1 To $IMONTH - 1
		$IJDAY = $IJDAY + $AIDAYSINMONTH[$ICNTR]
	Next
	$IJDAY = ($IYEAR * 1000) + ($IJDAY + $IDAY)
	Return $IJDAY
EndFunc   ;==>_DATE_JULIANDAYNO
Func _JULIANTODATE($IJDAY, $SSEP = "/")
	Local $IYEAR = Int($IJDAY / 1000)
	Local $IDAYS = Mod($IJDAY, 1000)
	Local $IMAXDAYS = 365
	If _DateIsLeapYear($IYEAR) Then $IMAXDAYS = 366
	If $IDAYS > $IMAXDAYS Then
		Return SetError(1, 0, "")
	EndIf
	Local $AIDAYSINMONTH = _DAYSINMONTH($IYEAR)
	Local $IMONTH = 1
	While $IDAYS > $AIDAYSINMONTH[$IMONTH]
		$IDAYS = $IDAYS - $AIDAYSINMONTH[$IMONTH]
		$IMONTH = $IMONTH + 1
	WEnd
	Return StringFormat("%04d%s%02d%s%02d", $IYEAR, $SSEP, $IMONTH, $SSEP, $IDAYS)
EndFunc   ;==>_JULIANTODATE
Func _Now()
	Return (_DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, 0))
EndFunc   ;==>_Now
Func _NowCalc()
	Return (@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC)
EndFunc   ;==>_NowCalc
Func _NowCalcDate()
	Return (@YEAR & "/" & @MON & "/" & @MDAY)
EndFunc   ;==>_NowCalcDate
Func _NowDate()
	Return (_DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY, 0))
EndFunc   ;==>_NowDate
Func _NowTime($STYPE = 3)
	If $STYPE < 3 Or $STYPE > 5 Then $STYPE = 3
	Return (_DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, $STYPE))
EndFunc   ;==>_NowTime
Func _SetDate($IDAY, $IMONTH = 0, $IYEAR = 0)
	If $IYEAR = 0 Then $IYEAR = @YEAR
	If $IMONTH = 0 Then $IMONTH = @MON
	If Not _DateIsValid($IYEAR & "/" & $IMONTH & "/" & $IDAY) Then Return 1
	Local $TSYSTEMTIME = DllStructCreate($TAGSYSTEMTIME)
	Local $LPSYSTEMTIME = DllStructGetPtr($TSYSTEMTIME)
	DllCall("kernel32.dll", "none", "GetLocalTime", "ptr", $LPSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, 0)
	DllStructSetData($TSYSTEMTIME, 4, $IDAY)
	If $IMONTH > 0 Then DllStructSetData($TSYSTEMTIME, 2, $IMONTH)
	If $IYEAR > 0 Then DllStructSetData($TSYSTEMTIME, 1, $IYEAR)
	Local $IRETVAL = _Date_Time_SetLocalTime($LPSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, 0)
	Return Int($IRETVAL)
EndFunc   ;==>_SetDate
Func _SetTime($IHOUR, $IMINUTE, $ISECOND = 0)
	If $IHOUR < 0 Or $IHOUR > 23 Then Return 1
	If $IMINUTE < 0 Or $IMINUTE > 59 Then Return 1
	If $ISECOND < 0 Or $ISECOND > 59 Then Return 1
	Local $TSYSTEMTIME = DllStructCreate($TAGSYSTEMTIME)
	Local $LPSYSTEMTIME = DllStructGetPtr($TSYSTEMTIME)
	DllCall("kernel32.dll", "none", "GetLocalTime", "ptr", $LPSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, 0)
	DllStructSetData($TSYSTEMTIME, 5, $IHOUR)
	DllStructSetData($TSYSTEMTIME, 6, $IMINUTE)
	If $ISECOND > 0 Then DllStructSetData($TSYSTEMTIME, 7, $ISECOND)
	Local $IRETVAL = _Date_Time_SetLocalTime($LPSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, 0)
	Return Int($IRETVAL)
EndFunc   ;==>_SetTime
Func _TicksToTime($ITICKS, ByRef $IHOURS, ByRef $IMINS, ByRef $ISECS)
	If Number($ITICKS) > 0 Then
		$ITICKS = Int($ITICKS / 1000)
		$IHOURS = Int($ITICKS / 3600)
		$ITICKS = Mod($ITICKS, 3600)
		$IMINS = Int($ITICKS / 60)
		$ISECS = Mod($ITICKS, 60)
		Return 1
	ElseIf Number($ITICKS) = 0 Then
		$IHOURS = 0
		$ITICKS = 0
		$IMINS = 0
		$ISECS = 0
		Return 1
	Else
		Return SetError(1, 0, 0)
	EndIf
EndFunc   ;==>_TicksToTime
Func _TimeToTicks($IHOURS = @HOUR, $IMINS = @MIN, $ISECS = @SEC)
	If StringIsInt($IHOURS) And StringIsInt($IMINS) And StringIsInt($ISECS) Then
		Local $ITICKS = 1000 * ((3600 * $IHOURS) + (60 * $IMINS) + $ISECS)
		Return $ITICKS
	Else
		Return SetError(1, 0, 0)
	EndIf
EndFunc   ;==>_TimeToTicks
Func _WeekNumberISO($IYEAR = @YEAR, $IMONTH = @MON, $IDAY = @MDAY)
	If $IDAY > 31 Or $IDAY < 1 Then
		Return SetError(1, 0, -1)
	ElseIf $IMONTH > 12 Or $IMONTH < 1 Then
		Return SetError(1, 0, -1)
	ElseIf $IYEAR < 1 Or $IYEAR > 2999 Then
		Return SetError(1, 0, -1)
	EndIf
	Local $IDOW = _DateToDayOfWeekISO($IYEAR, $IMONTH, $IDAY)
	Local $IDOW0101 = _DateToDayOfWeekISO($IYEAR, 1, 1)
	If ($IMONTH = 1 And 3 < $IDOW0101 And $IDOW0101 < 7 - ($IDAY - 1)) Then
		$IDOW = $IDOW0101 - 1
		$IDOW0101 = _DateToDayOfWeekISO($IYEAR - 1, 1, 1)
		$IMONTH = 12
		$IDAY = 31
		$IYEAR = $IYEAR - 1
	ElseIf ($IMONTH = 12 And 30 - ($IDAY - 1) < _DateToDayOfWeekISO($IYEAR + 1, 1, 1) And _DateToDayOfWeekISO($IYEAR + 1, 1, 1) < 4) Then
		Return 1
	EndIf
	Return Int((_DateToDayOfWeekISO($IYEAR, 1, 1) < 4) + 4 * ($IMONTH - 1) + (2 * ($IMONTH - 1) + ($IDAY - 1) + $IDOW0101 - $IDOW + 6) * 36 / 256)
EndFunc   ;==>_WeekNumberISO
Func _WEEKNUMBER($IYEAR = @YEAR, $IMONTH = @MON, $IDAY = @MDAY, $IWEEKSTART = 1)
	If $IDAY > 31 Or $IDAY < 1 Then
		Return SetError(1, 0, -1)
	ElseIf $IMONTH > 12 Or $IMONTH < 1 Then
		Return SetError(1, 0, -1)
	ElseIf $IYEAR < 1 Or $IYEAR > 2999 Then
		Return SetError(1, 0, -1)
	ElseIf $IWEEKSTART < 1 Or $IWEEKSTART > 2 Then
		Return SetError(2, 0, -1)
	EndIf
	Local $ISTARTWEEK1, $IENDWEEK1
	Local $IDOW0101 = _DateToDayOfWeekISO($IYEAR, 1, 1)
	Local $IDATE = $IYEAR & "/" & $IMONTH & "/" & $IDAY
	If $IWEEKSTART = 1 Then
		If $IDOW0101 = 6 Then
			$ISTARTWEEK1 = 0
		Else
			$ISTARTWEEK1 = -1 * $IDOW0101 - 1
		EndIf
		$IENDWEEK1 = $ISTARTWEEK1 + 6
	Else
		$ISTARTWEEK1 = $IDOW0101 * -1
		$IENDWEEK1 = $ISTARTWEEK1 + 6
	EndIf
	Local $ISTARTWEEK1NY
	Local $IENDWEEK1DATE = _DateAdd("d", $IENDWEEK1, $IYEAR & "/01/01")
	Local $IDOW0101NY = _DateToDayOfWeekISO($IYEAR + 1, 1, 1)
	If $IWEEKSTART = 1 Then
		If $IDOW0101NY = 6 Then
			$ISTARTWEEK1NY = 0
		Else
			$ISTARTWEEK1NY = -1 * $IDOW0101NY - 1
		EndIf
	Else
		$ISTARTWEEK1NY = $IDOW0101NY * -1
	EndIf
	Local $ISTARTWEEK1DATENY = _DateAdd("d", $ISTARTWEEK1NY, $IYEAR + 1 & "/01/01")
	Local $ICURRDATEDIFF = _DateDiff("d", $IENDWEEK1DATE, $IDATE) - 1
	Local $ICURRDATEDIFFNY = _DateDiff("d", $ISTARTWEEK1DATENY, $IDATE)
	If $ICURRDATEDIFF >= 0 And $ICURRDATEDIFFNY < 0 Then Return 2 + Int($ICURRDATEDIFF / 7)
	If $ICURRDATEDIFF < 0 Or $ICURRDATEDIFFNY >= 0 Then Return 1
EndFunc   ;==>_WEEKNUMBER
Func _DAYSINMONTH($IYEAR)
	Local $AIDAYS[13] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	If _DateIsLeapYear($IYEAR) Then $AIDAYS[2] = 29
	Return $AIDAYS
EndFunc   ;==>_DAYSINMONTH
Func __DATE_TIME_CLONESYSTEMTIME($PSYSTEMTIME)
	Local $TSYSTEMTIME1 = DllStructCreate($TAGSYSTEMTIME, $PSYSTEMTIME)
	Local $TSYSTEMTIME2 = DllStructCreate($TAGSYSTEMTIME)
	DllStructSetData($TSYSTEMTIME2, "Month", DllStructGetData($TSYSTEMTIME1, "Month"))
	DllStructSetData($TSYSTEMTIME2, "Day", DllStructGetData($TSYSTEMTIME1, "Day"))
	DllStructSetData($TSYSTEMTIME2, "Year", DllStructGetData($TSYSTEMTIME1, "Year"))
	DllStructSetData($TSYSTEMTIME2, "Hour", DllStructGetData($TSYSTEMTIME1, "Hour"))
	DllStructSetData($TSYSTEMTIME2, "Minute", DllStructGetData($TSYSTEMTIME1, "Minute"))
	DllStructSetData($TSYSTEMTIME2, "Second", DllStructGetData($TSYSTEMTIME1, "Second"))
	DllStructSetData($TSYSTEMTIME2, "MSeconds", DllStructGetData($TSYSTEMTIME1, "MSeconds"))
	DllStructSetData($TSYSTEMTIME2, "DOW", DllStructGetData($TSYSTEMTIME1, "DOW"))
	Return $TSYSTEMTIME2
EndFunc   ;==>__DATE_TIME_CLONESYSTEMTIME
Func _Date_Time_CompareFileTime($PFILETIME1, $PFILETIME2)
	Local $ARESULT = DllCall("kernel32.dll", "long", "CompareFileTime", "ptr", $PFILETIME1, "ptr", $PFILETIME2)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_Date_Time_CompareFileTime
Func _Date_Time_DOSDateTimeToFileTime($IFATDATE, $IFATTIME)
	Local $TTIME = DllStructCreate($TAGFILETIME)
	Local $PTIME = DllStructGetPtr($TTIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "DosDateTimeToFileTime", "word", $IFATDATE, "word", $IFATTIME, "ptr", $PTIME)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TTIME)
EndFunc   ;==>_Date_Time_DOSDateTimeToFileTime
Func _Date_Time_DOSDateToArray($IDOSDATE)
	Local $ADATE[3]
	$ADATE[0] = BitAND($IDOSDATE, 31)
	$ADATE[1] = BitAND(BitShift($IDOSDATE, 5), 15)
	$ADATE[2] = BitAND(BitShift($IDOSDATE, 9), 63) + 1980
	Return $ADATE
EndFunc   ;==>_Date_Time_DOSDateToArray
Func _Date_Time_DOSDateTimeToArray($IDOSDATE, $IDOSTIME)
	Local $ADATE[6]
	$ADATE[0] = BitAND($IDOSDATE, 31)
	$ADATE[1] = BitAND(BitShift($IDOSDATE, 5), 15)
	$ADATE[2] = BitAND(BitShift($IDOSDATE, 9), 63) + 1980
	$ADATE[5] = BitAND($IDOSTIME, 31) * 2
	$ADATE[4] = BitAND(BitShift($IDOSTIME, 5), 63)
	$ADATE[3] = BitAND(BitShift($IDOSTIME, 11), 31)
	Return $ADATE
EndFunc   ;==>_Date_Time_DOSDateTimeToArray
Func _Date_Time_DOSDateTimeToStr($IDOSDATE, $IDOSTIME)
	Local $ADATE = _Date_Time_DOSDateTimeToArray($IDOSDATE, $IDOSTIME)
	Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $ADATE[0], $ADATE[1], $ADATE[2], $ADATE[3], $ADATE[4], $ADATE[5])
EndFunc   ;==>_Date_Time_DOSDateTimeToStr
Func _Date_Time_DOSDateToStr($IDOSDATE)
	Local $ADATE = _Date_Time_DOSDateToArray($IDOSDATE)
	Return StringFormat("%02d/%02d/%04d", $ADATE[0], $ADATE[1], $ADATE[2])
EndFunc   ;==>_Date_Time_DOSDateToStr
Func _Date_Time_DOSTimeToArray($IDOSTIME)
	Local $ATIME[3]
	$ATIME[2] = BitAND($IDOSTIME, 31) * 2
	$ATIME[1] = BitAND(BitShift($IDOSTIME, 5), 63)
	$ATIME[0] = BitAND(BitShift($IDOSTIME, 11), 31)
	Return $ATIME
EndFunc   ;==>_Date_Time_DOSTimeToArray
Func _Date_Time_DOSTimeToStr($IDOSTIME)
	Local $ATIME = _Date_Time_DOSTimeToArray($IDOSTIME)
	Return StringFormat("%02d:%02d:%02d", $ATIME[0], $ATIME[1], $ATIME[2])
EndFunc   ;==>_Date_Time_DOSTimeToStr
Func _Date_Time_EncodeFileTime($IMONTH, $IDAY, $IYEAR, $IHOUR = 0, $IMINUTE = 0, $ISECOND = 0, $IMSECONDS = 0)
	Local $TSYSTEMTIME = _Date_Time_EncodeSystemTime($IMONTH, $IDAY, $IYEAR, $IHOUR, $IMINUTE, $ISECOND, $IMSECONDS)
	Return _Date_Time_SystemTimeToFileTime(DllStructGetPtr($TSYSTEMTIME))
EndFunc   ;==>_Date_Time_EncodeFileTime
Func _Date_Time_EncodeSystemTime($IMONTH, $IDAY, $IYEAR, $IHOUR = 0, $IMINUTE = 0, $ISECOND = 0, $IMSECONDS = 0)
	Local $TSYSTEMTIME = DllStructCreate($TAGSYSTEMTIME)
	DllStructSetData($TSYSTEMTIME, "Month", $IMONTH)
	DllStructSetData($TSYSTEMTIME, "Day", $IDAY)
	DllStructSetData($TSYSTEMTIME, "Year", $IYEAR)
	DllStructSetData($TSYSTEMTIME, "Hour", $IHOUR)
	DllStructSetData($TSYSTEMTIME, "Minute", $IMINUTE)
	DllStructSetData($TSYSTEMTIME, "Second", $ISECOND)
	DllStructSetData($TSYSTEMTIME, "MSeconds", $IMSECONDS)
	Return $TSYSTEMTIME
EndFunc   ;==>_Date_Time_EncodeSystemTime
Func _Date_Time_FileTimeToArray(ByRef $TFILETIME)
	If ((DllStructGetData($TFILETIME, 1) + DllStructGetData($TFILETIME, 2)) = 0) Then Return SetError(1, 0, 0)
	Local $TSYSTEMTIME = _Date_Time_FileTimeToSystemTime(DllStructGetPtr($TFILETIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return _Date_Time_SystemTimeToArray($TSYSTEMTIME)
EndFunc   ;==>_Date_Time_FileTimeToArray
Func _Date_Time_FileTimeToStr(ByRef $TFILETIME, $BFMT = 0)
	Local $ADATE = _Date_Time_FileTimeToArray($TFILETIME)
	If @error Then Return SetError(@error, @extended, "")
	If $BFMT Then
		Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $ADATE[2], $ADATE[1], $ADATE[0], $ADATE[3], $ADATE[4], $ADATE[5])
	Else
		Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $ADATE[0], $ADATE[1], $ADATE[2], $ADATE[3], $ADATE[4], $ADATE[5])
	EndIf
EndFunc   ;==>_Date_Time_FileTimeToStr
Func _Date_Time_FileTimeToDOSDateTime($PFILETIME)
	Local $ADATE[2]
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FileTimeToDosDateTime", "ptr", $PFILETIME, "word*", 0, "word*", 0)
	If @error Then Return SetError(@error, @extended, $ADATE)
	$ADATE[0] = $ARESULT[2]
	$ADATE[1] = $ARESULT[3]
	Return SetExtended($ARESULT[0], $ADATE)
EndFunc   ;==>_Date_Time_FileTimeToDOSDateTime
Func _Date_Time_FileTimeToLocalFileTime($PFILETIME)
	Local $TLOCAL = DllStructCreate($TAGFILETIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FileTimeToLocalFileTime", "ptr", $PFILETIME, "ptr", DllStructGetPtr($TLOCAL))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TLOCAL)
EndFunc   ;==>_Date_Time_FileTimeToLocalFileTime
Func _Date_Time_FileTimeToSystemTime($PFILETIME)
	Local $TSYSTTIME = DllStructCreate($TAGSYSTEMTIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FileTimeToSystemTime", "ptr", $PFILETIME, "ptr", DllStructGetPtr($TSYSTTIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TSYSTTIME)
EndFunc   ;==>_Date_Time_FileTimeToSystemTime
Func _Date_Time_GetFileTime($HFILE)
	Local $ADATE[3]
	$ADATE[0] = DllStructCreate($TAGFILETIME)
	$ADATE[1] = DllStructCreate($TAGFILETIME)
	$ADATE[2] = DllStructCreate($TAGFILETIME)
	Local $PCT = DllStructGetPtr($ADATE[0])
	Local $PLA = DllStructGetPtr($ADATE[1])
	Local $PLM = DllStructGetPtr($ADATE[2])
	Local $ARESULT = DllCall("Kernel32.dll", "bool", "GetFileTime", "handle", $HFILE, "ptr", $PCT, "ptr", $PLA, "ptr", $PLM)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $ADATE)
EndFunc   ;==>_Date_Time_GetFileTime
Func _Date_Time_GetLocalTime()
	Local $TSYSTTIME = DllStructCreate($TAGSYSTEMTIME)
	DllCall("kernel32.dll", "none", "GetLocalTime", "ptr", DllStructGetPtr($TSYSTTIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TSYSTTIME
EndFunc   ;==>_Date_Time_GetLocalTime
Func _Date_Time_GetSystemTime()
	Local $TSYSTTIME = DllStructCreate($TAGSYSTEMTIME)
	DllCall("kernel32.dll", "none", "GetSystemTime", "ptr", DllStructGetPtr($TSYSTTIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TSYSTTIME
EndFunc   ;==>_Date_Time_GetSystemTime
Func _Date_Time_GetSystemTimeAdjustment()
	Local $AINFO[3]
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetSystemTimeAdjustment", "dword*", 0, "dword*", 0, "bool*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	$AINFO[0] = $ARESULT[1]
	$AINFO[1] = $ARESULT[2]
	$AINFO[2] = $ARESULT[3] <> 0
	Return SetExtended($ARESULT[0], $AINFO)
EndFunc   ;==>_Date_Time_GetSystemTimeAdjustment
Func _Date_Time_GetSystemTimeAsFileTime()
	Local $TFILETIME = DllStructCreate($TAGFILETIME)
	DllCall("kernel32.dll", "none", "GetSystemTimeAsFileTime", "ptr", DllStructGetPtr($TFILETIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return $TFILETIME
EndFunc   ;==>_Date_Time_GetSystemTimeAsFileTime
Func _Date_Time_GetSystemTimes()
	Local $AINFO[3]
	$AINFO[0] = DllStructCreate($TAGFILETIME)
	$AINFO[1] = DllStructCreate($TAGFILETIME)
	$AINFO[2] = DllStructCreate($TAGFILETIME)
	Local $PIDLE = DllStructGetPtr($AINFO[0])
	Local $PKERNEL = DllStructGetPtr($AINFO[1])
	Local $PUSER = DllStructGetPtr($AINFO[2])
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetSystemTimes", "ptr", $PIDLE, "ptr", $PKERNEL, "ptr", $PUSER)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $AINFO)
EndFunc   ;==>_Date_Time_GetSystemTimes
Func _Date_Time_GetTickCount()
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetTickCount")
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>_Date_Time_GetTickCount
Func _Date_Time_GetTimeZoneInformation()
	Local $TTIMEZONE = DllStructCreate($TAGTIME_ZONE_INFORMATION)
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetTimeZoneInformation", "ptr", DllStructGetPtr($TTIMEZONE))
	If @error Or $ARESULT[0] = -1 Then Return SetError(@error, @extended, 0)
	Local $AINFO[8]
	$AINFO[0] = $ARESULT[0]
	$AINFO[1] = DllStructGetData($TTIMEZONE, "Bias")
	$AINFO[2] = _WinAPI_WideCharToMultiByte(DllStructGetPtr($TTIMEZONE, "StdName"))
	$AINFO[3] = __DATE_TIME_CLONESYSTEMTIME(DllStructGetPtr($TTIMEZONE, "StdDate"))
	$AINFO[4] = DllStructGetData($TTIMEZONE, "StdBias")
	$AINFO[5] = _WinAPI_WideCharToMultiByte(DllStructGetPtr($TTIMEZONE, "DayName"))
	$AINFO[6] = __DATE_TIME_CLONESYSTEMTIME(DllStructGetPtr($TTIMEZONE, "DayDate"))
	$AINFO[7] = DllStructGetData($TTIMEZONE, "DayBias")
	Return $AINFO
EndFunc   ;==>_Date_Time_GetTimeZoneInformation
Func _Date_Time_LocalFileTimeToFileTime($PLOCALTIME)
	Local $TFILETIME = DllStructCreate($TAGFILETIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "LocalFileTimeToFileTime", "ptr", $PLOCALTIME, "ptr", DllStructGetPtr($TFILETIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TFILETIME)
EndFunc   ;==>_Date_Time_LocalFileTimeToFileTime
Func _Date_Time_SetFileTime($HFILE, $PCREATETIME, $PLASTACCESS, $PLASTWRITE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetFileTime", "handle", $HFILE, "ptr", $PCREATETIME, "ptr", $PLASTACCESS, "ptr", $PLASTWRITE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Date_Time_SetFileTime
Func _Date_Time_SetLocalTime($PSYSTEMTIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetLocalTime", "ptr", $PSYSTEMTIME)
	If @error Or Not $ARESULT[0] Then Return SetError(@error, @extended, False)
	$ARESULT = DllCall("kernel32.dll", "bool", "SetLocalTime", "ptr", $PSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Date_Time_SetLocalTime
Func _Date_Time_SetSystemTime($PSYSTEMTIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetSystemTime", "ptr", $PSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0]
EndFunc   ;==>_Date_Time_SetSystemTime
Func _Date_Time_SetSystemTimeAdjustment($IADJUSTMENT, $FDISABLED)
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, False)
	_Security__SetPrivilege($HTOKEN, "SeSystemtimePrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = False
	If Not @error Then
		Local $ARESULT = DllCall("kernel32.dll", "bool", "SetSystemTimeAdjustment", "dword", $IADJUSTMENT, "bool", $FDISABLED)
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		ElseIf $ARESULT[0] Then
			$IRET = True
		Else
			$IERROR = 1
			$ILASTERROR = _WinAPI_GetLastError()
		EndIf
		_Security__SetPrivilege($HTOKEN, "SeSystemtimePrivilege", False)
		If @error Then $IERROR = 2
	EndIf
	_WinAPI_CloseHandle($HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>_Date_Time_SetSystemTimeAdjustment
Func _Date_Time_SetTimeZoneInformation($IBIAS, $SSTDNAME, $TSTDDATE, $ISTDBIAS, $SDAYNAME, $TDAYDATE, $IDAYBIAS)
	Local $TSTDNAME = _WinAPI_MultiByteToWideChar($SSTDNAME)
	Local $TDAYNAME = _WinAPI_MultiByteToWideChar($SDAYNAME)
	Local $TZONEINFO = DllStructCreate($TAGTIME_ZONE_INFORMATION)
	DllStructSetData($TZONEINFO, "Bias", $IBIAS)
	DllStructSetData($TZONEINFO, "StdName", DllStructGetData($TSTDNAME, 1))
	_MemMoveMemory(DllStructGetPtr($TSTDDATE), DllStructGetPtr($TZONEINFO, "StdDate"), DllStructGetSize($TSTDDATE))
	DllStructSetData($TZONEINFO, "StdBias", $ISTDBIAS)
	DllStructSetData($TZONEINFO, "DayName", DllStructGetData($TDAYNAME, 1))
	_MemMoveMemory(DllStructGetPtr($TDAYDATE), DllStructGetPtr($TZONEINFO, "DayDate"), DllStructGetSize($TDAYDATE))
	DllStructSetData($TZONEINFO, "DayBias", $IDAYBIAS)
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, False)
	_Security__SetPrivilege($HTOKEN, "SeSystemtimePrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = False
	If Not @error Then
		Local $ARESULT = DllCall("kernel32.dll", "bool", "SetTimeZoneInformation", "ptr", DllStructGetPtr($TZONEINFO))
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		ElseIf $ARESULT[0] Then
			$ILASTERROR = 0
			$IRET = True
		Else
			$IERROR = 1
			$ILASTERROR = _WinAPI_GetLastError()
		EndIf
		_Security__SetPrivilege($HTOKEN, "SeSystemtimePrivilege", False)
		If @error Then $IERROR = 2
	EndIf
	_WinAPI_CloseHandle($HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>_Date_Time_SetTimeZoneInformation
Func _Date_Time_SystemTimeToArray(ByRef $TSYSTEMTIME)
	Local $AINFO[8]
	$AINFO[0] = DllStructGetData($TSYSTEMTIME, "Month")
	$AINFO[1] = DllStructGetData($TSYSTEMTIME, "Day")
	$AINFO[2] = DllStructGetData($TSYSTEMTIME, "Year")
	$AINFO[3] = DllStructGetData($TSYSTEMTIME, "Hour")
	$AINFO[4] = DllStructGetData($TSYSTEMTIME, "Minute")
	$AINFO[5] = DllStructGetData($TSYSTEMTIME, "Second")
	$AINFO[6] = DllStructGetData($TSYSTEMTIME, "MSeconds")
	$AINFO[7] = DllStructGetData($TSYSTEMTIME, "DOW")
	Return $AINFO
EndFunc   ;==>_Date_Time_SystemTimeToArray
Func _Date_Time_SystemTimeToDateStr(ByRef $TSYSTEMTIME, $BFMT = 0)
	Local $AINFO = _Date_Time_SystemTimeToArray($TSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, "")
	If $BFMT Then
		Return StringFormat("%04d/%02d/%02d", $AINFO[2], $AINFO[0], $AINFO[1])
	Else
		Return StringFormat("%02d/%02d/%04d", $AINFO[0], $AINFO[1], $AINFO[2])
	EndIf
EndFunc   ;==>_Date_Time_SystemTimeToDateStr
Func _Date_Time_SystemTimeToDateTimeStr(ByRef $TSYSTEMTIME, $BFMT = 0)
	Local $AINFO = _Date_Time_SystemTimeToArray($TSYSTEMTIME)
	If @error Then Return SetError(@error, @extended, "")
	If $BFMT Then
		Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $AINFO[2], $AINFO[0], $AINFO[1], $AINFO[3], $AINFO[4], $AINFO[5])
	Else
		Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $AINFO[0], $AINFO[1], $AINFO[2], $AINFO[3], $AINFO[4], $AINFO[5])
	EndIf
EndFunc   ;==>_Date_Time_SystemTimeToDateTimeStr
Func _Date_Time_SystemTimeToFileTime($PSYSTEMTIME)
	Local $TFILETIME = DllStructCreate($TAGFILETIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SystemTimeToFileTime", "ptr", $PSYSTEMTIME, "ptr", DllStructGetPtr($TFILETIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TFILETIME)
EndFunc   ;==>_Date_Time_SystemTimeToFileTime
Func _Date_Time_SystemTimeToTimeStr(ByRef $TSYSTEMTIME)
	Local $AINFO = _Date_Time_SystemTimeToArray($TSYSTEMTIME)
	Return StringFormat("%02d:%02d:%02d", $AINFO[3], $AINFO[4], $AINFO[5])
EndFunc   ;==>_Date_Time_SystemTimeToTimeStr
Func _Date_Time_SystemTimeToTzSpecificLocalTime($PUTC, $PTIMEZONE = 0)
	Local $TLOCALTIME = DllStructCreate($TAGSYSTEMTIME)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SystemTimeToTzSpecificLocalTime", "ptr", $PTIMEZONE, "ptr", $PUTC, "ptr", DllStructGetPtr($TLOCALTIME))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TLOCALTIME)
EndFunc   ;==>_Date_Time_SystemTimeToTzSpecificLocalTime
Func _Date_Time_TzSpecificLocalTimeToSystemTime($PLOCALTIME, $PTIMEZONE = 0)
	Local $TUTC = DllStructCreate($TAGSYSTEMTIME)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "TzSpecificLocalTimeToSystemTime", "ptr", $PTIMEZONE, "ptr", $PLOCALTIME, "ptr", DllStructGetPtr($TUTC))
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $TUTC)
EndFunc   ;==>_Date_Time_TzSpecificLocalTimeToSystemTime
Func _GetIP()
	Local $IP, $T_IP
	If InetGet("https://checkip.dyndns.org/?rnd1=" & Random(1, 65536) & "&rnd2=" & Random(1, 65536), @TempDir & "\~ip.tmp") Then
		$IP = FileRead(@TempDir & "\~ip.tmp", FileGetSize(@TempDir & "\~ip.tmp"))
		FileDelete(@TempDir & "\~ip.tmp")
		$IP = StringTrimLeft($IP, StringInStr($IP, ":") + 1)
		$IP = StringTrimRight($IP, StringLen($IP) - StringInStr($IP, "/") + 2)
		$T_IP = StringSplit($IP, ".")
		If $T_IP[0] = 4 And StringIsDigit($T_IP[1]) And StringIsDigit($T_IP[2]) And StringIsDigit($T_IP[3]) And StringIsDigit($T_IP[4]) Then
			Return $IP
		EndIf
	EndIf
	If InetGet("https://www.whatismyip.com/?rnd1=" & Random(1, 65536) & "&rnd2=" & Random(1, 65536), @TempDir & "\~ip.tmp") Then
		$IP = FileRead(@TempDir & "\~ip.tmp", FileGetSize(@TempDir & "\~ip.tmp"))
		FileDelete(@TempDir & "\~ip.tmp")
		$IP = StringTrimLeft($IP, StringInStr($IP, "Your ip is") + 10)
		$IP = StringLeft($IP, StringInStr($IP, " ") - 1)
		$IP = StringStripWS($IP, 8)
		$T_IP = StringSplit($IP, ".")
		If $T_IP[0] = 4 And StringIsDigit($T_IP[1]) And StringIsDigit($T_IP[2]) And StringIsDigit($T_IP[3]) And StringIsDigit($T_IP[4]) Then
			Return $IP
		EndIf
	EndIf
	Return SetError(1, 0, -1)
EndFunc   ;==>_GetIP
Func _INetExplorerCapable($S_IESTRING)
	If StringLen($S_IESTRING) <= 0 Then Return SetError(1, 0, "")
	Local $S_IERETURN
	Local $N_IECHAR
	For $I_IECOUNT = 1 To StringLen($S_IESTRING)
		$N_IECHAR = "0x" & Hex(Asc(StringMid($S_IESTRING, $I_IECOUNT, 1)), 2)
		If $N_IECHAR < 33 Or $N_IECHAR = 37 Or $N_IECHAR = 47 Or $N_IECHAR > 127 Then
			$S_IERETURN = $S_IERETURN & "%" & StringRight($N_IECHAR, 2)
		Else
			$S_IERETURN = $S_IERETURN & Chr($N_IECHAR)
		EndIf
	Next
	Return $S_IERETURN
EndFunc   ;==>_INetExplorerCapable
Func _INetGetSource($S_URL, $BSTRING = True)
	Local $SSTRING = InetRead($S_URL, 1)
	Local $NERROR = @error, $NEXTENDED = @extended
	If $BSTRING Then $SSTRING = BinaryToString($SSTRING)
	Return SetError($NERROR, $NEXTENDED, $SSTRING)
EndFunc   ;==>_INetGetSource
Func _INetMail($S_MAILTO, $S_MAILSUBJECT, $S_MAILBODY)
	Local $PREV = Opt("ExpandEnvStrings", 1)
	Local $VAR = RegRead("HKCR\mailto\shell\open\command", "")
	Local $RET = Run(StringReplace($VAR, "%1", _INetExplorerCapable("mailto:" & $S_MAILTO & "?subject=" & $S_MAILSUBJECT & "&body=" & $S_MAILBODY)))
	Local $NERROR = @error, $NEXTENDED = @extended
	Opt("ExpandEnvStrings", $PREV)
	Return SetError($NERROR, $NEXTENDED, $RET)
EndFunc   ;==>_INetMail
Func _INetSmtpMail($S_SMTPSERVER, $S_FROMNAME, $S_FROMADDRESS, $S_TOADDRESS, $S_SUBJECT = "", $AS_BODY = "", $S_HELO = "", $S_FIRST = " ", $B_TRACE = 0)
	If $S_SMTPSERVER = "" Or $S_FROMADDRESS = "" Or $S_TOADDRESS = "" Or $S_FROMNAME = "" Or StringLen($S_FROMNAME) > 256 Then Return SetError(1, 0, 0)
	If $S_HELO = "" Then $S_HELO = @ComputerName
	If TCPStartup() = 0 Then Return SetError(2, 0, 0)
	Local $S_IPADDRESS, $I_COUNT
	StringRegExp($S_SMTPSERVER, "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)")
	If @extended Then
		$S_IPADDRESS = $S_SMTPSERVER
	Else
		$S_IPADDRESS = TCPNameToIP($S_SMTPSERVER)
	EndIf
	If $S_IPADDRESS = "" Then
		TCPShutdown()
		Return SetError(3, 0, 0)
	EndIf
	Local $V_SOCKET = TCPConnect($S_IPADDRESS, 25)
	If $V_SOCKET = -1 Then
		TCPShutdown()
		Return SetError(4, 0, 0)
	EndIf
	Local $S_SEND[6], $S_REPLYCODE[6]
	$S_SEND[0] = "HELO " & $S_HELO & @CRLF
	If StringLeft($S_HELO, 5) = "EHLO " Then $S_SEND[0] = $S_HELO & @CRLF
	$S_REPLYCODE[0] = "250"
	$S_SEND[1] = "MAIL FROM: <" & $S_FROMADDRESS & ">" & @CRLF
	$S_REPLYCODE[1] = "250"
	$S_SEND[2] = "RCPT TO: <" & $S_TOADDRESS & ">" & @CRLF
	$S_REPLYCODE[2] = "250"
	$S_SEND[3] = "DATA" & @CRLF
	$S_REPLYCODE[3] = "354"
	Local $ARESULT = _Date_Time_GetTimeZoneInformation()
	Local $BIAS = -$ARESULT[1] / 60
	Local $BIASH = Int($BIAS)
	Local $BIASM = 0
	If $BIASH <> $BIAS Then $BIASM = Abs($BIAS - $BIASH) * 60
	$BIAS = StringFormat(" (%+.2d%.2d)", $BIASH, $BIASM)
	$S_SEND[4] = "From:" & $S_FROMNAME & "<" & $S_FROMADDRESS & ">" & @CRLF & "To:" & "<" & $S_TOADDRESS & ">" & @CRLF & "Subject:" & $S_SUBJECT & @CRLF & "Mime-Version: 1.0" & @CRLF & "Date: " & _DateDayOfWeek(@WDAY, 1) & ", " & @MDAY & " " & _DateToMonth(@MON, 1) & " " & @YEAR & " " & @HOUR & ":" & @MIN & ":" & @SEC & $BIAS & @CRLF & "Content-Type: text/plain; charset=US-ASCII" & @CRLF & @CRLF
	$S_REPLYCODE[4] = ""
	$S_SEND[5] = @CRLF & "." & @CRLF
	$S_REPLYCODE[5] = "250"
	If __SMTPSEND($V_SOCKET, $S_SEND[0], $S_REPLYCODE[0], $B_TRACE, "220", $S_FIRST) Then Return SetError(50, 0, 0)
	For $I_COUNT = 1 To UBound($S_SEND) - 2
		If __SMTPSEND($V_SOCKET, $S_SEND[$I_COUNT], $S_REPLYCODE[$I_COUNT], $B_TRACE) Then Return SetError(50 + $I_COUNT, 0, 0)
	Next
	For $I_COUNT = 0 To UBound($AS_BODY) - 1
		If StringLeft($AS_BODY[$I_COUNT], 1) = "." Then $AS_BODY[$I_COUNT] = "." & $AS_BODY[$I_COUNT]
		If __SMTPSEND($V_SOCKET, $AS_BODY[$I_COUNT] & @CRLF, "", $B_TRACE) Then Return SetError(500 + $I_COUNT, 0, 0)
	Next
	$I_COUNT = UBound($S_SEND) - 1
	If __SMTPSEND($V_SOCKET, $S_SEND[$I_COUNT], $S_REPLYCODE[$I_COUNT], $B_TRACE) Then Return SetError(5000, 0, 0)
	TCPCloseSocket($V_SOCKET)
	TCPShutdown()
	Return 1
EndFunc   ;==>_INetSmtpMail
Func __SMTPTRACE($STR, $TIMEOUT = 0)
	Local $W_TITLE = "SMTP trace"
	Local $S_SMTPTRACE = ControlGetText($W_TITLE, "", "Static1")
	$STR = StringLeft(StringReplace($STR, @CRLF, ""), 70)
	$S_SMTPTRACE &= @HOUR & ":" & @MIN & ":" & @SEC & " " & $STR & @LF
	If WinExists($W_TITLE) Then
		ControlSetText($W_TITLE, "", "Static1", $S_SMTPTRACE)
	Else
		SplashTextOn($W_TITLE, $S_SMTPTRACE, 400, 500, 500, 100, 4 + 16, "", 8)
	EndIf
	If $TIMEOUT Then Sleep($TIMEOUT * 1000)
EndFunc   ;==>__SMTPTRACE
Func __SMTPSEND($V_SOCKET, $S_SEND, $S_REPLYCODE, $B_TRACE, $S_INTREPLY = "", $S_FIRST = "")
	Local $S_RECEIVE, $I, $TIMER
	If $B_TRACE Then __SMTPTRACE($S_SEND)
	If $S_INTREPLY <> "" Then
		If $S_FIRST <> -1 Then
			If TCPSend($V_SOCKET, $S_FIRST) = 0 Then
				TCPCloseSocket($V_SOCKET)
				TCPShutdown()
				Return 1
			EndIf
		EndIf
		$S_RECEIVE = ""
		$TIMER = TimerInit()
		While StringLeft($S_RECEIVE, StringLen($S_INTREPLY)) <> $S_INTREPLY And TimerDiff($TIMER) < 45000
			$S_RECEIVE = TCPRecv($V_SOCKET, 1000)
			If $B_TRACE And $S_RECEIVE <> "" Then __SMTPTRACE("intermediate->" & $S_RECEIVE)
		WEnd
	EndIf
	If TCPSend($V_SOCKET, $S_SEND) = 0 Then
		TCPCloseSocket($V_SOCKET)
		TCPShutdown()
		Return 1
	EndIf
	$TIMER = TimerInit()
	$S_RECEIVE = ""
	While $S_RECEIVE = "" And TimerDiff($TIMER) < 45000
		$I += 1
		$S_RECEIVE = TCPRecv($V_SOCKET, 1000)
		If $S_REPLYCODE = "" Then ExitLoop
	WEnd
	If $S_REPLYCODE <> "" Then
		If $B_TRACE Then __SMTPTRACE($I & " <- " & $S_RECEIVE)
		If StringLeft($S_RECEIVE, StringLen($S_REPLYCODE)) <> $S_REPLYCODE Then
			TCPCloseSocket($V_SOCKET)
			TCPShutdown()
			If $B_TRACE Then __SMTPTRACE("<-> " & $S_REPLYCODE, 5)
			Return 2
		EndIf
	EndIf
	Return 0
EndFunc   ;==>__SMTPSEND
Func _TCPIpToName($SIP, $IOPTION = Default, $HDLL_WS2_32 = Default)
	Local $INADDR_NONE = -1, $AF_INET = 2, $SSEPARATOR = @CR
	If $IOPTION = Default Then $IOPTION = 0
	If $HDLL_WS2_32 = Default Then $HDLL_WS2_32 = "ws2_32.dll"
	Local $VADLLCALL = DllCall($HDLL_WS2_32, "ulong", "inet_addr", "STR", $SIP)
	If @error Then Return SetError(1, 0, "")
	Local $VBINIP = $VADLLCALL[0]
	If $VBINIP = $INADDR_NONE Then Return SetError(2, 0, "")
	$VADLLCALL = DllCall($HDLL_WS2_32, "ptr", "gethostbyaddr", "ptr*", $VBINIP, "int", 4, "int", $AF_INET)
	If @error Then Return SetError(3, 0, "")
	Local $VPTRHOSTENT = $VADLLCALL[0]
	If $VPTRHOSTENT = 0 Then
		$VADLLCALL = DllCall($HDLL_WS2_32, "int", "WSAGetLastError")
		If @error Then Return SetError(5, 0, "")
		Return SetError(4, $VADLLCALL[0], "")
	EndIf
	Local $VHOSTENT = DllStructCreate("ptr;ptr;short;short;ptr", $VPTRHOSTENT)
	Local $SHOSTNAMES = __TCPIPTONAME_SZSTRINGREAD(DllStructGetData($VHOSTENT, 1))
	If @error Then Return SetError(6, 0, $SHOSTNAMES)
	If $IOPTION = 1 Then
		Local $VH_ALIASES
		$SHOSTNAMES &= $SSEPARATOR
		For $I = 0 To 63
			$VH_ALIASES = DllStructCreate("ptr", DllStructGetData($VHOSTENT, 2) + ($I * 4))
			If DllStructGetData($VH_ALIASES, 1) = 0 Then ExitLoop
			$SHOSTNAMES &= __TCPIPTONAME_SZSTRINGREAD(DllStructGetData($VH_ALIASES, 1))
			If @error Then
				SetError(7)
				ExitLoop
			EndIf
		Next
		Return StringSplit(StringStripWS($SHOSTNAMES, 2), @CR)
	Else
		Return $SHOSTNAMES
	EndIf
EndFunc   ;==>_TCPIpToName
Func __TCPIPTONAME_SZSTRINGREAD($ISZPTR, $ILEN = -1)
	Local $ASTRLEN, $VSZSTRING
	If $ISZPTR < 1 Then Return ""
	If $ILEN < 0 Then
		$ASTRLEN = DllCall("msvcrt.dll", "ulong_ptr:cdecl", "strlen", "ptr", $ISZPTR)
		If @error Then Return SetError(1, 0, "")
		$ILEN = $ASTRLEN[0] + 1
	EndIf
	$VSZSTRING = DllStructCreate("char[" & $ILEN & "]", $ISZPTR)
	If @error Then Return SetError(2, 0, "")
	Return SetExtended($ILEN, DllStructGetData($VSZSTRING, 1))
EndFunc   ;==>__TCPIPTONAME_SZSTRINGREAD
Func _ArrayAdd(ByRef $AVARRAY, $VVALUE)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, -1)
	Local $IUBOUND = UBound($AVARRAY)
	ReDim $AVARRAY[$IUBOUND + 1]
	$AVARRAY[$IUBOUND] = $VVALUE
	Return $IUBOUND
EndFunc   ;==>_ArrayAdd
Func _ArrayBinarySearch(Const ByRef $AVARRAY, $VVALUE, $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(5, 0, -1)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(4, 0, -1)
	Local $IMID = Int(($IEND + $ISTART) / 2)
	If $AVARRAY[$ISTART] > $VVALUE Or $AVARRAY[$IEND] < $VVALUE Then Return SetError(2, 0, -1)
	While $ISTART <= $IMID And $VVALUE <> $AVARRAY[$IMID]
		If $VVALUE < $AVARRAY[$IMID] Then
			$IEND = $IMID - 1
		Else
			$ISTART = $IMID + 1
		EndIf
		$IMID = Int(($IEND + $ISTART) / 2)
	WEnd
	If $ISTART > $IEND Then Return SetError(3, 0, -1)
	Return $IMID
EndFunc   ;==>_ArrayBinarySearch
Func _ArrayCombinations(ByRef $AVARRAY, $ISET, $SDELIM = "")
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $IN = UBound($AVARRAY)
	Local $IR = $ISET
	Local $AIDX[$IR]
	For $I = 0 To $IR - 1
		$AIDX[$I] = $I
	Next
	Local $ITOTAL = __ARRAY_COMBINATIONS($IN, $IR)
	Local $ILEFT = $ITOTAL
	Local $ARESULT[$ITOTAL + 1]
	$ARESULT[0] = $ITOTAL
	Local $ICOUNT = 1
	While $ILEFT > 0
		__ARRAY_GETNEXT($IN, $IR, $ILEFT, $ITOTAL, $AIDX)
		For $I = 0 To $ISET - 1
			$ARESULT[$ICOUNT] &= $AVARRAY[$AIDX[$I]] & $SDELIM
		Next
		If $SDELIM <> "" Then $ARESULT[$ICOUNT] = StringTrimRight($ARESULT[$ICOUNT], 1)
		$ICOUNT += 1
	WEnd
	Return $ARESULT
EndFunc   ;==>_ArrayCombinations
Func _ArrayConcatenate(ByRef $AVARRAYTARGET, Const ByRef $AVARRAYSOURCE, $ISTART = 0)
	If Not IsArray($AVARRAYTARGET) Then Return SetError(1, 0, 0)
	If Not IsArray($AVARRAYSOURCE) Then Return SetError(2, 0, 0)
	If UBound($AVARRAYTARGET, 0) <> 1 Then
		If UBound($AVARRAYSOURCE, 0) <> 1 Then Return SetError(5, 0, 0)
		Return SetError(3, 0, 0)
	EndIf
	If UBound($AVARRAYSOURCE, 0) <> 1 Then Return SetError(4, 0, 0)
	Local $IUBOUNDTARGET = UBound($AVARRAYTARGET) - $ISTART, $IUBOUNDSOURCE = UBound($AVARRAYSOURCE)
	ReDim $AVARRAYTARGET[$IUBOUNDTARGET + $IUBOUNDSOURCE]
	For $I = $ISTART To $IUBOUNDSOURCE - 1
		$AVARRAYTARGET[$IUBOUNDTARGET + $I] = $AVARRAYSOURCE[$I]
	Next
	Return $IUBOUNDTARGET + $IUBOUNDSOURCE
EndFunc   ;==>_ArrayConcatenate
Func _ARRAYCREATE($V_0, $V_1 = 0, $V_2 = 0, $V_3 = 0, $V_4 = 0, $V_5 = 0, $V_6 = 0, $V_7 = 0, $V_8 = 0, $V_9 = 0, $V_10 = 0, $V_11 = 0, $V_12 = 0, $V_13 = 0, $V_14 = 0, $V_15 = 0, $V_16 = 0, $V_17 = 0, $V_18 = 0, $V_19 = 0, $V_20 = 0)
	Local $AV_ARRAY[21] = [$V_0, $V_1, $V_2, $V_3, $V_4, $V_5, $V_6, $V_7, $V_8, $V_9, $V_10, $V_11, $V_12, $V_13, $V_14, $V_15, $V_16, $V_17, $V_18, $V_19, $V_20]
	ReDim $AV_ARRAY[@NumParams]
	Return $AV_ARRAY
EndFunc   ;==>_ARRAYCREATE
Func _ArrayDelete(ByRef $AVARRAY, $IELEMENT)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	Local $IUBOUND = UBound($AVARRAY, 1) - 1
	If Not $IUBOUND Then
		$AVARRAY = ""
		Return 0
	EndIf
	If $IELEMENT < 0 Then $IELEMENT = 0
	If $IELEMENT > $IUBOUND Then $IELEMENT = $IUBOUND
	Switch UBound($AVARRAY, 0)
		Case 1
			For $I = $IELEMENT To $IUBOUND - 1
				$AVARRAY[$I] = $AVARRAY[$I + 1]
			Next
			ReDim $AVARRAY[$IUBOUND]
		Case 2
			Local $ISUBMAX = UBound($AVARRAY, 2) - 1
			For $I = $IELEMENT To $IUBOUND - 1
				For $J = 0 To $ISUBMAX
					$AVARRAY[$I][$J] = $AVARRAY[$I + 1][$J]
				Next
			Next
			ReDim $AVARRAY[$IUBOUND][$ISUBMAX + 1]
		Case Else
			Return SetError(3, 0, 0)
	EndSwitch
	Return $IUBOUND
EndFunc   ;==>_ArrayDelete
Func _ArrayDisplay(Const ByRef $AVARRAY, $STITLE = "Array: ListView Display", $IITEMLIMIT = -1, $ITRANSPOSE = 0, $SSEPARATOR = "", $SREPLACE = "|", $SHEADER = "")
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	Local $IDIMENSION = UBound($AVARRAY, 0), $IUBOUND = UBound($AVARRAY, 1) - 1, $ISUBMAX = UBound($AVARRAY, 2) - 1
	If $IDIMENSION > 2 Then Return SetError(2, 0, 0)
	If $SSEPARATOR = "" Then $SSEPARATOR = Chr(124)
	If _ArraySearch($AVARRAY, $SSEPARATOR, 0, 0, 0, 1) <> -1 Then
		For $X = 1 To 255
			If $X >= 32 And $X <= 127 Then ContinueLoop
			Local $SFIND = _ArraySearch($AVARRAY, Chr($X), 0, 0, 0, 1)
			If $SFIND = -1 Then
				$SSEPARATOR = Chr($X)
				ExitLoop
			EndIf
		Next
	EndIf
	Local $VTMP, $IBUFFER = 64
	Local $ICOLLIMIT = 250
	Local $IONEVENTMODE = Opt("GUIOnEventMode", 0), $SDATASEPARATORCHAR = Opt("GUIDataSeparatorChar", $SSEPARATOR)
	If $ISUBMAX < 0 Then $ISUBMAX = 0
	If $ITRANSPOSE Then
		$VTMP = $IUBOUND
		$IUBOUND = $ISUBMAX
		$ISUBMAX = $VTMP
	EndIf
	If $ISUBMAX > $ICOLLIMIT Then $ISUBMAX = $ICOLLIMIT
	If $IITEMLIMIT < 1 Then $IITEMLIMIT = $IUBOUND
	If $IUBOUND > $IITEMLIMIT Then $IUBOUND = $IITEMLIMIT
	If $SHEADER = "" Then
		$SHEADER = "Row  "
		For $I = 0 To $ISUBMAX
			$SHEADER &= $SSEPARATOR & "Col " & $I
		Next
	EndIf
	Local $AVARRAYTEXT[$IUBOUND + 1]
	For $I = 0 To $IUBOUND
		$AVARRAYTEXT[$I] = "[" & $I & "]"
		For $J = 0 To $ISUBMAX
			If $IDIMENSION = 1 Then
				If $ITRANSPOSE Then
					$VTMP = $AVARRAY[$J]
				Else
					$VTMP = $AVARRAY[$I]
				EndIf
			Else
				If $ITRANSPOSE Then
					$VTMP = $AVARRAY[$J][$I]
				Else
					$VTMP = $AVARRAY[$I][$J]
				EndIf
			EndIf
			$VTMP = StringReplace($VTMP, $SSEPARATOR, $SREPLACE, 0, 1)
			$AVARRAYTEXT[$I] &= $SSEPARATOR & $VTMP
			$VTMP = StringLen($VTMP)
			If $VTMP > $IBUFFER Then $IBUFFER = $VTMP
		Next
	Next
	$IBUFFER += 1
	Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
	Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
	Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
	Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
	Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
	Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = -3
	Local Const $_ARRAYCONSTANT_LVIF_PARAM = 4
	Local Const $_ARRAYCONSTANT_LVIF_TEXT = 1
	Local Const $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH = (4096 + 29)
	Local Const $_ARRAYCONSTANT_LVM_GETITEMCOUNT = (4096 + 4)
	Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = (4096 + 44)
	Local Const $_ARRAYCONSTANT_LVM_INSERTITEMW = (4096 + 77)
	Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = (4096 + 54)
	Local Const $_ARRAYCONSTANT_LVM_SETITEMW = (4096 + 76)
	Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 32
	Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 1
	Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 8
	Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 512
	Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 65536
	Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 131072
	Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 262144
	Local Const $_ARRAYCONSTANT_TAGLVITEM = "int Mask;int Item;int SubItem;int State;int StateMask;ptr Text;int TextMax;int Image;int Param;int Indent;int GroupID;int Columns;ptr pColumns"
	Local $IADDMASK = BitOR($_ARRAYCONSTANT_LVIF_TEXT, $_ARRAYCONSTANT_LVIF_PARAM)
	Local $TBUFFER = DllStructCreate("wchar Text[" & $IBUFFER & "]"), $PBUFFER = DllStructGetPtr($TBUFFER)
	Local $TITEM = DllStructCreate($_ARRAYCONSTANT_TAGLVITEM), $PITEM = DllStructGetPtr($TITEM)
	DllStructSetData($TITEM, "Param", 0)
	DllStructSetData($TITEM, "Text", $PBUFFER)
	DllStructSetData($TITEM, "TextMax", $IBUFFER)
	Local $IWIDTH = 640, $IHEIGHT = 480
	Local $HGUI = GUICreate($STITLE, $IWIDTH, $IHEIGHT, Default, Default, BitOR($_ARRAYCONSTANT_WS_SIZEBOX, $_ARRAYCONSTANT_WS_MINIMIZEBOX, $_ARRAYCONSTANT_WS_MAXIMIZEBOX))
	Local $AIGUISIZE = WinGetClientSize($HGUI)
	Local $HLISTVIEW = GUICtrlCreateListView($SHEADER, 0, 0, $AIGUISIZE[0], $AIGUISIZE[1] - 26, $_ARRAYCONSTANT_LVS_SHOWSELALWAYS)
	Local $HCOPY = GUICtrlCreateButton("Copy Selected", 3, $AIGUISIZE[1] - 23, $AIGUISIZE[0] - 6, 20)
	GUICtrlSetResizing($HLISTVIEW, $_ARRAYCONSTANT_GUI_DOCKBORDERS)
	GUICtrlSetResizing($HCOPY, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
	GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_GRIDLINES, $_ARRAYCONSTANT_LVS_EX_GRIDLINES)
	GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT)
	GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE)
	Local $AITEM
	For $I = 0 To $IUBOUND
		If GUICtrlCreateListViewItem($AVARRAYTEXT[$I], $HLISTVIEW) = 0 Then
			$AITEM = StringSplit($AVARRAYTEXT[$I], $SSEPARATOR)
			DllStructSetData($TBUFFER, "Text", $AITEM[1])
			DllStructSetData($TITEM, "Item", $I)
			DllStructSetData($TITEM, "SubItem", 0)
			DllStructSetData($TITEM, "Mask", $IADDMASK)
			GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_INSERTITEMW, 0, $PITEM)
			DllStructSetData($TITEM, "Mask", $_ARRAYCONSTANT_LVIF_TEXT)
			For $J = 2 To $AITEM[0]
				DllStructSetData($TBUFFER, "Text", $AITEM[$J])
				DllStructSetData($TITEM, "SubItem", $J - 1)
				GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_SETITEMW, 0, $PITEM)
			Next
		EndIf
	Next
	$IWIDTH = 0
	For $I = 0 To $ISUBMAX + 1
		$IWIDTH += GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH, $I, 0)
	Next
	If $IWIDTH < 250 Then $IWIDTH = 230
	$IWIDTH += 20
	If $IWIDTH > @DesktopWidth Then $IWIDTH = @DesktopWidth - 100
	WinMove($HGUI, "", (@DesktopWidth - $IWIDTH) / 2, Default, $IWIDTH)
	GUISetState(@SW_SHOW, $HGUI)
	While 1
		Switch GUIGetMsg()
			Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
				ExitLoop
			Case $HCOPY
				Local $SCLIP = ""
				Local $AICURITEMS[1] = [0]
				For $I = 0 To GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_GETITEMCOUNT, 0, 0)
					If GUICtrlSendMsg($HLISTVIEW, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $I, 2) Then
						$AICURITEMS[0] += 1
						ReDim $AICURITEMS[$AICURITEMS[0] + 1]
						$AICURITEMS[$AICURITEMS[0]] = $I
					EndIf
				Next
				If Not $AICURITEMS[0] Then
					For $SITEM In $AVARRAYTEXT
						$SCLIP &= $SITEM & @CRLF
					Next
				Else
					For $I = 1 To UBound($AICURITEMS) - 1
						$SCLIP &= $AVARRAYTEXT[$AICURITEMS[$I]] & @CRLF
					Next
				EndIf
				ClipPut($SCLIP)
		EndSwitch
	WEnd
	GUIDelete($HGUI)
	Opt("GUIOnEventMode", $IONEVENTMODE)
	Opt("GUIDataSeparatorChar", $SDATASEPARATORCHAR)
	Return 1
EndFunc   ;==>_ArrayDisplay
Func _ArrayFindAll(Const ByRef $AVARRAY, $VVALUE, $ISTART = 0, $IEND = 0, $ICASE = 0, $IPARTIAL = 0, $ISUBITEM = 0)
	$ISTART = _ArraySearch($AVARRAY, $VVALUE, $ISTART, $IEND, $ICASE, $IPARTIAL, 1, $ISUBITEM)
	If @error Then Return SetError(@error, 0, -1)
	Local $IINDEX = 0, $AVRESULT[UBound($AVARRAY)]
	Do
		$AVRESULT[$IINDEX] = $ISTART
		$IINDEX += 1
		$ISTART = _ArraySearch($AVARRAY, $VVALUE, $ISTART + 1, $IEND, $ICASE, $IPARTIAL, 1, $ISUBITEM)
	Until @error
	ReDim $AVRESULT[$IINDEX]
	Return $AVRESULT
EndFunc   ;==>_ArrayFindAll
Func _ArrayInsert(ByRef $AVARRAY, $IELEMENT, $VVALUE = "")
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $IUBOUND = UBound($AVARRAY) + 1
	ReDim $AVARRAY[$IUBOUND]
	For $I = $IUBOUND - 1 To $IELEMENT + 1 Step -1
		$AVARRAY[$I] = $AVARRAY[$I - 1]
	Next
	$AVARRAY[$IELEMENT] = $VVALUE
	Return $IUBOUND
EndFunc   ;==>_ArrayInsert
Func _ArrayMax(Const ByRef $AVARRAY, $ICOMPNUMERIC = 0, $ISTART = 0, $IEND = 0)
	Local $IRESULT = _ArrayMaxIndex($AVARRAY, $ICOMPNUMERIC, $ISTART, $IEND)
	If @error Then Return SetError(@error, 0, "")
	Return $AVARRAY[$IRESULT]
EndFunc   ;==>_ArrayMax
Func _ArrayMaxIndex(Const ByRef $AVARRAY, $ICOMPNUMERIC = 0, $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Or UBound($AVARRAY, 0) <> 1 Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(3, 0, -1)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(2, 0, -1)
	Local $IMAXINDEX = $ISTART
	If $ICOMPNUMERIC Then
		For $I = $ISTART To $IEND
			If Number($AVARRAY[$IMAXINDEX]) < Number($AVARRAY[$I]) Then $IMAXINDEX = $I
		Next
	Else
		For $I = $ISTART To $IEND
			If $AVARRAY[$IMAXINDEX] < $AVARRAY[$I] Then $IMAXINDEX = $I
		Next
	EndIf
	Return $IMAXINDEX
EndFunc   ;==>_ArrayMaxIndex
Func _ArrayMin(Const ByRef $AVARRAY, $ICOMPNUMERIC = 0, $ISTART = 0, $IEND = 0)
	Local $IRESULT = _ArrayMinIndex($AVARRAY, $ICOMPNUMERIC, $ISTART, $IEND)
	If @error Then Return SetError(@error, 0, "")
	Return $AVARRAY[$IRESULT]
EndFunc   ;==>_ArrayMin
Func _ArrayMinIndex(Const ByRef $AVARRAY, $ICOMPNUMERIC = 0, $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(3, 0, -1)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(2, 0, -1)
	Local $IMININDEX = $ISTART
	If $ICOMPNUMERIC Then
		For $I = $ISTART To $IEND
			If Number($AVARRAY[$IMININDEX]) > Number($AVARRAY[$I]) Then $IMININDEX = $I
		Next
	Else
		For $I = $ISTART To $IEND
			If $AVARRAY[$IMININDEX] > $AVARRAY[$I] Then $IMININDEX = $I
		Next
	EndIf
	Return $IMININDEX
EndFunc   ;==>_ArrayMinIndex
Func _ArrayPermute(ByRef $AVARRAY, $SDELIM = "")
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $ISIZE = UBound($AVARRAY), $IFACTORIAL = 1, $AIDX[$ISIZE], $ARESULT[1], $ICOUNT = 1
	For $I = 0 To $ISIZE - 1
		$AIDX[$I] = $I
	Next
	For $I = $ISIZE To 1 Step -1
		$IFACTORIAL *= $I
	Next
	ReDim $ARESULT[$IFACTORIAL + 1]
	$ARESULT[0] = $IFACTORIAL
	__ARRAY_EXETERINTERNAL($AVARRAY, 0, $ISIZE, $SDELIM, $AIDX, $ARESULT, $ICOUNT)
	Return $ARESULT
EndFunc   ;==>_ArrayPermute
Func _ArrayPop(ByRef $AVARRAY)
	If (Not IsArray($AVARRAY)) Then Return SetError(1, 0, "")
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, "")
	Local $IUBOUND = UBound($AVARRAY) - 1, $SLASTVAL = $AVARRAY[$IUBOUND]
	If Not $IUBOUND Then
		$AVARRAY = ""
	Else
		ReDim $AVARRAY[$IUBOUND]
	EndIf
	Return $SLASTVAL
EndFunc   ;==>_ArrayPop
Func _ArrayPush(ByRef $AVARRAY, $VVALUE, $IDIRECTION = 0)
	If (Not IsArray($AVARRAY)) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(3, 0, 0)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If IsArray($VVALUE) Then
		Local $IUBOUNDS = UBound($VVALUE)
		If ($IUBOUNDS - 1) > $IUBOUND Then Return SetError(2, 0, 0)
		If $IDIRECTION Then
			For $I = $IUBOUND To $IUBOUNDS Step -1
				$AVARRAY[$I] = $AVARRAY[$I - $IUBOUNDS]
			Next
			For $I = 0 To $IUBOUNDS - 1
				$AVARRAY[$I] = $VVALUE[$I]
			Next
		Else
			For $I = 0 To $IUBOUND - $IUBOUNDS
				$AVARRAY[$I] = $AVARRAY[$I + $IUBOUNDS]
			Next
			For $I = 0 To $IUBOUNDS - 1
				$AVARRAY[$I + $IUBOUND - $IUBOUNDS + 1] = $VVALUE[$I]
			Next
		EndIf
	Else
		If $IDIRECTION Then
			For $I = $IUBOUND To 1 Step -1
				$AVARRAY[$I] = $AVARRAY[$I - 1]
			Next
			$AVARRAY[0] = $VVALUE
		Else
			For $I = 0 To $IUBOUND - 1
				$AVARRAY[$I] = $AVARRAY[$I + 1]
			Next
			$AVARRAY[$IUBOUND] = $VVALUE
		EndIf
	EndIf
	Return 1
EndFunc   ;==>_ArrayPush
Func _ArrayReverse(ByRef $AVARRAY, $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(3, 0, 0)
	Local $VTMP, $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(2, 0, 0)
	For $I = $ISTART To Int(($ISTART + $IEND - 1) / 2)
		$VTMP = $AVARRAY[$I]
		$AVARRAY[$I] = $AVARRAY[$IEND]
		$AVARRAY[$IEND] = $VTMP
		$IEND -= 1
	Next
	Return 1
EndFunc   ;==>_ArrayReverse
Func _ArraySearch(Const ByRef $AVARRAY, $VVALUE, $ISTART = 0, $IEND = 0, $ICASE = 0, $IPARTIAL = 0, $IFORWARD = 1, $ISUBITEM = -1)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) > 2 Or UBound($AVARRAY, 0) < 1 Then Return SetError(2, 0, -1)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(4, 0, -1)
	Local $ISTEP = 1
	If Not $IFORWARD Then
		Local $ITMP = $ISTART
		$ISTART = $IEND
		$IEND = $ITMP
		$ISTEP = -1
	EndIf
	Switch UBound($AVARRAY, 0)
		Case 1
			If Not $IPARTIAL Then
				If Not $ICASE Then
					For $I = $ISTART To $IEND Step $ISTEP
						If $AVARRAY[$I] = $VVALUE Then Return $I
					Next
				Else
					For $I = $ISTART To $IEND Step $ISTEP
						If $AVARRAY[$I] == $VVALUE Then Return $I
					Next
				EndIf
			Else
				For $I = $ISTART To $IEND Step $ISTEP
					If StringInStr($AVARRAY[$I], $VVALUE, $ICASE) > 0 Then Return $I
				Next
			EndIf
		Case 2
			Local $IUBOUNDSUB = UBound($AVARRAY, 2) - 1
			If $ISUBITEM > $IUBOUNDSUB Then $ISUBITEM = $IUBOUNDSUB
			If $ISUBITEM < 0 Then
				$ISUBITEM = 0
			Else
				$IUBOUNDSUB = $ISUBITEM
			EndIf
			For $J = $ISUBITEM To $IUBOUNDSUB
				If Not $IPARTIAL Then
					If Not $ICASE Then
						For $I = $ISTART To $IEND Step $ISTEP
							If $AVARRAY[$I][$J] = $VVALUE Then Return $I
						Next
					Else
						For $I = $ISTART To $IEND Step $ISTEP
							If $AVARRAY[$I][$J] == $VVALUE Then Return $I
						Next
					EndIf
				Else
					For $I = $ISTART To $IEND Step $ISTEP
						If StringInStr($AVARRAY[$I][$J], $VVALUE, $ICASE) > 0 Then Return $I
					Next
				EndIf
			Next
		Case Else
			Return SetError(7, 0, -1)
	EndSwitch
	Return SetError(6, 0, -1)
EndFunc   ;==>_ArraySearch
Func _ArraySort(ByRef $AVARRAY, $IDESCENDING = 0, $ISTART = 0, $IEND = 0, $ISUBITEM = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(2, 0, 0)
	Switch UBound($AVARRAY, 0)
		Case 1
			__ARRAYQUICKSORT1D($AVARRAY, $ISTART, $IEND)
			If $IDESCENDING Then _ArrayReverse($AVARRAY, $ISTART, $IEND)
		Case 2
			Local $ISUBMAX = UBound($AVARRAY, 2) - 1
			If $ISUBITEM > $ISUBMAX Then Return SetError(3, 0, 0)
			If $IDESCENDING Then
				$IDESCENDING = -1
			Else
				$IDESCENDING = 1
			EndIf
			__ARRAYQUICKSORT2D($AVARRAY, $IDESCENDING, $ISTART, $IEND, $ISUBITEM, $ISUBMAX)
		Case Else
			Return SetError(4, 0, 0)
	EndSwitch
	Return 1
EndFunc   ;==>_ArraySort
Func __ARRAYQUICKSORT1D(ByRef $AVARRAY, ByRef $ISTART, ByRef $IEND)
	If $IEND <= $ISTART Then Return
	Local $VTMP
	If ($IEND - $ISTART) < 15 Then
		Local $VCUR
		For $I = $ISTART + 1 To $IEND
			$VTMP = $AVARRAY[$I]
			If IsNumber($VTMP) Then
				For $J = $I - 1 To $ISTART Step -1
					$VCUR = $AVARRAY[$J]
					If ($VTMP >= $VCUR And IsNumber($VCUR)) Or (Not IsNumber($VCUR) And StringCompare($VTMP, $VCUR) >= 0) Then ExitLoop
					$AVARRAY[$J + 1] = $VCUR
				Next
			Else
				For $J = $I - 1 To $ISTART Step -1
					If (StringCompare($VTMP, $AVARRAY[$J]) >= 0) Then ExitLoop
					$AVARRAY[$J + 1] = $AVARRAY[$J]
				Next
			EndIf
			$AVARRAY[$J + 1] = $VTMP
		Next
		Return
	EndIf
	Local $L = $ISTART, $R = $IEND, $VPIVOT = $AVARRAY[Int(($ISTART + $IEND) / 2)], $FNUM = IsNumber($VPIVOT)
	Do
		If $FNUM Then
			While ($AVARRAY[$L] < $VPIVOT And IsNumber($AVARRAY[$L])) Or (Not IsNumber($AVARRAY[$L]) And StringCompare($AVARRAY[$L], $VPIVOT) < 0)
				$L += 1
			WEnd
			While ($AVARRAY[$R] > $VPIVOT And IsNumber($AVARRAY[$R])) Or (Not IsNumber($AVARRAY[$R]) And StringCompare($AVARRAY[$R], $VPIVOT) > 0)
				$R -= 1
			WEnd
		Else
			While (StringCompare($AVARRAY[$L], $VPIVOT) < 0)
				$L += 1
			WEnd
			While (StringCompare($AVARRAY[$R], $VPIVOT) > 0)
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			$VTMP = $AVARRAY[$L]
			$AVARRAY[$L] = $AVARRAY[$R]
			$AVARRAY[$R] = $VTMP
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT1D($AVARRAY, $ISTART, $R)
	__ARRAYQUICKSORT1D($AVARRAY, $L, $IEND)
EndFunc   ;==>__ARRAYQUICKSORT1D
Func __ARRAYQUICKSORT2D(ByRef $AVARRAY, ByRef $ISTEP, ByRef $ISTART, ByRef $IEND, ByRef $ISUBITEM, ByRef $ISUBMAX)
	If $IEND <= $ISTART Then Return
	Local $VTMP, $L = $ISTART, $R = $IEND, $VPIVOT = $AVARRAY[Int(($ISTART + $IEND) / 2)][$ISUBITEM], $FNUM = IsNumber($VPIVOT)
	Do
		If $FNUM Then
			While ($ISTEP * ($AVARRAY[$L][$ISUBITEM] - $VPIVOT) < 0 And IsNumber($AVARRAY[$L][$ISUBITEM])) Or (Not IsNumber($AVARRAY[$L][$ISUBITEM]) And $ISTEP * StringCompare($AVARRAY[$L][$ISUBITEM], $VPIVOT) < 0)
				$L += 1
			WEnd
			While ($ISTEP * ($AVARRAY[$R][$ISUBITEM] - $VPIVOT) > 0 And IsNumber($AVARRAY[$R][$ISUBITEM])) Or (Not IsNumber($AVARRAY[$R][$ISUBITEM]) And $ISTEP * StringCompare($AVARRAY[$R][$ISUBITEM], $VPIVOT) > 0)
				$R -= 1
			WEnd
		Else
			While ($ISTEP * StringCompare($AVARRAY[$L][$ISUBITEM], $VPIVOT) < 0)
				$L += 1
			WEnd
			While ($ISTEP * StringCompare($AVARRAY[$R][$ISUBITEM], $VPIVOT) > 0)
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			For $I = 0 To $ISUBMAX
				$VTMP = $AVARRAY[$L][$I]
				$AVARRAY[$L][$I] = $AVARRAY[$R][$I]
				$AVARRAY[$R][$I] = $VTMP
			Next
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT2D($AVARRAY, $ISTEP, $ISTART, $R, $ISUBITEM, $ISUBMAX)
	__ARRAYQUICKSORT2D($AVARRAY, $ISTEP, $L, $IEND, $ISUBITEM, $ISUBMAX)
EndFunc   ;==>__ARRAYQUICKSORT2D
Func _ArraySwap(ByRef $VITEM1, ByRef $VITEM2)
	Local $VTMP = $VITEM1
	$VITEM1 = $VITEM2
	$VITEM2 = $VTMP
EndFunc   ;==>_ArraySwap
Func _ArrayToClip(Const ByRef $AVARRAY, $ISTART = 0, $IEND = 0)
	Local $SRESULT = _ArrayToString($AVARRAY, @CR, $ISTART, $IEND)
	If @error Then Return SetError(@error, 0, 0)
	Return ClipPut($SRESULT)
EndFunc   ;==>_ArrayToClip
Func _ArrayToString(Const ByRef $AVARRAY, $SDELIM = "|", $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, "")
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(3, 0, "")
	Local $SRESULT, $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(2, 0, "")
	For $I = $ISTART To $IEND
		$SRESULT &= $AVARRAY[$I] & $SDELIM
	Next
	Return StringTrimRight($SRESULT, StringLen($SDELIM))
EndFunc   ;==>_ArrayToString
Func _ArrayTrim(ByRef $AVARRAY, $ITRIMNUM, $IDIRECTION = 0, $ISTART = 0, $IEND = 0)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, 0)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $IUBOUND = UBound($AVARRAY) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError(5, 0, 0)
	If $IDIRECTION Then
		For $I = $ISTART To $IEND
			$AVARRAY[$I] = StringTrimRight($AVARRAY[$I], $ITRIMNUM)
		Next
	Else
		For $I = $ISTART To $IEND
			$AVARRAY[$I] = StringTrimLeft($AVARRAY[$I], $ITRIMNUM)
		Next
	EndIf
	Return 1
EndFunc   ;==>_ArrayTrim
Func _ArrayUnique($AARRAY, $IDIMENSION = 1, $IBASE = 0, $ICASE = 0, $VDELIM = "|")
	Local $IUBOUNDDIM
	If $VDELIM = "|" Then $VDELIM = Chr(1)
	If Not IsArray($AARRAY) Then Return SetError(1, 0, 0)
	If Not $IDIMENSION > 0 Then
		Return SetError(3, 0, 0)
	Else
		$IUBOUNDDIM = UBound($AARRAY, 1)
		If @error Then Return SetError(3, 0, 0)
		If $IDIMENSION > 1 Then
			Local $AARRAYTMP[1]
			For $I = 0 To $IUBOUNDDIM - 1
				_ArrayAdd($AARRAYTMP, $AARRAY[$I][$IDIMENSION - 1])
			Next
			_ArrayDelete($AARRAYTMP, 0)
		Else
			If UBound($AARRAY, 0) = 1 Then
				Dim $AARRAYTMP[1]
				For $I = 0 To $IUBOUNDDIM - 1
					_ArrayAdd($AARRAYTMP, $AARRAY[$I])
				Next
				_ArrayDelete($AARRAYTMP, 0)
			Else
				Dim $AARRAYTMP[1]
				For $I = 0 To $IUBOUNDDIM - 1
					_ArrayAdd($AARRAYTMP, $AARRAY[$I][$IDIMENSION - 1])
				Next
				_ArrayDelete($AARRAYTMP, 0)
			EndIf
		EndIf
	EndIf
	Local $SHOLD
	For $ICC = $IBASE To UBound($AARRAYTMP) - 1
		If Not StringInStr($VDELIM & $SHOLD, $VDELIM & $AARRAYTMP[$ICC] & $VDELIM, $ICASE) Then $SHOLD &= $AARRAYTMP[$ICC] & $VDELIM
	Next
	If $SHOLD Then
		$AARRAYTMP = StringSplit(StringTrimRight($SHOLD, StringLen($VDELIM)), $VDELIM, 1)
		Return $AARRAYTMP
	EndIf
	Return SetError(2, 0, 0)
EndFunc   ;==>_ArrayUnique
Func __ARRAY_EXETERINTERNAL(ByRef $AVARRAY, $ISTART, $ISIZE, $SDELIM, ByRef $AIDX, ByRef $ARESULT, ByRef $ICOUNT)
	If $ISTART == $ISIZE - 1 Then
		For $I = 0 To $ISIZE - 1
			$ARESULT[$ICOUNT] &= $AVARRAY[$AIDX[$I]] & $SDELIM
		Next
		If $SDELIM <> "" Then $ARESULT[$ICOUNT] = StringTrimRight($ARESULT[$ICOUNT], 1)
		$ICOUNT += 1
	Else
		Local $ITEMP
		For $I = $ISTART To $ISIZE - 1
			$ITEMP = $AIDX[$I]
			$AIDX[$I] = $AIDX[$ISTART]
			$AIDX[$ISTART] = $ITEMP
			__ARRAY_EXETERINTERNAL($AVARRAY, $ISTART + 1, $ISIZE, $SDELIM, $AIDX, $ARESULT, $ICOUNT)
			$AIDX[$ISTART] = $AIDX[$I]
			$AIDX[$I] = $ITEMP
		Next
	EndIf
EndFunc   ;==>__ARRAY_EXETERINTERNAL
Func __ARRAY_COMBINATIONS($IN, $IR)
	Local $I_TOTAL = 1
	For $I = $IR To 1 Step -1
		$I_TOTAL *= ($IN / $I)
		$IN -= 1
	Next
	Return Round($I_TOTAL)
EndFunc   ;==>__ARRAY_COMBINATIONS
Func __ARRAY_GETNEXT($IN, $IR, ByRef $ILEFT, $ITOTAL, ByRef $AIDX)
	If $ILEFT == $ITOTAL Then
		$ILEFT -= 1
		Return
	EndIf
	Local $I = $IR - 1
	While $AIDX[$I] == $IN - $IR + $I
		$I -= 1
	WEnd
	$AIDX[$I] += 1
	For $J = $I + 1 To $IR - 1
		$AIDX[$J] = $AIDX[$I] + $J - $I
	Next
	$ILEFT -= 1
EndFunc   ;==>__ARRAY_GETNEXT
Func _HexToString($STRHEX)
	If StringLeft($STRHEX, 2) = "0x" Then Return BinaryToString($STRHEX)
	Return BinaryToString("0x" & $STRHEX)
EndFunc   ;==>_HexToString
Func _StringBetween($S_STRING, $S_START, $S_END, $V_CASE = -1)
	Local $S_CASE = ""
	If $V_CASE = Default Or $V_CASE = -1 Then $S_CASE = "(?i)"
	Local $S_PATTERN_ESCAPE = "(\.|\||\*|\?|\+|\(|\)|\{|\}|\[|\]|\^|\$|\\)"
	$S_START = StringRegExpReplace($S_START, $S_PATTERN_ESCAPE, "\\$1")
	$S_END = StringRegExpReplace($S_END, $S_PATTERN_ESCAPE, "\\$1")
	If $S_START = "" Then $S_START = "\A"
	If $S_END = "" Then $S_END = "\z"
	Local $A_RET = StringRegExp($S_STRING, "(?s)" & $S_CASE & $S_START & "(.*?)" & $S_END, 3)
	If @error Then Return SetError(1, 0, 0)
	Return $A_RET
EndFunc   ;==>_StringBetween
Func _STRINGENCRYPT($I_ENCRYPT, $S_ENCRYPTTEXT, $S_ENCRYPTPASSWORD, $I_ENCRYPTLEVEL = 1)
	If $I_ENCRYPT <> 0 And $I_ENCRYPT <> 1 Then
		SetError(1, 0, "")
	ElseIf $S_ENCRYPTTEXT = "" Or $S_ENCRYPTPASSWORD = "" Then
		SetError(1, 0, "")
	Else
		If Number($I_ENCRYPTLEVEL) <= 0 Or Int($I_ENCRYPTLEVEL) <> $I_ENCRYPTLEVEL Then $I_ENCRYPTLEVEL = 1
		Local $V_ENCRYPTMODIFIED
		Local $I_ENCRYPTCOUNTH
		Local $I_ENCRYPTCOUNTG
		Local $V_ENCRYPTSWAP
		Local $AV_ENCRYPTBOX[256][2]
		Local $I_ENCRYPTCOUNTA
		Local $I_ENCRYPTCOUNTB
		Local $I_ENCRYPTCOUNTC
		Local $I_ENCRYPTCOUNTD
		Local $I_ENCRYPTCOUNTE
		Local $V_ENCRYPTCIPHER
		Local $V_ENCRYPTCIPHERBY
		If $I_ENCRYPT = 1 Then
			For $I_ENCRYPTCOUNTF = 0 To $I_ENCRYPTLEVEL Step 1
				$I_ENCRYPTCOUNTG = ""
				$I_ENCRYPTCOUNTH = ""
				$V_ENCRYPTMODIFIED = ""
				For $I_ENCRYPTCOUNTG = 1 To StringLen($S_ENCRYPTTEXT)
					If $I_ENCRYPTCOUNTH = StringLen($S_ENCRYPTPASSWORD) Then
						$I_ENCRYPTCOUNTH = 1
					Else
						$I_ENCRYPTCOUNTH += 1
					EndIf
					$V_ENCRYPTMODIFIED = $V_ENCRYPTMODIFIED & Chr(BitXOR(Asc(StringMid($S_ENCRYPTTEXT, $I_ENCRYPTCOUNTG, 1)), Asc(StringMid($S_ENCRYPTPASSWORD, $I_ENCRYPTCOUNTH, 1)), 255))
				Next
				$S_ENCRYPTTEXT = $V_ENCRYPTMODIFIED
				$I_ENCRYPTCOUNTA = ""
				$I_ENCRYPTCOUNTB = 0
				$I_ENCRYPTCOUNTC = ""
				$I_ENCRYPTCOUNTD = ""
				$I_ENCRYPTCOUNTE = ""
				$V_ENCRYPTCIPHERBY = ""
				$V_ENCRYPTCIPHER = ""
				$V_ENCRYPTSWAP = ""
				$AV_ENCRYPTBOX = ""
				Local $AV_ENCRYPTBOX[256][2]
				For $I_ENCRYPTCOUNTA = 0 To 255
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][1] = Asc(StringMid($S_ENCRYPTPASSWORD, Mod($I_ENCRYPTCOUNTA, StringLen($S_ENCRYPTPASSWORD)) + 1, 1))
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] = $I_ENCRYPTCOUNTA
				Next
				For $I_ENCRYPTCOUNTA = 0 To 255
					$I_ENCRYPTCOUNTB = Mod(($I_ENCRYPTCOUNTB + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][1]), 256)
					$V_ENCRYPTSWAP = $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0]
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] = $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTB][0]
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTB][0] = $V_ENCRYPTSWAP
				Next
				For $I_ENCRYPTCOUNTA = 1 To StringLen($S_ENCRYPTTEXT)
					$I_ENCRYPTCOUNTC = Mod(($I_ENCRYPTCOUNTC + 1), 256)
					$I_ENCRYPTCOUNTD = Mod(($I_ENCRYPTCOUNTD + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTC][0]), 256)
					$I_ENCRYPTCOUNTE = $AV_ENCRYPTBOX[Mod(($AV_ENCRYPTBOX[$I_ENCRYPTCOUNTC][0] + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTD][0]), 256)][0]
					$V_ENCRYPTCIPHERBY = BitXOR(Asc(StringMid($S_ENCRYPTTEXT, $I_ENCRYPTCOUNTA, 1)), $I_ENCRYPTCOUNTE)
					$V_ENCRYPTCIPHER &= Hex($V_ENCRYPTCIPHERBY, 2)
				Next
				$S_ENCRYPTTEXT = $V_ENCRYPTCIPHER
			Next
		Else
			For $I_ENCRYPTCOUNTF = 0 To $I_ENCRYPTLEVEL Step 1
				$I_ENCRYPTCOUNTB = 0
				$I_ENCRYPTCOUNTC = ""
				$I_ENCRYPTCOUNTD = ""
				$I_ENCRYPTCOUNTE = ""
				$V_ENCRYPTCIPHERBY = ""
				$V_ENCRYPTCIPHER = ""
				$V_ENCRYPTSWAP = ""
				$AV_ENCRYPTBOX = ""
				Local $AV_ENCRYPTBOX[256][2]
				For $I_ENCRYPTCOUNTA = 0 To 255
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][1] = Asc(StringMid($S_ENCRYPTPASSWORD, Mod($I_ENCRYPTCOUNTA, StringLen($S_ENCRYPTPASSWORD)) + 1, 1))
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] = $I_ENCRYPTCOUNTA
				Next
				For $I_ENCRYPTCOUNTA = 0 To 255
					$I_ENCRYPTCOUNTB = Mod(($I_ENCRYPTCOUNTB + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][1]), 256)
					$V_ENCRYPTSWAP = $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0]
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTA][0] = $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTB][0]
					$AV_ENCRYPTBOX[$I_ENCRYPTCOUNTB][0] = $V_ENCRYPTSWAP
				Next
				For $I_ENCRYPTCOUNTA = 1 To StringLen($S_ENCRYPTTEXT) Step 2
					$I_ENCRYPTCOUNTC = Mod(($I_ENCRYPTCOUNTC + 1), 256)
					$I_ENCRYPTCOUNTD = Mod(($I_ENCRYPTCOUNTD + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTC][0]), 256)
					$I_ENCRYPTCOUNTE = $AV_ENCRYPTBOX[Mod(($AV_ENCRYPTBOX[$I_ENCRYPTCOUNTC][0] + $AV_ENCRYPTBOX[$I_ENCRYPTCOUNTD][0]), 256)][0]
					$V_ENCRYPTCIPHERBY = BitXOR(Dec(StringMid($S_ENCRYPTTEXT, $I_ENCRYPTCOUNTA, 2)), $I_ENCRYPTCOUNTE)
					$V_ENCRYPTCIPHER = $V_ENCRYPTCIPHER & Chr($V_ENCRYPTCIPHERBY)
				Next
				$S_ENCRYPTTEXT = $V_ENCRYPTCIPHER
				$I_ENCRYPTCOUNTG = ""
				$I_ENCRYPTCOUNTH = ""
				$V_ENCRYPTMODIFIED = ""
				For $I_ENCRYPTCOUNTG = 1 To StringLen($S_ENCRYPTTEXT)
					If $I_ENCRYPTCOUNTH = StringLen($S_ENCRYPTPASSWORD) Then
						$I_ENCRYPTCOUNTH = 1
					Else
						$I_ENCRYPTCOUNTH += 1
					EndIf
					$V_ENCRYPTMODIFIED &= Chr(BitXOR(Asc(StringMid($S_ENCRYPTTEXT, $I_ENCRYPTCOUNTG, 1)), Asc(StringMid($S_ENCRYPTPASSWORD, $I_ENCRYPTCOUNTH, 1)), 255))
				Next
				$S_ENCRYPTTEXT = $V_ENCRYPTMODIFIED
			Next
		EndIf
		Return $S_ENCRYPTTEXT
	EndIf
EndFunc   ;==>_STRINGENCRYPT
Func _StringExplode($SSTRING, $SDELIMITER, $ILIMIT = 0)
	If $ILIMIT > 0 Then
		$SSTRING = StringReplace($SSTRING, $SDELIMITER, Chr(0), $ILIMIT)
		$SDELIMITER = Chr(0)
	ElseIf $ILIMIT < 0 Then
		Local $IINDEX = StringInStr($SSTRING, $SDELIMITER, 0, $ILIMIT)
		If $IINDEX Then
			$SSTRING = StringLeft($SSTRING, $IINDEX - 1)
		EndIf
	EndIf
	Return StringSplit($SSTRING, $SDELIMITER, 3)
EndFunc   ;==>_StringExplode
Func _StringInsert($S_STRING, $S_INSERTSTRING, $I_POSITION)
	Local $I_LENGTH, $S_START, $S_END
	If $S_STRING = "" Or (Not IsString($S_STRING)) Then
		Return SetError(1, 0, $S_STRING)
	ElseIf $S_INSERTSTRING = "" Or (Not IsString($S_STRING)) Then
		Return SetError(2, 0, $S_STRING)
	Else
		$I_LENGTH = StringLen($S_STRING)
		If (Abs($I_POSITION) > $I_LENGTH) Or (Not IsInt($I_POSITION)) Then
			Return SetError(3, 0, $S_STRING)
		EndIf
	EndIf
	If $I_POSITION = 0 Then
		Return $S_INSERTSTRING & $S_STRING
	ElseIf $I_POSITION > 0 Then
		$S_START = StringLeft($S_STRING, $I_POSITION)
		$S_END = StringRight($S_STRING, $I_LENGTH - $I_POSITION)
		Return $S_START & $S_INSERTSTRING & $S_END
	ElseIf $I_POSITION < 0 Then
		$S_START = StringLeft($S_STRING, Abs($I_LENGTH + $I_POSITION))
		$S_END = StringRight($S_STRING, Abs($I_POSITION))
		Return $S_START & $S_INSERTSTRING & $S_END
	EndIf
EndFunc   ;==>_StringInsert
Func _StringProper($S_STRING)
	Local $IX = 0
	Local $CAPNEXT = 1
	Local $S_NSTR = ""
	Local $S_CURCHAR
	For $IX = 1 To StringLen($S_STRING)
		$S_CURCHAR = StringMid($S_STRING, $IX, 1)
		Select
			Case $CAPNEXT = 1
				If StringRegExp($S_CURCHAR, "[a-zA-ZÀ-ÿšœžŸ]") Then
					$S_CURCHAR = StringUpper($S_CURCHAR)
					$CAPNEXT = 0
				EndIf
			Case Not StringRegExp($S_CURCHAR, "[a-zA-ZÀ-ÿšœžŸ]")
				$CAPNEXT = 1
			Case Else
				$S_CURCHAR = StringLower($S_CURCHAR)
		EndSelect
		$S_NSTR &= $S_CURCHAR
	Next
	Return $S_NSTR
EndFunc   ;==>_StringProper
Func _StringRepeat($SSTRING, $IREPEATCOUNT)
	Local $SRESULT
	Select
		Case Not StringIsInt($IREPEATCOUNT)
			SetError(1)
			Return ""
		Case StringLen($SSTRING) < 1
			SetError(1)
			Return ""
		Case $IREPEATCOUNT <= 0
			SetError(1)
			Return ""
		Case Else
			For $ICOUNT = 1 To $IREPEATCOUNT
				$SRESULT &= $SSTRING
			Next
			Return $SRESULT
	EndSelect
EndFunc   ;==>_StringRepeat
Func _STRINGREVERSE($S_STRING)
	Local $I_LEN = StringLen($S_STRING)
	If $I_LEN < 1 Then Return SetError(1, 0, "")
	Local $T_CHARS = DllStructCreate("char[" & $I_LEN + 1 & "]")
	DllStructSetData($T_CHARS, 1, $S_STRING)
	Local $A_REV = DllCall("msvcrt.dll", "ptr:cdecl", "_strrev", "ptr", DllStructGetPtr($T_CHARS))
	If @error Or $A_REV[0] = 0 Then Return SetError(2, 0, "")
	Return DllStructGetData($T_CHARS, 1)
EndFunc   ;==>_STRINGREVERSE
Func _StringToHex($STRCHAR)
	Return Hex(StringToBinary($STRCHAR))
EndFunc   ;==>_StringToHex
Global Const $DDL_ARCHIVE = 32
Global Const $DDL_DIRECTORY = 16
Global Const $DDL_DRIVES = 16384
Global Const $DDL_EXCLUSIVE = 32768
Global Const $DDL_HIDDEN = 2
Global Const $DDL_READONLY = 1
Global Const $DDL_READWRITE = 0
Global Const $DDL_SYSTEM = 4
Global Const $COLOR_AQUA = 65535
Global Const $COLOR_BLACK = 0
Global Const $COLOR_BLUE = 255
Global Const $COLOR_CREAM = 16776176
Global Const $COLOR_FUCHSIA = 16711935
Global Const $COLOR_GRAY = 8421504
Global Const $COLOR_GREEN = 32768
Global Const $COLOR_LIME = 65280
Global Const $COLOR_MAROON = 9116770
Global Const $COLOR_MEDBLUE = 708
Global Const $COLOR_MEDGRAY = 10526884
Global Const $COLOR_MONEYGREEN = 12639424
Global Const $COLOR_NAVY = 128
Global Const $COLOR_OLIVE = 8421376
Global Const $COLOR_PURPLE = 8388736
Global Const $COLOR_RED = 16711680
Global Const $COLOR_SILVER = 12632256
Global Const $COLOR_SKYBLUE = 10930928
Global Const $COLOR_TEAL = 32896
Global Const $COLOR_WHITE = 16777215
Global Const $COLOR_YELLOW = 16776960
Global Const $CLR_NONE = -1
Global Const $CLR_DEFAULT = -16777216
Global Const $CLR_AQUA = 16776960
Global Const $CLR_BLACK = 0
Global Const $CLR_BLUE = 16711680
Global Const $CLR_CREAM = 15793151
Global Const $CLR_FUCHSIA = 16711935
Global Const $CLR_GRAY = 8421504
Global Const $CLR_GREEN = 32768
Global Const $CLR_LIME = 65280
Global Const $CLR_MAROON = 6429835
Global Const $CLR_MEDBLUE = 12845568
Global Const $CLR_MEDGRAY = 10789024
Global Const $CLR_MONEYGREEN = 12639424
Global Const $CLR_NAVY = 8388608
Global Const $CLR_OLIVE = 32896
Global Const $CLR_PURPLE = 8388736
Global Const $CLR_RED = 255
Global Const $CLR_SILVER = 12632256
Global Const $CLR_SKYBLUE = 15780518
Global Const $CLR_TEAL = 8421376
Global Const $CLR_WHITE = 16777215
Global Const $CLR_YELLOW = 65535
Global Const $CC_ANYCOLOR = 256
Global Const $CC_FULLOPEN = 2
Global Const $CC_RGBINIT = 1
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 1
Global Const $CCS_NOMOVEY = 2
Global Const $CCS_BOTTOM = 3
Global Const $CCS_NORESIZE = 4
Global Const $CCS_NOPARENTALIGN = 8
Global Const $CCS_NOHILITE = 16
Global Const $CCS_ADJUSTABLE = 32
Global Const $CCS_NODIVIDER = 64
Global Const $CCS_VERT = 128
Global Const $CCS_LEFT = 129
Global Const $CCS_NOMOVEX = 130
Global Const $CCS_RIGHT = 131
Global Const $DI_MASK = 1
Global Const $DI_IMAGE = 2
Global Const $DI_NORMAL = 3
Global Const $DI_COMPAT = 4
Global Const $DI_DEFAULTSIZE = 8
Global Const $DI_NOMIRROR = 16
Global Const $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1
Global Const $DISPLAY_DEVICE_MULTI_DRIVER = 2
Global Const $DISPLAY_DEVICE_PRIMARY_DEVICE = 4
Global Const $DISPLAY_DEVICE_MIRRORING_DRIVER = 8
Global Const $DISPLAY_DEVICE_VGA_COMPATIBLE = 16
Global Const $DISPLAY_DEVICE_REMOVABLE = 32
Global Const $DISPLAY_DEVICE_DISCONNECT = 33554432
Global Const $DISPLAY_DEVICE_REMOTE = 67108864
Global Const $DISPLAY_DEVICE_MODESPRUNED = 134217728
Global Const $FLASHW_CAPTION = 1
Global Const $FLASHW_TRAY = 2
Global Const $FLASHW_TIMER = 4
Global Const $FLASHW_TIMERNOFG = 12
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 256
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 512
Global Const $FORMAT_MESSAGE_FROM_STRING = 1024
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 2048
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 4096
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 8192
Global Const $GW_HWNDFIRST = 0
Global Const $GW_HWNDLAST = 1
Global Const $GW_HWNDNEXT = 2
Global Const $GW_HWNDPREV = 3
Global Const $GW_OWNER = 4
Global Const $GW_CHILD = 5
Global Const $GWL_WNDPROC = -4
Global Const $GWL_HINSTANCE = -6
Global Const $GWL_HWNDPARENT = -8
Global Const $GWL_ID = -12
Global Const $GWL_STYLE = -16
Global Const $GWL_EXSTYLE = -20
Global Const $GWL_USERDATA = -21
Global Const $STD_CUT = 0
Global Const $STD_COPY = 1
Global Const $STD_PASTE = 2
Global Const $STD_UNDO = 3
Global Const $STD_REDOW = 4
Global Const $STD_DELETE = 5
Global Const $STD_FILENEW = 6
Global Const $STD_FILEOPEN = 7
Global Const $STD_FILESAVE = 8
Global Const $STD_PRINTPRE = 9
Global Const $STD_PROPERTIES = 10
Global Const $STD_HELP = 11
Global Const $STD_FIND = 12
Global Const $STD_REPLACE = 13
Global Const $STD_PRINT = 14
Global Const $LR_DEFAULTCOLOR = 0
Global Const $LR_MONOCHROME = 1
Global Const $LR_COLOR = 2
Global Const $LR_COPYRETURNORG = 4
Global Const $LR_COPYDELETEORG = 8
Global Const $LR_LOADFROMFILE = 16
Global Const $LR_LOADTRANSPARENT = 32
Global Const $LR_DEFAULTSIZE = 64
Global Const $LR_VGACOLOR = 128
Global Const $LR_LOADMAP3DCOLORS = 4096
Global Const $LR_CREATEDIBSECTION = 8192
Global Const $LR_COPYFROMRESOURCE = 16384
Global Const $LR_SHARED = 32768
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $KB_SENDSPECIAL = 0
Global Const $KB_SENDRAW = 1
Global Const $KB_CAPSOFF = 0
Global Const $KB_CAPSON = 1
Global Const $DONT_RESOLVE_DLL_REFERENCES = 1
Global Const $LOAD_LIBRARY_AS_DATAFILE = 2
Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 8
Global Const $OBJID_WINDOW = 0
Global Const $OBJID_TITLEBAR = -2
Global Const $OBJID_SIZEGRIP = -7
Global Const $OBJID_CARET = -8
Global Const $OBJID_CURSOR = -9
Global Const $OBJID_ALERT = -10
Global Const $OBJID_SOUND = -11
Global Const $VK_DOWN = 40
Global Const $VK_END = 35
Global Const $VK_HOME = 36
Global Const $VK_LEFT = 37
Global Const $VK_NEXT = 34
Global Const $VK_PRIOR = 33
Global Const $VK_RIGHT = 39
Global Const $VK_UP = 38
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONASTERISK = 64
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_TOPMOST = 262144
Global Const $MB_RIGHTJUSTIFIED = 524288
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $TIP_ICONNONE = 0
Global Const $TIP_ICONASTERISK = 1
Global Const $TIP_ICONEXCLAMATION = 2
Global Const $TIP_ICONHAND = 3
Global Const $TIP_NOSOUND = 16
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 1
Global Const $IDC_ARROW = 2
Global Const $IDC_CROSS = 3
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 4
Global Const $IDC_IBEAM = 5
Global Const $IDC_ICON = 6
Global Const $IDC_NO = 7
Global Const $IDC_SIZE = 8
Global Const $IDC_SIZEALL = 9
Global Const $IDC_SIZENESW = 10
Global Const $IDC_SIZENS = 11
Global Const $IDC_SIZENWSE = 12
Global Const $IDC_SIZEWE = 13
Global Const $IDC_UPARROW = 14
Global Const $IDC_WAIT = 15
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $TRAY_ITEM_EXIT = 3
Global Const $TRAY_ITEM_PAUSE = 4
Global Const $TRAY_ITEM_FIRST = 7
Global Const $TRAY_CHECKED = 1
Global Const $TRAY_UNCHECKED = 4
Global Const $TRAY_ENABLE = 64
Global Const $TRAY_DISABLE = 128
Global Const $TRAY_FOCUS = 256
Global Const $TRAY_DEFAULT = 512
Global Const $TRAY_EVENT_SHOWICON = -3
Global Const $TRAY_EVENT_HIDEICON = -4
Global Const $TRAY_EVENT_FLASHICON = -5
Global Const $TRAY_EVENT_NOFLASHICON = -6
Global Const $TRAY_EVENT_PRIMARYDOWN = -7
Global Const $TRAY_EVENT_PRIMARYUP = -8
Global Const $TRAY_EVENT_SECONDARYDOWN = -9
Global Const $TRAY_EVENT_SECONDARYUP = -10
Global Const $TRAY_EVENT_MOUSEOVER = -11
Global Const $TRAY_EVENT_MOUSEOUT = -12
Global Const $TRAY_EVENT_PRIMARYDOUBLE = -13
Global Const $TRAY_EVENT_SECONDARYDOUBLE = -14
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 16
Global Const $RUN_CREATE_NEW_CONSOLE = 65536
Global Const $MOUSEEVENTF_ABSOLUTE = 32768
Global Const $MOUSEEVENTF_MOVE = 1
Global Const $MOUSEEVENTF_LEFTDOWN = 2
Global Const $MOUSEEVENTF_LEFTUP = 4
Global Const $MOUSEEVENTF_RIGHTDOWN = 8
Global Const $MOUSEEVENTF_RIGHTUP = 16
Global Const $MOUSEEVENTF_MIDDLEDOWN = 32
Global Const $MOUSEEVENTF_MIDDLEUP = 64
Global Const $MOUSEEVENTF_WHEEL = 2048
Global Const $MOUSEEVENTF_XDOWN = 128
Global Const $MOUSEEVENTF_XUP = 256
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 1
Global Const $SWP_NOMOVE = 2
Global Const $SWP_NOZORDER = 4
Global Const $SWP_NOREDRAW = 8
Global Const $SWP_NOACTIVATE = 16
Global Const $SWP_FRAMECHANGED = 32
Global Const $SWP_DRAWFRAME = 32
Global Const $SWP_SHOWWINDOW = 64
Global Const $SWP_HIDEWINDOW = 128
Global Const $SWP_NOCOPYBITS = 256
Global Const $SWP_NOOWNERZORDER = 512
Global Const $SWP_NOREPOSITION = 512
Global Const $SWP_NOSENDCHANGING = 1024
Global Const $SWP_DEFERERASE = 8192
Global Const $SWP_ASYNCWINDOWPOS = 16384
Global Const $LANG_AFRIKAANS = 54
Global Const $LANG_ALBANIAN = 28
Global Const $LANG_ARABIC = 1
Global Const $LANG_ARMENIAN = 43
Global Const $LANG_ASSAMESE = 77
Global Const $LANG_AZERI = 44
Global Const $LANG_BASQUE = 45
Global Const $LANG_BELARUSIAN = 35
Global Const $LANG_BENGALI = 69
Global Const $LANG_BULGARIAN = 2
Global Const $LANG_CATALAN = 3
Global Const $LANG_CHINESE = 4
Global Const $LANG_CROATIAN = 26
Global Const $LANG_CZECH = 5
Global Const $LANG_DANISH = 6
Global Const $LANG_DUTCH = 19
Global Const $LANG_ENGLISH = 9
Global Const $LANG_ESTONIAN = 37
Global Const $LANG_FAEROESE = 56
Global Const $LANG_FARSI = 41
Global Const $LANG_FINNISH = 11
Global Const $LANG_FRENCH = 156
Global Const $LANG_GEORGIAN = 55
Global Const $LANG_GERMAN = 7
Global Const $LANG_GREEK = 8
Global Const $LANG_GUJARATI = 71
Global Const $LANG_HEBREW = 13
Global Const $LANG_HINDI = 57
Global Const $LANG_HUNGARIAN = 14
Global Const $LANG_ICELANDIC = 15
Global Const $LANG_INDONESIAN = 33
Global Const $LANG_ITALIAN = 16
Global Const $LANG_JAPANESE = 17
Global Const $LANG_KANNADA = 75
Global Const $LANG_KASHMIRI = 96
Global Const $LANG_KAZAK = 63
Global Const $LANG_KONKANI = 87
Global Const $LANG_KOREAN = 18
Global Const $LANG_LATVIAN = 38
Global Const $LANG_LITHUANIAN = 39
Global Const $LANG_MACEDONIAN = 47
Global Const $LANG_MALAY = 62
Global Const $LANG_MALAYALAM = 76
Global Const $LANG_MANIPURI = 88
Global Const $LANG_MARATHI = 78
Global Const $LANG_NEPALI = 97
Global Const $LANG_NEUTRAL = 0
Global Const $LANG_NORWEGIAN = 20
Global Const $LANG_ORIYA = 72
Global Const $LANG_POLISH = 21
Global Const $LANG_PORTUGUESE = 22
Global Const $LANG_PUNJABI = 70
Global Const $LANG_ROMANIAN = 24
Global Const $LANG_RUSSIAN = 25
Global Const $LANG_SANSKRIT = 79
Global Const $LANG_SERBIAN = 26
Global Const $LANG_SINDHI = 89
Global Const $LANG_SLOVAK = 27
Global Const $LANG_SLOVENIAN = 36
Global Const $LANG_SPANISH = 10
Global Const $LANG_SWAHILI = 65
Global Const $LANG_SWEDISH = 29
Global Const $LANG_TAMIL = 73
Global Const $LANG_TATAR = 68
Global Const $LANG_TELUGU = 74
Global Const $LANG_THAI = 30
Global Const $LANG_TURKISH = 31
Global Const $LANG_UKRAINIAN = 34
Global Const $LANG_URDU = 32
Global Const $LANG_UZBEK = 67
Global Const $LANG_VIETNAMESE = 42
Global Const $SUBLANG_ARABIC_ALGERIA = 5
Global Const $SUBLANG_ARABIC_BAHRAIN = 15
Global Const $SUBLANG_ARABIC_EGYPT = 3
Global Const $SUBLANG_ARABIC_IRAQ = 2
Global Const $SUBLANG_ARABIC_JORDAN = 11
Global Const $SUBLANG_ARABIC_KUWAIT = 13
Global Const $SUBLANG_ARABIC_LEBANON = 12
Global Const $SUBLANG_ARABIC_LIBYA = 4
Global Const $SUBLANG_ARABIC_MOROCCO = 6
Global Const $SUBLANG_ARABIC_OMAN = 8
Global Const $SUBLANG_ARABIC_QATAR = 16
Global Const $SUBLANG_ARABIC_SAUDI_ARABIA = 1
Global Const $SUBLANG_ARABIC_SYRIA = 10
Global Const $SUBLANG_ARABIC_TUNISIA = 7
Global Const $SUBLANG_ARABIC_UAE = 14
Global Const $SUBLANG_ARABIC_YEMEN = 9
Global Const $SUBLANG_AZERI_CYRILLIC = 2
Global Const $SUBLANG_AZERI_LATIN = 1
Global Const $SUBLANG_CHINESE_HONGKONG = 3
Global Const $SUBLANG_CHINESE_MACAU = 5
Global Const $SUBLANG_CHINESE_SIMPLIFIED = 2
Global Const $SUBLANG_CHINESE_SINGAPORE = 4
Global Const $SUBLANG_CHINESE_TRADITIONAL = 1
Global Const $SUBLANG_DEFAULT = 1
Global Const $SUBLANG_DUTCH = 1
Global Const $SUBLANG_DUTCH_BELGIAN = 2
Global Const $SUBLANG_ENGLISH_AUS = 3
Global Const $SUBLANG_ENGLISH_BELIZE = 10
Global Const $SUBLANG_ENGLISH_CAN = 4
Global Const $SUBLANG_ENGLISH_CARIBBEAN = 9
Global Const $SUBLANG_ENGLISH_EIRE = 6
Global Const $SUBLANG_ENGLISH_JAMAICA = 8
Global Const $SUBLANG_ENGLISH_NZ = 5
Global Const $SUBLANG_ENGLISH_PHILIPPINES = 13
Global Const $SUBLANG_ENGLISH_SOUTH_AFRICA = 7
Global Const $SUBLANG_ENGLISH_TRINIDAD = 11
Global Const $SUBLANG_ENGLISH_UK = 2
Global Const $SUBLANG_ENGLISH_US = 1
Global Const $SUBLANG_ENGLISH_ZIMBABWE = 12
Global Const $SUBLANG_FRENCH = 1
Global Const $SUBLANG_FRENCH_BELGIAN = 2
Global Const $SUBLANG_FRENCH_CANADIAN = 3
Global Const $SUBLANG_FRENCH_LUXEMBOURG = 5
Global Const $SUBLANG_FRENCH_MONACO = 6
Global Const $SUBLANG_FRENCH_SWISS = 4
Global Const $SUBLANG_GERMAN = 1
Global Const $SUBLANG_GERMAN_AUSTRIAN = 3
Global Const $SUBLANG_GERMAN_LIECHTENSTEIN = 5
Global Const $SUBLANG_GERMAN_LUXEMBOURG = 4
Global Const $SUBLANG_GERMAN_SWISS = 2
Global Const $SUBLANG_ITALIAN = 1
Global Const $SUBLANG_ITALIAN_SWISS = 2
Global Const $SUBLANG_KASHMIRI_INDIA = 2
Global Const $SUBLANG_KOREAN = 1
Global Const $SUBLANG_LITHUANIAN = 1
Global Const $SUBLANG_MALAY_BRUNEI_DARUSSALAM = 2
Global Const $SUBLANG_MALAY_MALAYSIA = 1
Global Const $SUBLANG_NEPALI_INDIA = 2
Global Const $SUBLANG_NEUTRAL = 0
Global Const $SUBLANG_NORWEGIAN_BOKMAL = 1
Global Const $SUBLANG_NORWEGIAN_NYNORSK = 2
Global Const $SUBLANG_PORTUGUESE = 2
Global Const $SUBLANG_PORTUGUESE_BRAZILIAN = 1
Global Const $SUBLANG_SERBIAN_CYRILLIC = 3
Global Const $SUBLANG_SERBIAN_LATIN = 2
Global Const $SUBLANG_SPANISH = 1
Global Const $SUBLANG_SPANISH_ARGENTINA = 11
Global Const $SUBLANG_SPANISH_BOLIVIA = 16
Global Const $SUBLANG_SPANISH_CHILE = 13
Global Const $SUBLANG_SPANISH_COLOMBIA = 9
Global Const $SUBLANG_SPANISH_COSTA_RICA = 5
Global Const $SUBLANG_SPANISH_DOMINICAN_REPUBLIC = 7
Global Const $SUBLANG_SPANISH_ECUADOR = 12
Global Const $SUBLANG_SPANISH_EL_SALVADOR = 17
Global Const $SUBLANG_SPANISH_GUATEMALA = 4
Global Const $SUBLANG_SPANISH_HONDURAS = 18
Global Const $SUBLANG_SPANISH_MEXICAN = 2
Global Const $SUBLANG_SPANISH_MODERN = 3
Global Const $SUBLANG_SPANISH_NICARAGUA = 19
Global Const $SUBLANG_SPANISH_PANAMA = 6
Global Const $SUBLANG_SPANISH_PARAGUAY = 15
Global Const $SUBLANG_SPANISH_PERU = 10
Global Const $SUBLANG_SPANISH_PUERTO_RICO = 20
Global Const $SUBLANG_SPANISH_URUGUAY = 14
Global Const $SUBLANG_SPANISH_VENEZUELA = 8
Global Const $SUBLANG_SWEDISH = 1
Global Const $SUBLANG_SWEDISH_FINLAND = 2
Global Const $SUBLANG_SYS_DEFAULT = 2
Global Const $SUBLANG_URDU_INDIA = 2
Global Const $SUBLANG_URDU_PAKISTAN = 1
Global Const $SUBLANG_UZBEK_CYRILLIC = 2
Global Const $SORT_DEFAULT = 0
Global Const $SORT_JAPANESE_XJIS = 0
Global Const $SORT_JAPANESE_UNICODE = 1
Global Const $SORT_CHINESE_BIG5 = 0
Global Const $SORT_CHINESE_PRCP = 0
Global Const $SORT_CHINESE_UNICODE = 1
Global Const $SORT_CHINESE_PRC = 2
Global Const $SORT_KOREAN_KSC = 0
Global Const $SORT_KOREAN_UNICODE = 1
Global Const $SORT_GERMAN_PHONE_BOOK = 1
Global Const $SORT_HUNGARIAN_DEFAULT = 0
Global Const $SORT_HUNGARIAN_TECHNICAL = 1
Global Const $SORT_GEORGIAN_TRADITIONAL = 0
Global Const $SORT_GEORGIAN_MODERN = 1
Global $_TIMERS_ATIMERIDS[1][3]
Func _Timer_Diff($ITIMESTAMP)
	Return 1000 * (__TIMER_QUERYPERFORMANCECOUNTER() - $ITIMESTAMP) / __TIMER_QUERYPERFORMANCEFREQUENCY()
EndFunc   ;==>_Timer_Diff
Func _Timer_GetIdleTime()
	Local $TSTRUCT = DllStructCreate("uint;dword")
	DllStructSetData($TSTRUCT, 1, DllStructGetSize($TSTRUCT))
	Local $ARESULT = DllCall("user32.dll", "bool", "GetLastInputInfo", "ptr", DllStructGetPtr($TSTRUCT))
	If @error Or $ARESULT[0] = 0 Then Return SetError(@error, @extended, 0)
	Local $AVTICKS = DllCall("Kernel32.dll", "dword", "GetTickCount")
	If @error Or Not $ARESULT[0] Then Return SetError(@error, @extended, 0)
	Local $IDIFF = $AVTICKS[0] - DllStructGetData($TSTRUCT, 2)
	If $IDIFF < 0 Then Return SetExtended(1, $AVTICKS[0])
	Return $IDIFF
EndFunc   ;==>_Timer_GetIdleTime
Func _Timer_GetTimerID($IWPARAM)
	Local $_ITIMERID = Dec(Hex($IWPARAM, 8)), $IMAX = UBound($_TIMERS_ATIMERIDS) - 1
	For $X = 1 To $IMAX
		If $_ITIMERID = $_TIMERS_ATIMERIDS[$X][1] Then Return $_TIMERS_ATIMERIDS[$X][0]
	Next
	Return 0
EndFunc   ;==>_Timer_GetTimerID
Func _Timer_Init()
	Return __TIMER_QUERYPERFORMANCECOUNTER()
EndFunc   ;==>_Timer_Init
Func _Timer_KillAllTimers($HWND)
	Local $INUMTIMERS = $_TIMERS_ATIMERIDS[0][0]
	If $INUMTIMERS = 0 Then Return False
	Local $ARESULT, $HCALLBACK = 0
	For $X = $INUMTIMERS To 1 Step -1
		If IsHWnd($HWND) Then
			$ARESULT = DllCall("user32.dll", "bool", "KillTimer", "hwnd", $HWND, "uint_ptr", $_TIMERS_ATIMERIDS[$X][1])
		Else
			$ARESULT = DllCall("user32.dll", "bool", "KillTimer", "hwnd", $HWND, "uint_ptr", $_TIMERS_ATIMERIDS[$X][0])
		EndIf
		If @error Or $ARESULT[0] = 0 Then Return SetError(@error, @extended, False)
		$HCALLBACK = $_TIMERS_ATIMERIDS[$X][2]
		If $HCALLBACK <> 0 Then DllCallbackFree($HCALLBACK)
		$_TIMERS_ATIMERIDS[0][0] -= 1
	Next
	ReDim $_TIMERS_ATIMERIDS[1][3]
	Return True
EndFunc   ;==>_Timer_KillAllTimers
Func _Timer_KillTimer($HWND, $ITIMERID)
	Local $ARESULT[1] = [0], $HCALLBACK = 0, $IUBOUND = UBound($_TIMERS_ATIMERIDS) - 1
	For $X = 1 To $IUBOUND
		If $_TIMERS_ATIMERIDS[$X][0] = $ITIMERID Then
			If IsHWnd($HWND) Then
				$ARESULT = DllCall("user32.dll", "bool", "KillTimer", "hwnd", $HWND, "uint_ptr", $_TIMERS_ATIMERIDS[$X][1])
			Else
				$ARESULT = DllCall("user32.dll", "bool", "KillTimer", "hwnd", $HWND, "uint_ptr", $_TIMERS_ATIMERIDS[$X][0])
			EndIf
			If @error Or $ARESULT[0] = 0 Then Return SetError(@error, @extended, False)
			$HCALLBACK = $_TIMERS_ATIMERIDS[$X][2]
			If $HCALLBACK <> 0 Then DllCallbackFree($HCALLBACK)
			For $I = $X To $IUBOUND - 1
				$_TIMERS_ATIMERIDS[$I][0] = $_TIMERS_ATIMERIDS[$I + 1][0]
				$_TIMERS_ATIMERIDS[$I][1] = $_TIMERS_ATIMERIDS[$I + 1][1]
				$_TIMERS_ATIMERIDS[$I][2] = $_TIMERS_ATIMERIDS[$I + 1][2]
			Next
			ReDim $_TIMERS_ATIMERIDS[UBound($_TIMERS_ATIMERIDS - 1)][3]
			$_TIMERS_ATIMERIDS[0][0] -= 1
			ExitLoop
		EndIf
	Next
	Return $ARESULT[0] <> 0
EndFunc   ;==>_Timer_KillTimer
Func __TIMER_QUERYPERFORMANCECOUNTER()
	Local $ARESULT = DllCall("kernel32.dll", "bool", "QueryPerformanceCounter", "int64*", 0)
	If @error Then Return SetError(@error, @extended, -1)
	Return SetExtended($ARESULT[0], $ARESULT[1])
EndFunc   ;==>__TIMER_QUERYPERFORMANCECOUNTER
Func __TIMER_QUERYPERFORMANCEFREQUENCY()
	Local $ARESULT = DllCall("kernel32.dll", "bool", "QueryPerformanceFrequency", "int64*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($ARESULT[0], $ARESULT[1])
EndFunc   ;==>__TIMER_QUERYPERFORMANCEFREQUENCY
Func _Timer_SetTimer($HWND, $IELAPSE = 250, $STIMERFUNC = "", $ITIMERID = -1)
	Local $ARESULT[1] = [0], $PTIMERFUNC = 0, $HCALLBACK = 0, $IINDEX = $_TIMERS_ATIMERIDS[0][0] + 1
	If $ITIMERID = -1 Then
		ReDim $_TIMERS_ATIMERIDS[$IINDEX + 1][3]
		$_TIMERS_ATIMERIDS[0][0] = $IINDEX
		$ITIMERID = $IINDEX + 1000
		For $X = 1 To $IINDEX
			If $_TIMERS_ATIMERIDS[$X][0] = $ITIMERID Then
				$ITIMERID = $ITIMERID + 1
				$X = 0
			EndIf
		Next
		If $STIMERFUNC <> "" Then
			$HCALLBACK = DllCallbackRegister($STIMERFUNC, "none", "hwnd;int;uint_ptr;dword")
			If $HCALLBACK = 0 Then Return SetError(-1, -1, 0)
			$PTIMERFUNC = DllCallbackGetPtr($HCALLBACK)
			If $PTIMERFUNC = 0 Then Return SetError(-1, -1, 0)
		EndIf
		$ARESULT = DllCall("user32.dll", "uint_ptr", "SetTimer", "hwnd", $HWND, "uint_ptr", $ITIMERID, "uint", $IELAPSE, "ptr", $PTIMERFUNC)
		If @error Or $ARESULT[0] = 0 Then Return SetError(@error, @extended, 0)
		$_TIMERS_ATIMERIDS[$IINDEX][0] = $ARESULT[0]
		$_TIMERS_ATIMERIDS[$IINDEX][1] = $ITIMERID
		$_TIMERS_ATIMERIDS[$IINDEX][2] = $HCALLBACK
	Else
		For $X = 1 To $IINDEX - 1
			If $_TIMERS_ATIMERIDS[$X][0] = $ITIMERID Then
				If IsHWnd($HWND) Then $ITIMERID = $_TIMERS_ATIMERIDS[$X][1]
				$HCALLBACK = $_TIMERS_ATIMERIDS[$X][2]
				If $HCALLBACK <> 0 Then
					$PTIMERFUNC = DllCallbackGetPtr($HCALLBACK)
					If $PTIMERFUNC = 0 Then Return SetError(-1, -1, 0)
				EndIf
				$ARESULT = DllCall("user32.dll", "uint_ptr", "SetTimer", "hwnd", $HWND, "uint_ptr", $ITIMERID, "int", $IELAPSE, "ptr", $PTIMERFUNC)
				If @error Or $ARESULT[0] = 0 Then Return SetError(@error, @extended, 0)
				ExitLoop
			EndIf
		Next
	EndIf
	Return $ARESULT[0]
EndFunc   ;==>_Timer_SetTimer
#Region Header
#EndRegion Header
#Region Global Variables and Constants
Global Const $IEAU3VERSIONINFO[6] = ["V", 2, 4, 0, "20071231", "V2.4-0"]
Global Const $LSFW_LOCK = 1, $LSFW_UNLOCK = 2
Global $__IELOADWAITTIMEOUT = 300000
Global $__IEAU3DEBUG = False
Global $__IEAU3V1COMPATIBILITY
Global $__IEAU3DEBUG_USEOLDDLLCALL = False
Global $_IEERRORNOTIFY = True
Global $OIEERRORHANDLER, $SIEUSERERRORHANDLER
Global $IECOMERRORNUMBER, $IECOMERRORNUMBERHEX, $IECOMERRORDESCRIPTION, $IECOMERRORSCRIPTLINE, $IECOMERRORWINDESCRIPTION, $IECOMERRORSOURCE, $IECOMERRORHELPFILE, $IECOMERRORHELPCONTEXT, $IECOMERRORLASTDLLERROR, $IECOMERRORCOMOBJ, $IECOMERROROUTPUT
Global Enum $_IESTATUS_SUCCESS = 0, $_IESTATUS_GENERALERROR, $_IESTATUS_COMERROR, $_IESTATUS_INVALIDDATATYPE, $_IESTATUS_INVALIDOBJECTTYPE, $_IESTATUS_INVALIDVALUE, $_IESTATUS_LOADWAITTIMEOUT, $_IESTATUS_NOMATCH, $_IESTATUS_ACCESSISDENIED, $_IESTATUS_CLIENTDISCONNECTED
Global Enum Step *2$_IENOTIFYLEVEL_NONE = 0, $_IENOTIFYNOTIFYLEVEL_WARNING = 1, $_IENOTIFYNOTIFYLEVEL_ERROR, $_IENOTIFYNOTIFYLEVEL_COMERROR
Global Enum Step *2$_IENOTIFYMETHOD_SILENT = 0, $_IENOTIFYMETHOD_CONSOLE = 1, $_IENOTIFYMETHOD_TOOLTIP, $_IENOTIFYMETHOD_MSGBOX
#EndRegion Global Variables and Constants
#Region Core functions
Func _IECreate($S_URL = "about:blank", $F_TRYATTACH = 0, $F_VISIBLE = 1, $F_WAIT = 1, $F_TAKEFOCUS = 1)
	If $__IEAU3V1COMPATIBILITY Then
		Switch String($S_URL)
			Case "0"
				$S_URL = "about:blank"
				$F_VISIBLE = 0
				__IEERRORNOTIFY("Warning", "_IECreate", "", "Using deprecated behavior - $f_visible is now parameter 3 instead of parameter 1")
			Case "1"
				$S_URL = "about:blank"
				$F_VISIBLE = 1
				__IEERRORNOTIFY("Warning", "_IECreate", "", "Using deprecated behavior - $f_visible is now parameter 3 instead of parameter 1")
		EndSwitch
	EndIf
	If Not $F_VISIBLE Then $F_TAKEFOCUS = 0
	If $F_TRYATTACH Then
		Local $ORESULT = _IEAttach($S_URL, "url")
		If IsObj($ORESULT) Then
			If $F_TAKEFOCUS Then WinActivate(HWnd($ORESULT.HWND))
			Return SetError($_IESTATUS_SUCCESS, 1, $ORESULT)
		EndIf
	EndIf
	Local $F_MUSTUNLOCK = 0
	If Not $F_VISIBLE And __IELOCKSETFOREGROUNDWINDOW($LSFW_LOCK) Then $F_MUSTUNLOCK = 1
	Local $O_OBJECT = ObjCreate("InternetExplorer.Application")
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IECreate", "", "Browser Object Creation Failed")
		Return SetError($_IESTATUS_GENERALERROR, 0, 0)
	EndIf
	$O_OBJECT.visible = $F_VISIBLE
	If $F_MUSTUNLOCK And Not __IELOCKSETFOREGROUNDWINDOW($LSFW_UNLOCK) Then __IEERRORNOTIFY("Warning", "_IECreate", "", "Foreground Window Unlock Failed!")
	_IENavigate($O_OBJECT, $S_URL, $F_WAIT)
	Return SetError(@error, 0, $O_OBJECT)
EndFunc   ;==>_IECreate
Func _IECreateEmbedded()
	Local $O_OBJECT = ObjCreate("Shell.Explorer.2")
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IECreateEmbedded", "", "WebBrowser Object Creation Failed")
		Return SetError($_IESTATUS_GENERALERROR, 0, 0)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT)
EndFunc   ;==>_IECreateEmbedded
Func _IENavigate(ByRef $O_OBJECT, $S_URL, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IENavigate", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
		__IEERRORNOTIFY("Error", "_IENavigate", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.navigate($S_URL)
	If $F_WAIT Then
		_IELoadWait($O_OBJECT)
		Return SetError(@error, 0, -1)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, -1)
EndFunc   ;==>_IENavigate
Func _IEAttach($S_STRING, $S_MODE = "Title", $I_INSTANCE = 1)
	$S_MODE = StringLower($S_MODE)
	$I_INSTANCE = Int($I_INSTANCE)
	If $I_INSTANCE < 1 Then
		__IEERRORNOTIFY("Error", "_IEAttach", "$_IEStatus_InvalidValue", "$i_instance < 1")
		Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
	EndIf
	If $S_MODE = "embedded" Or $S_MODE = "dialogbox" Then
		Local $IWINTITLEMATCHMODE = Opt("WinTitleMatchMode", 2)
		If $S_MODE = "dialogbox" And $I_INSTANCE > 1 Then
			If IsHWnd($S_STRING) Then
				$I_INSTANCE = 1
				__IEERRORNOTIFY("Warning", "_IEAttach", "$_IEStatus_GeneralError", "$i_instance > 1 invalid with HWnd and DialogBox.  Setting to 1.")
			Else
				Local $A_WINLIST = WinList($S_STRING, "")
				If $I_INSTANCE <= $A_WINLIST[0][0] Then
					$S_STRING = $A_WINLIST[$I_INSTANCE][1]
					$I_INSTANCE = 1
				Else
					__IEERRORNOTIFY("Warning", "_IEAttach", "$_IEStatus_NoMatch")
					Opt("WinTitleMatchMode", $IWINTITLEMATCHMODE)
					Return SetError($_IESTATUS_NOMATCH, 1, 0)
				EndIf
			EndIf
		EndIf
		Local $H_CONTROL = ControlGetHandle($S_STRING, "", "[CLASS:Internet Explorer_Server; INSTANCE:" & $I_INSTANCE & "]")
		Local $ORESULT = __IECONTROLGETOBJFROMHWND($H_CONTROL)
		Opt("WinTitleMatchMode", $IWINTITLEMATCHMODE)
		If IsObj($ORESULT) Then
			Return SetError($_IESTATUS_SUCCESS, 0, $ORESULT)
		Else
			__IEERRORNOTIFY("Warning", "_IEAttach", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
		EndIf
	EndIf
	Local $O_SHELL = ObjCreate("Shell.Application")
	Local $O_SHELLWINDOWS = $O_SHELL.Windows()
	Local $I_TMP = 1
	Local $F_NOTIFYSTATUS, $STATUS, $F_ISBROWSER, $S_TMP
	For $O_WINDOW In $O_SHELLWINDOWS
		$F_ISBROWSER = True
		$STATUS = __IEINTERNALERRORHANDLERREGISTER()
		If Not $STATUS Then __IEERRORNOTIFY("Warning", "_IEAttach", "Cannot register internal error handler, cannot trap COM errors", "Use _IEErrorHandlerRegister() to register a user error handler")
		$F_NOTIFYSTATUS = _IEErrorNotify()
		_IEErrorNotify(False)
		If $F_ISBROWSER Then
			$S_TMP = $O_WINDOW.type
			If @error Then $F_ISBROWSER = False
		EndIf
		If $F_ISBROWSER Then
			$S_TMP = $O_WINDOW.document.title
			If @error Then $F_ISBROWSER = False
		EndIf
		_IEErrorNotify($F_NOTIFYSTATUS)
		__IEINTERNALERRORHANDLERDEREGISTER()
		If $F_ISBROWSER Then
			Switch $S_MODE
				Case "title"
					If StringInStr($O_WINDOW.document.title, $S_STRING) > 0 Then
						If $I_INSTANCE = $I_TMP Then
							Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
						Else
							$I_TMP += 1
						EndIf
					EndIf
				Case "instance"
					If $I_INSTANCE = $I_TMP Then
						Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
					Else
						$I_TMP += 1
					EndIf
				Case "windowtitle"
					Local $F_FOUND = False
					$S_TMP = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\", "Window Title")
					If Not @error Then
						If StringInStr($O_WINDOW.document.title & " - " & $S_TMP, $S_STRING) Then $F_FOUND = True
					Else
						If StringInStr($O_WINDOW.document.title & " - Microsoft Internet Explorer", $S_STRING) Then $F_FOUND = True
						If StringInStr($O_WINDOW.document.title & " - Windows Internet Explorer", $S_STRING) Then $F_FOUND = True
					EndIf
					If $F_FOUND Then
						If $I_INSTANCE = $I_TMP Then
							Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
						Else
							$I_TMP += 1
						EndIf
					EndIf
				Case "url"
					If StringInStr($O_WINDOW.LocationURL, $S_STRING) > 0 Then
						If $I_INSTANCE = $I_TMP Then
							Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
						Else
							$I_TMP += 1
						EndIf
					EndIf
				Case "text"
					If StringInStr($O_WINDOW.document.body.innerText, $S_STRING) > 0 Then
						If $I_INSTANCE = $I_TMP Then
							Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
						Else
							$I_TMP += 1
						EndIf
					EndIf
				Case "html"
					If StringInStr($O_WINDOW.document.body.innerHTML, $S_STRING) > 0 Then
						If $I_INSTANCE = $I_TMP Then
							Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
						Else
							$I_TMP += 1
						EndIf
					EndIf
				Case "hwnd"
					If $I_INSTANCE > 1 Then
						$I_INSTANCE = 1
						__IEERRORNOTIFY("Warning", "_IEAttach", "$_IEStatus_GeneralError", "$i_instance > 1 invalid with HWnd.  Setting to 1.")
					EndIf
					If _IEPropertyGet($O_WINDOW, "hwnd") = $S_STRING Then
						Return SetError($_IESTATUS_SUCCESS, 0, $O_WINDOW)
					EndIf
				Case Else
					__IEERRORNOTIFY("Error", "_IEAttach", "$_IEStatus_InvalidValue", "Invalid Mode Specified")
					Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
			EndSwitch
		EndIf
	Next
	__IEERRORNOTIFY("Warning", "_IEAttach", "$_IEStatus_NoMatch")
	Return SetError($_IESTATUS_NOMATCH, 1, 0)
EndFunc   ;==>_IEAttach
Func _IELoadWait(ByRef $O_OBJECT, $I_DELAY = 0, $I_TIMEOUT = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IELoadWait", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IELoadWait", "$_IEStatus_InvalidObjectType", ObjName($O_OBJECT))
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $OTEMP, $F_ABORT = False, $I_ERRORSTATUSCODE = $_IESTATUS_SUCCESS
	Local $STATUS = __IEINTERNALERRORHANDLERREGISTER()
	If Not $STATUS Then __IEERRORNOTIFY("Warning", "_IELoadWait", "Cannot register internal error handler, cannot trap COM errors", "Use _IEErrorHandlerRegister() to register a user error handler")
	Local $F_NOTIFYSTATUS = _IEErrorNotify()
	_IEErrorNotify(False)
	Sleep($I_DELAY)
	Local $IELOADWAITTIMER = TimerInit()
	If $I_TIMEOUT = -1 Then $I_TIMEOUT = $__IELOADWAITTIMEOUT
	Switch ObjName($O_OBJECT)
		Case "IWebBrowser2"
			While Not (String($O_OBJECT.readyState) = "complete" Or $O_OBJECT.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
			While Not (String($O_OBJECT.document.readyState) = "complete" Or $O_OBJECT.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
		Case "DispHTMLWindow2"
			While Not (String($O_OBJECT.document.readyState) = "complete" Or $O_OBJECT.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
			While Not (String($O_OBJECT.top.document.readyState) = "complete" Or $O_OBJECT.top.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
		Case "DispHTMLDocument"
			$OTEMP = $O_OBJECT.parentWindow
			While Not (String($OTEMP.document.readyState) = "complete" Or $OTEMP.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
			While Not (String($OTEMP.top.document.readyState) = "complete" Or $OTEMP.top.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
		Case Else
			$OTEMP = $O_OBJECT.document.parentWindow
			While Not (String($OTEMP.document.readyState) = "complete" Or $OTEMP.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
			While Not (String($OTEMP.top.document.readyState) = "complete" Or $O_OBJECT.top.document.readyState = 4 Or $F_ABORT)
				If (TimerDiff($IELOADWAITTIMER) > $I_TIMEOUT) Then
					$I_ERRORSTATUSCODE = $_IESTATUS_LOADWAITTIMEOUT
					$F_ABORT = True
				EndIf
				If @error = $_IESTATUS_COMERROR And __IECOMERRORUNRECOVERABLE() Then
					$I_ERRORSTATUSCODE = __IECOMERRORUNRECOVERABLE()
					$F_ABORT = True
				EndIf
				Sleep(100)
			WEnd
	EndSwitch
	_IEErrorNotify($F_NOTIFYSTATUS)
	__IEINTERNALERRORHANDLERDEREGISTER()
	Switch $I_ERRORSTATUSCODE
		Case $_IESTATUS_SUCCESS
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $_IESTATUS_LOADWAITTIMEOUT
			__IEERRORNOTIFY("Warning", "_IELoadWait", "$_IEStatus_LoadWaitTimeout")
			Return SetError($_IESTATUS_LOADWAITTIMEOUT, 3, 0)
		Case $_IESTATUS_ACCESSISDENIED
			__IEERRORNOTIFY("Warning", "_IELoadWait", "$_IEStatus_AccessIsDenied", "Cannot verify readyState.  Likely casue: cross-site scripting security restriction.")
			Return SetError($_IESTATUS_ACCESSISDENIED, 0, 0)
		Case $_IESTATUS_CLIENTDISCONNECTED
			__IEERRORNOTIFY("Error", "_IELoadWait", "$_IEStatus_ClientDisconnected", "Browser has been deleted prior to operation.")
			Return SetError($_IESTATUS_CLIENTDISCONNECTED, 0, 0)
		Case Else
			__IEERRORNOTIFY("Error", "_IELoadWait", "$_IEStatus_GeneralError", "Invalid Error Status - Notify IE.au3 developer")
			Return SetError($_IESTATUS_GENERALERROR, 0, 0)
	EndSwitch
EndFunc   ;==>_IELoadWait
Func _IELoadWaitTimeout($I_TIMEOUT = -1)
	If $I_TIMEOUT = -1 Then
		Return SetError($_IESTATUS_SUCCESS, 0, $__IELOADWAITTIMEOUT)
	Else
		$__IELOADWAITTIMEOUT = $I_TIMEOUT
		Return SetError($_IESTATUS_SUCCESS, 0, 1)
	EndIf
EndFunc   ;==>_IELoadWaitTimeout
#EndRegion Core functions
#Region Frame Functions
Func _IEIsFrameSet(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEIsFrameSet", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If String($O_OBJECT.document.body.tagName) = "FRAMESET" Then
		Return SetError($_IESTATUS_SUCCESS, 0, 1)
	Else
		Return SetError($_IESTATUS_SUCCESS, 0, 0)
	EndIf
EndFunc   ;==>_IEIsFrameSet
Func _IEFrameGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFrameGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.parentwindow.frames.length, $O_OBJECT.document.parentwindow.frames)
		Case $I_INDEX > -1 And $I_INDEX < $O_OBJECT.document.parentwindow.frames.length
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.parentwindow.frames.length, $O_OBJECT.document.parentwindow.frames.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IEFrameGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Warning", "_IEFrameGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndSelect
EndFunc   ;==>_IEFrameGetCollection
Func _IEFrameGetObjByName(ByRef $O_OBJECT, $S_NAME)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFrameGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $OTEMP, $OFRAMES
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEFrameGetObjByName", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	If __IEISOBJTYPE($O_OBJECT, "document") Then
		$OTEMP = $O_OBJECT.parentWindow
	Else
		$OTEMP = $O_OBJECT.document.parentWindow
	EndIf
	If _IEIsFrameSet($OTEMP) Then
		$OFRAMES = _IETagNameGetCollection($OTEMP, "frame")
	Else
		$OFRAMES = _IETagNameGetCollection($OTEMP, "iframe")
	EndIf
	If $OFRAMES.length Then
		For $OFRAME In $OFRAMES
			If $OFRAME.name = $S_NAME Then Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.frames($S_NAME))
		Next
		__IEERRORNOTIFY("Warning", "_IEFrameGetObjByName", "$_IEStatus_NoMatch", "No frames matching name")
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	Else
		__IEERRORNOTIFY("Warning", "_IEFrameGetObjByName", "$_IEStatus_NoMatch", "No Frames found")
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndIf
EndFunc   ;==>_IEFrameGetObjByName
#EndRegion Frame Functions
#Region Link functions
Func _IELinkClickByText(ByRef $O_OBJECT, $S_LINKTEXT, $I_INDEX = 0, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IELinkClickByText", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $FOUND = 0, $LINKTEXT, $LINKS = $O_OBJECT.document.links
	$I_INDEX = Number($I_INDEX)
	For $LINK In $LINKS
		$LINKTEXT = $LINK.outerText & ""
		If $LINKTEXT = $S_LINKTEXT Then
			If ($FOUND = $I_INDEX) Then
				$LINK.click
				If $F_WAIT Then
					_IELoadWait($O_OBJECT)
					Return SetError(@error, 0, -1)
				EndIf
				Return SetError($_IESTATUS_SUCCESS, 0, -1)
			EndIf
			$FOUND = $FOUND + 1
		EndIf
	Next
	__IEERRORNOTIFY("Warning", "_IELinkClickByText", "$_IEStatus_NoMatch")
	Return SetError($_IESTATUS_NOMATCH, 0, 0)
EndFunc   ;==>_IELinkClickByText
Func _IELinkClickByIndex(ByRef $O_OBJECT, $I_INDEX, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IELinkClickByIndex", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $OLINKS = $O_OBJECT.document.links, $OLINK
	$I_INDEX = Number($I_INDEX)
	If ($I_INDEX >= 0) And ($I_INDEX <= $OLINKS.length - 1) Then
		$OLINK = $OLINKS($I_INDEX)
		$OLINK.click
		If $F_WAIT Then
			_IELoadWait($O_OBJECT)
			Return SetError(@error, 0, -1)
		EndIf
		Return SetError($_IESTATUS_SUCCESS, 0, -1)
	Else
		__IEERRORNOTIFY("Warning", "_IELinkClickByIndex", "$_IEStatus_NoMatch")
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndIf
EndFunc   ;==>_IELinkClickByIndex
Func _IELinkGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IELinkGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.links.length, $O_OBJECT.document.links)
		Case $I_INDEX > -1 And $I_INDEX < $O_OBJECT.document.links.length
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.links.length, $O_OBJECT.document.links.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IELinkGetCollection", "$_IEStatus_InvalidValue")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Warning", "_IELinkGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndSelect
EndFunc   ;==>_IELinkGetCollection
#EndRegion Link functions
#Region Image functions
Func _IEImgClick(ByRef $O_OBJECT, $S_LINKTEXT, $S_MODE = "src", $I_INDEX = 0, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEImgClick", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $LINKTEXT, $FOUND = 0, $IMGS = $O_OBJECT.document.images
	$S_MODE = StringLower($S_MODE)
	$I_INDEX = Number($I_INDEX)
	For $IMG In $IMGS
		Select
			Case $S_MODE = "alt"
				$LINKTEXT = $IMG.alt
			Case $S_MODE = "name"
				$LINKTEXT = $IMG.name
			Case $S_MODE = "src"
				$LINKTEXT = $IMG.src
			Case Else
				__IEERRORNOTIFY("Error", "_IEImgClick", "$_IEStatus_InvalidValue", "Invalid mode: " & $S_MODE)
				Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
		EndSelect
		If StringInStr($LINKTEXT, $S_LINKTEXT) Then
			If ($FOUND = $I_INDEX) Then
				$IMG.click
				If $F_WAIT Then
					_IELoadWait($O_OBJECT)
					Return SetError(@error, 0, -1)
				EndIf
				Return SetError($_IESTATUS_SUCCESS, 0, -1)
			EndIf
			$FOUND = $FOUND + 1
		EndIf
	Next
	__IEERRORNOTIFY("Warning", "_IEImgClick", "$_IEStatus_NoMatch")
	Return SetError($_IESTATUS_NOMATCH, 0, 0)
EndFunc   ;==>_IEImgClick
Func _IEImgGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEImgGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $OTEMP = _IEDocGetObj($O_OBJECT)
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.images.length, $OTEMP.images)
		Case $I_INDEX > -1 And $I_INDEX < $OTEMP.images.length
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.images.length, $OTEMP.images.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IEImgGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Warning", "_IEImgGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
	EndSelect
EndFunc   ;==>_IEImgGetCollection
#EndRegion Image functions
#Region Form functions
Func _IEFormGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $OTEMP = _IEDocGetObj($O_OBJECT)
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.forms.length, $OTEMP.forms)
		Case $I_INDEX > -1 And $I_INDEX < $OTEMP.forms.length
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.forms.length, $OTEMP.forms.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IEFormGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Warning", "_IEFormGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
	EndSelect
EndFunc   ;==>_IEFormGetCollection
Func _IEFormGetObjByName(ByRef $O_OBJECT, $S_NAME, $I_INDEX = 0)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $I_LENGTH = 0
	Local $O_COL = $O_OBJECT.document.forms.item($S_NAME)
	If IsObj($O_COL) Then
		If __IEISOBJTYPE($O_COL, "elementcollection") Then
			$I_LENGTH = $O_COL.length
		Else
			$I_LENGTH = 1
		EndIf
	EndIf
	$I_INDEX = Number($I_INDEX)
	If $I_INDEX = -1 Then
		Return SetError($_IESTATUS_SUCCESS, $I_LENGTH, $O_OBJECT.document.forms.item($S_NAME))
	Else
		If IsObj($O_OBJECT.document.forms.item($S_NAME, $I_INDEX)) Then
			Return SetError($_IESTATUS_SUCCESS, $I_LENGTH, $O_OBJECT.document.forms.item($S_NAME, $I_INDEX))
		Else
			__IEERRORNOTIFY("Warning", "_IEFormGetObjByName", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 0, 0)
		EndIf
	EndIf
EndFunc   ;==>_IEFormGetObjByName
Func _IEFormElementGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.elements.length, $O_OBJECT.elements)
		Case $I_INDEX > -1 And $I_INDEX < $O_OBJECT.elements.length
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.elements.length, $O_OBJECT.elements.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
	EndSelect
EndFunc   ;==>_IEFormElementGetCollection
Func _IEFormElementGetObjByName(ByRef $O_OBJECT, $S_NAME, $I_INDEX = 0)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetObjByName", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $I_LENGTH = 0
	Local $O_COL = $O_OBJECT.elements.item($S_NAME)
	If IsObj($O_COL) Then
		If __IEISOBJTYPE($O_COL, "elementcollection") Then
			$I_LENGTH = $O_COL.length
		Else
			$I_LENGTH = 1
		EndIf
	EndIf
	$I_INDEX = Number($I_INDEX)
	If $I_INDEX = -1 Then
		Return SetError($_IESTATUS_SUCCESS, $I_LENGTH, $O_OBJECT.elements.item($S_NAME))
	Else
		If IsObj($O_OBJECT.elements.item($S_NAME, $I_INDEX)) Then
			Return SetError($_IESTATUS_SUCCESS, $I_LENGTH, $O_OBJECT.elements.item($S_NAME, $I_INDEX))
		Else
			__IEERRORNOTIFY("Warning", "_IEFormElementGetObjByName", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 0, 0)
		EndIf
	EndIf
EndFunc   ;==>_IEFormElementGetObjByName
Func _IEFormElementGetValue(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetValue", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "forminputelement") Then
		__IEERRORNOTIFY("Error", "_IEFormElementGetValue", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	SetError($_IESTATUS_SUCCESS)
	If $O_OBJECT.value Then
		Return $O_OBJECT.value
	Else
		Return ""
	EndIf
EndFunc   ;==>_IEFormElementGetValue
Func _IEFormElementSetValue(ByRef $O_OBJECT, $S_NEWVALUE, $F_FIREEVENT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "forminputelement") Then
		__IEERRORNOTIFY("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	If String($O_OBJECT.type) = "file" Then
		__IEERRORNOTIFY("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidObjectType", "Browser securuty prevents SetValue of TYPE=FILE")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.value = $S_NEWVALUE
	If $F_FIREEVENT Then
		$O_OBJECT.fireEvent("OnChange")
		$O_OBJECT.fireEvent("OnClick")
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>_IEFormElementSetValue
Func _IEFormElementOptionSelect(ByRef $O_OBJECT, $S_STRING, $F_SELECT = 1, $S_MODE = "byValue", $F_FIREEVENT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "formselectelement") Then
		__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $OITEMS = $O_OBJECT.options, $INUMITEMS = $O_OBJECT.options.length, $F_ISMULTIPLE = $O_OBJECT.multiple
	Switch $S_MODE
		Case "byValue"
			For $OITEM In $OITEMS
				If $OITEM.value = $S_STRING Then
					Switch $F_SELECT
						Case -1
							Return SetError($_IESTATUS_SUCCESS, 0, $OITEM.selected)
						Case 0
							If Not $F_ISMULTIPLE Then
								__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "$f_select=0 only valid for type=select multiple")
								SetError($_IESTATUS_INVALIDVALUE, 3)
							EndIf
							If $OITEM.selected Then
								$OITEM.selected = False
								If $F_FIREEVENT Then
									$O_OBJECT.fireEvent("onChange")
									$O_OBJECT.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IESTATUS_SUCCESS, 0, 1)
						Case 1
							If Not $OITEM.selected Then
								$OITEM.selected = True
								If $F_FIREEVENT Then
									$O_OBJECT.fireEvent("onChange")
									$O_OBJECT.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IESTATUS_SUCCESS, 0, 1)
						Case Else
							__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
							Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
					EndSwitch
					__IEERRORNOTIFY("Warning", "_IEFormElementOptionSelect", "$_IEStatus_NoMatch", "Value not matched")
					Return SetError($_IESTATUS_NOMATCH, 2, 0)
				EndIf
			Next
		Case "byText"
			For $OITEM In $OITEMS
				If String($OITEM.text) = $S_STRING Then
					Switch $F_SELECT
						Case -1
							Return SetError($_IESTATUS_SUCCESS, 0, $OITEM.selected)
						Case 0
							If Not $F_ISMULTIPLE Then
								__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "$f_select=0 only valid for type=select multiple")
								SetError($_IESTATUS_INVALIDVALUE, 3)
							EndIf
							If $OITEM.selected Then
								$OITEM.selected = False
								If $F_FIREEVENT Then
									$O_OBJECT.fireEvent("onChange")
									$O_OBJECT.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IESTATUS_SUCCESS, 0, 1)
						Case 1
							If Not $OITEM.selected Then
								$OITEM.selected = True
								If $F_FIREEVENT Then
									$O_OBJECT.fireEvent("onChange")
									$O_OBJECT.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IESTATUS_SUCCESS, 0, 1)
						Case Else
							__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
							Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
					EndSwitch
					__IEERRORNOTIFY("Warning", "_IEFormElementOptionSelect", "$_IEStatus_NoMatch", "Text not matched")
					Return SetError($_IESTATUS_NOMATCH, 2, 0)
				EndIf
			Next
		Case "byIndex"
			Local $I_INDEX = Number($S_STRING)
			If $I_INDEX < 0 Or $I_INDEX >= $INUMITEMS Then
				__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid index value, " & $I_INDEX)
				Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
			EndIf
			$OITEM = $OITEMS.item($I_INDEX)
			Switch $F_SELECT
				Case -1
					Return SetError($_IESTATUS_SUCCESS, 0, $OITEMS.item($I_INDEX).selected)
				Case 0
					If Not $F_ISMULTIPLE Then
						__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "$f_select=0 only valid for type=select multiple")
						SetError($_IESTATUS_INVALIDVALUE, 3)
					EndIf
					If $OITEM.selected Then
						$OITEMS.item($I_INDEX).selected = False
						If $F_FIREEVENT Then
							$O_OBJECT.fireEvent("onChange")
							$O_OBJECT.fireEvent("OnClick")
						EndIf
					EndIf
					Return SetError($_IESTATUS_SUCCESS, 0, 1)
				Case 1
					If Not $OITEM.selected Then
						$OITEMS.item($I_INDEX).selected = True
						If $F_FIREEVENT Then
							$O_OBJECT.fireEvent("onChange")
							$O_OBJECT.fireEvent("OnClick")
						EndIf
					EndIf
					Return SetError($_IESTATUS_SUCCESS, 0, 1)
				Case Else
					__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
					Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
			EndSwitch
		Case Else
			__IEERRORNOTIFY("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IESTATUS_INVALIDVALUE, 4, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementOptionSelect
Func _IEFormElementCheckBoxSelect(ByRef $O_OBJECT, $S_STRING, $S_NAME = "", $F_SELECT = 1, $S_MODE = "byValue", $F_FIREEVENT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementCheckboxSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormElementCheckboxSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$S_STRING = String($S_STRING)
	$S_NAME = String($S_NAME)
	Local $OITEMS
	If $S_NAME = "" Then
		$OITEMS = _IETagNameGetCollection($O_OBJECT, "input")
	Else
		$OITEMS = Execute("$o_object.elements('" & $S_NAME & "')")
	EndIf
	If Not IsObj($OITEMS) Then
		__IEERRORNOTIFY("Warning", "_IEFormElementCheckboxSelect", "$_IEStatus_NoMatch")
		Return SetError($_IESTATUS_NOMATCH, 3, 0)
	EndIf
	Local $OITEM, $F_FOUND = False
	Switch $S_MODE
		Case "byValue"
			If __IEISOBJTYPE($OITEMS, "forminputelement") Then
				$OITEM = $OITEMS
				If String($OITEM.type) = "checkbox" And String($OITEM.value) = $S_STRING Then $F_FOUND = True
			Else
				For $OITEM In $OITEMS
					If String($OITEM.type) = "checkbox" And String($OITEM.value) = $S_STRING Then
						$F_FOUND = True
						ExitLoop
					EndIf
				Next
			EndIf
		Case "byIndex"
			If __IEISOBJTYPE($OITEMS, "forminputelement") Then
				$OITEM = $OITEMS
				If String($OITEM.type) = "checkbox" And Number($S_STRING) = 0 Then $F_FOUND = True
			Else
				Local $ICOUNT = 0
				For $OITEM In $OITEMS
					If String($OITEM.type) = "checkbox" And Number($S_STRING) = $ICOUNT Then
						$F_FOUND = True
						ExitLoop
					Else
						If String($OITEM.type) = "checkbox" Then $ICOUNT += 1
					EndIf
				Next
			EndIf
		Case Else
			__IEERRORNOTIFY("Error", "_IEFormElementCheckboxSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IESTATUS_INVALIDVALUE, 5, 0)
	EndSwitch
	If Not $F_FOUND Then
		__IEERRORNOTIFY("Warning", "_IEFormElementCheckboxSelect", "$_IEStatus_NoMatch")
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndIf
	Switch $F_SELECT
		Case -1
			Return SetError($_IESTATUS_SUCCESS, 0, $OITEM.checked)
		Case 0
			If $OITEM.checked Then
				$OITEM.checked = False
				If $F_FIREEVENT Then
					$OITEM.fireEvent("onChange")
					$OITEM.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case 1
			If Not $OITEM.checked Then
				$OITEM.checked = True
				If $F_FIREEVENT Then
					$OITEM.fireEvent("onChange")
					$OITEM.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case Else
			__IEERRORNOTIFY("Error", "_IEFormElementCheckboxSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
			Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementCheckBoxSelect
Func _IEFormElementRadioSelect(ByRef $O_OBJECT, $S_STRING, $S_NAME, $F_SELECT = 1, $S_MODE = "byValue", $F_FIREEVENT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$S_STRING = String($S_STRING)
	$S_NAME = String($S_NAME)
	Local $OITEMS = Execute("$o_object.elements('" & $S_NAME & "')")
	If Not IsObj($OITEMS) Then
		__IEERRORNOTIFY("Warning", "_IEFormElementRadioSelect", "$_IEStatus_NoMatch")
		Return SetError($_IESTATUS_NOMATCH, 3, 0)
	EndIf
	Local $OITEM, $F_FOUND = False
	Switch $S_MODE
		Case "byValue"
			If __IEISOBJTYPE($OITEMS, "forminputelement") Then
				$OITEM = $OITEMS
				If String($OITEM.type) = "radio" And String($OITEM.value) = $S_STRING Then $F_FOUND = True
			Else
				For $OITEM In $OITEMS
					If String($OITEM.type) = "radio" And String($OITEM.value) = $S_STRING Then
						$F_FOUND = True
						ExitLoop
					EndIf
				Next
			EndIf
		Case "byIndex"
			If __IEISOBJTYPE($OITEMS, "forminputelement") Then
				$OITEM = $OITEMS
				If String($OITEM.type) = "radio" And Number($S_STRING) = 0 Then $F_FOUND = True
			Else
				Local $ICOUNT = 0
				For $OITEM In $OITEMS
					If String($OITEM.type) = "radio" And Number($S_STRING) = $ICOUNT Then
						$F_FOUND = True
						ExitLoop
					Else
						$ICOUNT += 1
					EndIf
				Next
			EndIf
		Case Else
			__IEERRORNOTIFY("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IESTATUS_INVALIDVALUE, 5, 0)
	EndSwitch
	If Not $F_FOUND Then
		__IEERRORNOTIFY("Warning", "_IEFormElementRadioSelect", "$_IEStatus_NoMatch")
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndIf
	Switch $F_SELECT
		Case -1
			Return SetError($_IESTATUS_SUCCESS, 0, $OITEM.checked)
		Case 0
			If $OITEM.checked Then
				$OITEM.checked = False
				If $F_FIREEVENT Then
					$OITEM.fireEvent("onChange")
					$OITEM.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case 1
			If Not $OITEM.checked Then
				$OITEM.checked = True
				If $F_FIREEVENT Then
					$OITEM.fireEvent("onChange")
					$OITEM.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case Else
			__IEERRORNOTIFY("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidValue", "$f_select value invalid")
			Return SetError($_IESTATUS_INVALIDVALUE, 4, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementRadioSelect
Func _IEFormImageClick(ByRef $O_OBJECT, $S_LINKTEXT, $S_MODE = "src", $I_INDEX = 0, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormImageClick", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $LINKTEXT, $FOUND = 0
	Local $OTEMP = _IEDocGetObj($O_OBJECT)
	Local $IMGS = _IETagNameGetCollection($OTEMP, "input")
	$S_MODE = StringLower($S_MODE)
	$I_INDEX = Number($I_INDEX)
	For $IMG In $IMGS
		If String($IMG.type) = "image" Then
			Select
				Case $S_MODE = "alt"
					$LINKTEXT = $IMG.alt
				Case $S_MODE = "name"
					$LINKTEXT = $IMG.name
				Case $S_MODE = "src"
					$LINKTEXT = $IMG.src
				Case Else
					__IEERRORNOTIFY("Error", "_IEFormImageClick", "$_IEStatus_InvalidValue", "Invalid mode: " & $S_MODE)
					Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
			EndSelect
			If StringInStr($LINKTEXT, $S_LINKTEXT) Then
				If ($FOUND = $I_INDEX) Then
					$IMG.click
					If $F_WAIT Then
						_IELoadWait($O_OBJECT)
						Return SetError(@error, 0, -1)
					EndIf
					Return SetError($_IESTATUS_SUCCESS, 0, -1)
				EndIf
				$FOUND = $FOUND + 1
			EndIf
		EndIf
	Next
	__IEERRORNOTIFY("Warning", "_IEFormImageClick", "$_IEStatus_NoMatch")
	Return SetError($_IESTATUS_NOMATCH, 2, 0)
EndFunc   ;==>_IEFormImageClick
Func _IEFormSubmit(ByRef $O_OBJECT, $F_WAIT = 1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormSubmit", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormSubmit", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $O_WINDOW = $O_OBJECT.document.parentWindow
	$O_OBJECT.submit
	If $F_WAIT Then
		_IELoadWait($O_WINDOW)
		Return SetError(@error, 0, -1)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, -1)
EndFunc   ;==>_IEFormSubmit
Func _IEFormReset(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEFormReset", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "form") Then
		__IEERRORNOTIFY("Error", "_IEFormReset", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.reset
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>_IEFormReset
#EndRegion Form functions
#Region Table functions
Func _IETableGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IETableGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.GetElementsByTagName("table").length, $O_OBJECT.document.GetElementsByTagName("table"))
		Case $I_INDEX > -1 And $I_INDEX < $O_OBJECT.document.GetElementsByTagName("table").length
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.GetElementsByTagName("table").length, $O_OBJECT.document.GetElementsByTagName("table").item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IETableGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Warning", "_IETableGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
	EndSelect
EndFunc   ;==>_IETableGetCollection
Func _IETableWriteToArray(ByRef $O_OBJECT, $F_TRANSPOSE = False)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IETableWriteToArray", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "table") Then
		__IEERRORNOTIFY("Error", "_IETableWriteToArray", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $I_COLS = 0, $TDS, $I_COL
	Local $TRS = $O_OBJECT.rows
	For $TR In $TRS
		$TDS = $TR.cells
		$I_COL = 0
		For $TD In $TDS
			$I_COL = $I_COL + $TD.colSpan
		Next
		If $I_COL > $I_COLS Then $I_COLS = $I_COL
	Next
	Local $I_ROWS = $TRS.length
	Local $A_TABLECELLS[$I_COLS][$I_ROWS]
	Local $COL, $ROW = 0
	For $TR In $TRS
		$TDS = $TR.cells
		$COL = 0
		For $TD In $TDS
			$A_TABLECELLS[$COL][$ROW] = $TD.innerText
			$COL = $COL + $TD.colSpan
		Next
		$ROW = $ROW + 1
	Next
	If $F_TRANSPOSE Then
		Local $I_D1 = UBound($A_TABLECELLS, 1), $I_D2 = UBound($A_TABLECELLS, 2), $ATMP[$I_D2][$I_D1]
		For $I = 0 To $I_D2 - 1
			For $J = 0 To $I_D1 - 1
				$ATMP[$I][$J] = $A_TABLECELLS[$J][$I]
			Next
		Next
		$A_TABLECELLS = $ATMP
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $A_TABLECELLS)
EndFunc   ;==>_IETableWriteToArray
#EndRegion Table functions
#Region Read/Write functions
Func _IEBodyReadHTML(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEBodyReadHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.body.innerHTML)
EndFunc   ;==>_IEBodyReadHTML
Func _IEBodyReadText(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEBodyReadText", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEBodyReadText", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.body.innerText)
EndFunc   ;==>_IEBodyReadText
Func _IEBodyWriteHTML(ByRef $O_OBJECT, $S_HTML)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEBodyWriteHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEBodyWriteHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.document.body.innerHTML = $S_HTML
	Local $OTEMP = $O_OBJECT.document
	_IELoadWait($OTEMP)
	Return SetError(@error, 0, -1)
EndFunc   ;==>_IEBodyWriteHTML
Func _IEDocReadHTML(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEDocReadHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEDocReadHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.documentElement.outerHTML)
EndFunc   ;==>_IEDocReadHTML
Func _IEDocWriteHTML(ByRef $O_OBJECT, $S_HTML)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEDocWriteHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEDocWriteHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.document.Write($S_HTML)
	$O_OBJECT.document.close()
	Local $OTEMP = $O_OBJECT.document
	_IELoadWait($OTEMP)
	Return SetError(@error, 0, -1)
EndFunc   ;==>_IEDocWriteHTML
Func _IEDocInsertText(ByRef $O_OBJECT, $S_STRING, $S_WHERE = "beforeend")
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEDocInsertText", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Or __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
		__IEERRORNOTIFY("Error", "_IEDocInsertText", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$S_WHERE = StringLower($S_WHERE)
	Select
		Case $S_WHERE = "beforebegin"
			$O_OBJECT.insertAdjacentText($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "afterbegin"
			$O_OBJECT.insertAdjacentText($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "beforeend"
			$O_OBJECT.insertAdjacentText($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "afterend"
			$O_OBJECT.insertAdjacentText($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case Else
			__IEERRORNOTIFY("Error", "_IEDocInsertText", "$_IEStatus_InvalidValue", "Invalid where value")
			Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
	EndSelect
EndFunc   ;==>_IEDocInsertText
Func _IEDocInsertHTML(ByRef $O_OBJECT, $S_STRING, $S_WHERE = "beforeend")
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Or __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
		__IEERRORNOTIFY("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$S_WHERE = StringLower($S_WHERE)
	Select
		Case $S_WHERE = "beforebegin"
			$O_OBJECT.insertAdjacentHTML($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "afterbegin"
			$O_OBJECT.insertAdjacentHTML($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "beforeend"
			$O_OBJECT.insertAdjacentHTML($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_WHERE = "afterend"
			$O_OBJECT.insertAdjacentHTML($S_WHERE, $S_STRING)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case Else
			__IEERRORNOTIFY("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidValue", "Invalid where value")
			Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
	EndSelect
EndFunc   ;==>_IEDocInsertHTML
Func _IEHeadInsertEventScript(ByRef $O_OBJECT, $S_HTMLFOR, $S_EVENT, $S_SCRIPT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEHeadInsertEventScript", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $O_HEAD = $O_OBJECT.document.all.tags("HEAD").Item(0)
	Local $O_SCRIPT = $O_OBJECT.document.createElement("script")
	With $O_SCRIPT
		.defer = True
		.language = "jscript"
		.type = "text/javascript"
		.htmlFor = $S_HTMLFOR
		.event = $S_EVENT
		.text = $S_SCRIPT
	EndWith
	$O_HEAD.appendChild($O_SCRIPT)
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>_IEHeadInsertEventScript
#EndRegion Read/Write functions
#Region Utility functions
Func _IEDocGetObj(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEDocGetObj", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Switch __IEISOBJTYPE($O_OBJECT, "document")
		Case True
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT)
		Case False
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document)
	EndSwitch
EndFunc   ;==>_IEDocGetObj
Func _IETagNameGetCollection(ByRef $O_OBJECT, $S_TAGNAME, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $OTEMP
	If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Then
		$OTEMP = _IEDocGetObj($O_OBJECT)
	Else
		$OTEMP = $O_OBJECT
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.GetElementsByTagName($S_TAGNAME).length, $OTEMP.GetElementsByTagName($S_TAGNAME))
		Case $I_INDEX > -1 And $I_INDEX < $OTEMP.GetElementsByTagName($S_TAGNAME).length
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.GetElementsByTagName($S_TAGNAME).length, $OTEMP.GetElementsByTagName($S_TAGNAME).item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 3, 0)
		Case Else
			__IEERRORNOTIFY("Error", "_IETagNameGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 0, 0)
	EndSelect
EndFunc   ;==>_IETagNameGetCollection
Func _IETagNameAllGetCollection(ByRef $O_OBJECT, $I_INDEX = -1)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $OTEMP
	If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Then
		$OTEMP = _IEDocGetObj($O_OBJECT)
	Else
		$OTEMP = $O_OBJECT
	EndIf
	$I_INDEX = Number($I_INDEX)
	Select
		Case $I_INDEX = -1
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.all.length, $OTEMP.all)
		Case $I_INDEX > -1 And $I_INDEX < $OTEMP.all.length
			Return SetError($_IESTATUS_SUCCESS, $OTEMP.all.length, $OTEMP.all.item($I_INDEX))
		Case $I_INDEX < -1
			__IEERRORNOTIFY("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
		Case Else
			__IEERRORNOTIFY("Error", "_IETagNameAllGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IESTATUS_NOMATCH, 1, 0)
	EndSelect
EndFunc   ;==>_IETagNameAllGetCollection
Func _IEGetObjByName(ByRef $O_OBJECT, $S_ID, $I_INDEX = 0)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	$I_INDEX = Number($I_INDEX)
	If $I_INDEX = -1 Then
		Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.GetElementsByName($S_ID).length, $O_OBJECT.document.GetElementsByName($S_ID))
	Else
		If IsObj($O_OBJECT.document.GetElementsByName($S_ID).item($I_INDEX)) Then
			Return SetError($_IESTATUS_SUCCESS, $O_OBJECT.document.GetElementsByName($S_ID).length, $O_OBJECT.document.GetElementsByName($S_ID).item($I_INDEX))
		Else
			__IEERRORNOTIFY("Warning", "_IEGetObjByName", "$_IEStatus_NoMatch", "Name: " & $S_ID & ", Index: " & $I_INDEX)
			Return SetError($_IESTATUS_NOMATCH, 0, 0)
		EndIf
	EndIf
EndFunc   ;==>_IEGetObjByName
Func _IEGetObjById(ByRef $O_OBJECT, $S_ID)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEGetObjById", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEGetObById", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	If IsObj($O_OBJECT.document.getElementById($S_ID)) Then
		Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.getElementById($S_ID))
	Else
		__IEERRORNOTIFY("Warning", "_IEGetObjById", "$_IEStatus_NoMatch", $S_ID)
		Return SetError($_IESTATUS_NOMATCH, 2, 0)
	EndIf
EndFunc   ;==>_IEGetObjById
Func _IEAction(ByRef $O_OBJECT, $S_ACTION)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	$S_ACTION = StringLower($S_ACTION)
	Select
		Case $S_ACTION = "click"
			If __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Click()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "disable"
			If __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.disabled = True
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "enable"
			If __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.disabled = False
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "focus"
			If __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Focus()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "copy"
			$O_OBJECT.document.execCommand("Copy")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "cut"
			$O_OBJECT.document.execCommand("Cut")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "paste"
			$O_OBJECT.document.execCommand("Paste")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "delete"
			$O_OBJECT.document.execCommand("Delete")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "saveas"
			$O_OBJECT.document.execCommand("SaveAs")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "refresh"
			$O_OBJECT.document.execCommand("Refresh")
			_IELoadWait($O_OBJECT)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "selectall"
			$O_OBJECT.document.execCommand("SelectAll")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "unselect"
			$O_OBJECT.document.execCommand("Unselect")
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "print"
			$O_OBJECT.document.parentwindow.Print()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "printdefault"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.execWB(6, 2)
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "back"
			If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.GoBack()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "blur"
			$O_OBJECT.Blur()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "forward"
			If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.GoForward()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "home"
			If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.GoHome()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "invisible"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.visible = 0
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "visible"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.visible = 1
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "search"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.GoSearch()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "stop"
			If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Stop()
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_ACTION = "quit"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Quit()
			$O_OBJECT = 0
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case Else
			__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidValue", "Invalid Action")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
	EndSelect
EndFunc   ;==>_IEAction
Func _IEPropertyGet(ByRef $O_OBJECT, $S_PROPERTY)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browserdom") Then
		__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	Local $OTEMP, $ITEMP
	$S_PROPERTY = StringLower($S_PROPERTY)
	Select
		Case $S_PROPERTY = "browserx"
			If __IEISOBJTYPE($O_OBJECT, "browsercontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$OTEMP = $O_OBJECT
			$ITEMP = 0
			While IsObj($OTEMP)
				$ITEMP += $OTEMP.offsetLeft
				$OTEMP = $OTEMP.offsetParent
			WEnd
			Return SetError($_IESTATUS_SUCCESS, 0, $ITEMP)
		Case $S_PROPERTY = "browsery"
			If __IEISOBJTYPE($O_OBJECT, "browsercontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$OTEMP = $O_OBJECT
			$ITEMP = 0
			While IsObj($OTEMP)
				$ITEMP += $OTEMP.offsetTop
				$OTEMP = $OTEMP.offsetParent
			WEnd
			Return SetError($_IESTATUS_SUCCESS, 0, $ITEMP)
		Case $S_PROPERTY = "screenx"
			If __IEISOBJTYPE($O_OBJECT, "window") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "browser") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.left())
			Else
				$OTEMP = $O_OBJECT
				$ITEMP = 0
				While IsObj($OTEMP)
					$ITEMP += $OTEMP.offsetLeft
					$OTEMP = $OTEMP.offsetParent
				WEnd
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $ITEMP + $O_OBJECT.document.parentWindow.screenLeft)
		Case $S_PROPERTY = "screeny"
			If __IEISOBJTYPE($O_OBJECT, "window") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "browser") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.top())
			Else
				$OTEMP = $O_OBJECT
				$ITEMP = 0
				While IsObj($OTEMP)
					$ITEMP += $OTEMP.offsetTop
					$OTEMP = $OTEMP.offsetParent
				WEnd
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $ITEMP + $O_OBJECT.document.parentWindow.screenTop)
		Case $S_PROPERTY = "height"
			If __IEISOBJTYPE($O_OBJECT, "window") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "browser") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Height())
			Else
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.offsetHeight)
			EndIf
		Case $S_PROPERTY = "width"
			If __IEISOBJTYPE($O_OBJECT, "window") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "browser") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Width())
			Else
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.offsetWidth)
			EndIf
		Case $S_PROPERTY = "isdisabled"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.isDisabled())
		Case $S_PROPERTY = "addressbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.AddressBar())
		Case $S_PROPERTY = "busy"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Busy())
		Case $S_PROPERTY = "fullscreen"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.fullScreen())
		Case $S_PROPERTY = "hwnd"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, HWnd($O_OBJECT.HWnd()))
		Case $S_PROPERTY = "left"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Left())
		Case $S_PROPERTY = "locationname"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.LocationName())
		Case $S_PROPERTY = "locationurl"
			If __IEISOBJTYPE($O_OBJECT, "browser") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.locationURL())
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "window") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.location.href())
			EndIf
			If __IEISOBJTYPE($O_OBJECT, "document") Then
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.parentwindow.location.href())
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentwindow.location.href())
		Case $S_PROPERTY = "menubar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.MenuBar())
		Case $S_PROPERTY = "offline"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.OffLine())
		Case $S_PROPERTY = "readystate"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.ReadyState())
		Case $S_PROPERTY = "resizable"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Resizable())
		Case $S_PROPERTY = "silent"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Silent())
		Case $S_PROPERTY = "statusbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.StatusBar())
		Case $S_PROPERTY = "statustext"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.StatusText())
		Case $S_PROPERTY = "top"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Top())
		Case $S_PROPERTY = "visible"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.Visible())
		Case $S_PROPERTY = "appcodename"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.appCodeName())
		Case $S_PROPERTY = "appminorversion"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.appMinorVersion())
		Case $S_PROPERTY = "appname"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.appName())
		Case $S_PROPERTY = "appversion"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.appVersion())
		Case $S_PROPERTY = "browserlanguage"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.browserLanguage())
		Case $S_PROPERTY = "cookieenabled"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.cookieEnabled())
		Case $S_PROPERTY = "cpuclass"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.cpuClass())
		Case $S_PROPERTY = "javaenabled"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.javaEnabled())
		Case $S_PROPERTY = "online"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.onLine())
		Case $S_PROPERTY = "platform"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.platform())
		Case $S_PROPERTY = "systemlanguage"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.systemLanguage())
		Case $S_PROPERTY = "useragent"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.userAgent())
		Case $S_PROPERTY = "userlanguage"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.parentWindow.top.navigator.userLanguage())
		Case $S_PROPERTY = "vcard"
			Local $AVCARD[1][29]
			$AVCARD[0][0] = "Business.City"
			$AVCARD[0][1] = "Business.Country"
			$AVCARD[0][2] = "Business.Fax"
			$AVCARD[0][3] = "Business.Phone"
			$AVCARD[0][4] = "Business.State"
			$AVCARD[0][5] = "Business.StreetAddress"
			$AVCARD[0][6] = "Business.URL"
			$AVCARD[0][7] = "Business.Zipcode"
			$AVCARD[0][8] = "Cellular"
			$AVCARD[0][9] = "Company"
			$AVCARD[0][10] = "Department"
			$AVCARD[0][11] = "DisplayName"
			$AVCARD[0][12] = "Email"
			$AVCARD[0][13] = "FirstName"
			$AVCARD[0][14] = "Gender"
			$AVCARD[0][15] = "Home.City"
			$AVCARD[0][16] = "Home.Country"
			$AVCARD[0][17] = "Home.Fax"
			$AVCARD[0][18] = "Home.Phone"
			$AVCARD[0][19] = "Home.State"
			$AVCARD[0][20] = "Home.StreetAddress"
			$AVCARD[0][21] = "Home.Zipcode"
			$AVCARD[0][22] = "Homepage"
			$AVCARD[0][23] = "JobTitle"
			$AVCARD[0][24] = "LastName"
			$AVCARD[0][25] = "MiddleName"
			$AVCARD[0][26] = "Notes"
			$AVCARD[0][27] = "Office"
			$AVCARD[0][28] = "Pager"
			For $I = 0 To 28
				$AVCARD[1][$I] = Execute('$o_object.document.parentWindow.top.navigator.userProfile.getAttribute("' & $AVCARD[0][$I] & '")')
			Next
			Return SetError($_IESTATUS_SUCCESS, 0, $AVCARD)
		Case $S_PROPERTY = "referrer"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.referrer)
		Case $S_PROPERTY = "theatermode"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.TheaterMode)
		Case $S_PROPERTY = "toolbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.ToolBar)
		Case $S_PROPERTY = "contenteditable"
			If __IEISOBJTYPE($O_OBJECT, "browser") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.isContentEditable)
		Case $S_PROPERTY = "innertext"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.innerText)
		Case $S_PROPERTY = "outertext"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.outerText)
		Case $S_PROPERTY = "innerhtml"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.innerHTML)
		Case $S_PROPERTY = "outerhtml"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, $OTEMP.outerHTML)
		Case $S_PROPERTY = "title"
			Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.document.title)
		Case $S_PROPERTY = "uniqueid"
			If __IEISOBJTYPE($O_OBJECT, "window") Then
				__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			Else
				Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT.uniqueID)
			EndIf
		Case Else
			__IEERRORNOTIFY("Error", "_IEPropertyGet", "$_IEStatus_InvalidValue", "Invalid Property")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
	EndSelect
EndFunc   ;==>_IEPropertyGet
Func _IEPropertySet(ByRef $O_OBJECT, $S_PROPERTY, $NEWVALUE)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $OTEMP
	#forceref $OTEMP
	$S_PROPERTY = StringLower($S_PROPERTY)
	Select
		Case $S_PROPERTY = "addressbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.AddressBar = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "height"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Height = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "left"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Left = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "menubar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.MenuBar = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "offline"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.OffLine = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "resizable"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Resizable = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "statusbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.StatusBar = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "statustext"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.StatusText = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "top"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Top = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "width"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			$O_OBJECT.Width = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "theatermode"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If $NEWVALUE Then
				$O_OBJECT.TheaterMode = True
			Else
				$O_OBJECT.TheaterMode = False
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "toolbar"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If $NEWVALUE Then
				$O_OBJECT.ToolBar = True
			Else
				$O_OBJECT.ToolBar = False
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "contenteditable"
			If __IEISOBJTYPE($O_OBJECT, "browser") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			If $NEWVALUE Then
				$OTEMP.contentEditable = "true"
			Else
				$OTEMP.contentEditable = "false"
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "innertext"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			$OTEMP.innerText = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "outertext"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			$OTEMP.outerText = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "innerhtml"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			$OTEMP.innerHTML = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "outerhtml"
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Or __IEISOBJTYPE($O_OBJECT, "document") Then
				$OTEMP = $O_OBJECT.document.body
			Else
				$OTEMP = $O_OBJECT
			EndIf
			$OTEMP.outerHTML = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "title"
			$O_OBJECT.document.title = $NEWVALUE
			Return SetError($_IESTATUS_SUCCESS, 0, 1)
		Case $S_PROPERTY = "silent"
			If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
				__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
			EndIf
			If $NEWVALUE Then
				$O_OBJECT.silent = True
			Else
				$O_OBJECT.silent = False
			EndIf
			Return SetError($_IESTATUS_SUCCESS, 0, 0)
		Case Else
			__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_InvalidValue", "Invalid Property")
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
	EndSelect
EndFunc   ;==>_IEPropertySet
Func _IEErrorNotify($F_NOTIFY = -1)
	Switch Number($F_NOTIFY)
		Case -1
			Return $_IEERRORNOTIFY
		Case 0
			$_IEERRORNOTIFY = False
			Return 1
		Case 1
			$_IEERRORNOTIFY = True
			Return 1
		Case Else
			__IEERRORNOTIFY("Error", "_IEErrorNotify", "$_IEStatus_InvalidValue")
			Return 0
	EndSwitch
EndFunc   ;==>_IEErrorNotify
Func _IEERRORHANDLERREGISTER($S_FUNCTIONNAME = "__IEInternalErrorHandler")
	$SIEUSERERRORHANDLER = $S_FUNCTIONNAME
	$OIEERRORHANDLER = ""
	$OIEERRORHANDLER = ObjEvent("AutoIt.Error", $S_FUNCTIONNAME)
	If IsObj($OIEERRORHANDLER) Then
		Return SetError($_IESTATUS_SUCCESS, 0, 1)
	Else
		__IEERRORNOTIFY("Error", "_IEPropertySet", "$_IEStatus_GeneralError", "Error Handler Not Registered - Check existance of error function")
		Return SetError($_IESTATUS_GENERALERROR, 1, 0)
	EndIf
EndFunc   ;==>_IEERRORHANDLERREGISTER
Func _IEERRORHANDLERDEREGISTER()
	$SIEUSERERRORHANDLER = ""
	$OIEERRORHANDLER = ""
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>_IEERRORHANDLERDEREGISTER
Func _IEQuit(ByRef $O_OBJECT)
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "_IEQuit", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "browser") Then
		__IEERRORNOTIFY("Error", "_IEAction", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.quit()
	$O_OBJECT = 0
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>_IEQuit
#EndRegion Utility functions
#Region General
Func _IE_Introduction($S_MODULE = "basic")
	Local $S_HTML = ""
	Switch $S_MODULE
		Case "basic"
			$S_HTML &= "<HTML>" & @CR
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Introduction ('basic')</TITLE>" & @CR
			$S_HTML &= "<STYLE>body {font-family: Arial}</STYLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<BODY>" & @CR
			$S_HTML &= "<table border=1 width=600 id='table1' cellspacing=6 cellpadding=6>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<h1>Welcome to IE.au3</h1>" & @CR
			$S_HTML &= "IE.au3 is a UDF (User Defined Function) library for the " & @CR
			$S_HTML &= "<a href='https://www.autoitscript.com'>AutoIt</a> scripting language." & @CR
			$S_HTML &= "<p>  " & @CR
			$S_HTML &= "IE.au3 allows you to either create or attach to an Internet Explorer browser and do " & @CR
			$S_HTML &= "just about anything you could do with it interactively with the mouse and " & @CR
			$S_HTML &= "keyboard, but do it through script." & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "You can navigate to pages, click links, fill and submit forms etc. You can " & @CR
			$S_HTML &= "also do things you cannot do interactively like change or rewrite page " & @CR
			$S_HTML &= "content and JavaScripts, read, parse and save page content and monitor and act " & @CR
			$S_HTML &= "upon browser 'events'.<p>" & @CR
			$S_HTML &= "IE.au3 uses the COM interface in AutoIt to interact with the Internet Explorer " & @CR
			$S_HTML &= "object model and the DOM (Document Object Model) supported by the browser." & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "Here are some links for more information and helpful tools:<p>" & @CR
			$S_HTML &= "Reference Material: " & @CR
			$S_HTML &= "<ul>" & @CR
			$S_HTML &= "<li><a href='https://msdn1.microsoft.com/'>MSDN (Microsoft Developer Network)</a></li>" & @CR
			$S_HTML &= "<li><a href='https://msdn2.microsoft.com/en-us/library/aa752084.aspx' target='_blank'>InternetExplorer Object</a></li>" & @CR
			$S_HTML &= "<li><a href='https://msdn2.microsoft.com/en-us/library/ms531073.aspx' target='_blank'>Document Object</a></li>" & @CR
			$S_HTML &= "<li><a href='https://msdn2.microsoft.com/en-us/ie/aa740473.aspx' target='_blank'>Overviews and Tutorials</a></li>" & @CR
			$S_HTML &= "<li><a href='https://msdn2.microsoft.com/en-us/library/ms533029.aspx' target='_blank'>DHTML Objects</a></li>" & @CR
			$S_HTML &= "<li><a href='https://msdn2.microsoft.com/en-us/library/ms533051.aspx' target='_blank'>DHTML Events</a></li>" & @CR
			$S_HTML &= "</ul><p>" & @CR
			$S_HTML &= "Helpful Tools: " & @CR
			$S_HTML &= "<ul>" & @CR
			$S_HTML &= "<li><a href='https://www.autoitscript.com/forum/index.php?showtopic=19368' target='_blank'>AutoIt IE Builder</a> (build IE scripts interactively)</li>" & @CR
			$S_HTML &= "<li><a href='https://www.debugbar.com/' target='_blank'>DebugBar</a> (DOM inspector, HTTP inspector, HTML validator and more - free for personal use) Recommended</li>" & @CR
			$S_HTML &= "<li><a href='https://www.microsoft.com/downloads/details.aspx?FamilyID=e59c3964-672d-4511-bb3e-2d5e1db91038&amp;displaylang=en' target='_blank'>IE Developer Toolbar</a> (comprehensive DOM analysis tool)</li>" & @CR
			$S_HTML &= "<li><a href='https://slayeroffice.com/tools/modi/v2.0/modi_help.html' target='_blank'>MODIV2</a> (view the DOM of a web page by mousing around)</li>" & @CR
			$S_HTML &= "<li><a href='https://validator.w3.org/' target='_blank'>HTML Validator</a> (verify HTML follows format rules)</li>" & @CR
			$S_HTML &= "<li><a href='https://www.fiddlertool.com/fiddler/' target='_blank'>Fiddler</a> (examine HTTP traffic)</li>" & @CR
			$S_HTML &= "</ul>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "</table>" & @CR
			$S_HTML &= "</BODY>" & @CR
			$S_HTML &= "</HTML>"
		Case Else
			__IEERRORNOTIFY("Error", "_IE_Introduction", "$_IEStatus_InvalidValue")
			Return SetError($_IESTATUS_INVALIDVALUE, 1, 0)
	EndSwitch
	Local $O_OBJECT = _IECreate()
	_IEDocWriteHTML($O_OBJECT, $S_HTML)
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT)
EndFunc   ;==>_IE_Introduction
Func _IE_Example($S_MODULE = "basic")
	Local $S_HTML = "", $O_OBJECT
	Switch $S_MODULE
		Case "basic"
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Example('basic')</TITLE>" & @CR
			$S_HTML &= "<STYLE>body {font-family: Arial}</STYLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<BODY>" & @CR
			$S_HTML &= "<a href='https://www.autoitscript.com'><img src='https://www.autoitscript.com/images/autoit_6_240x100.jpg' name='AutoItImage' alt='AutoIt Homepage Image'></a>" & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "<div id=line1>This is a simple HTML page with text, links and images.</div>" & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "<div id=line2><a href='https://www.autoitscript.com'>AutoIt</a> is a wonderful automation scripting language.</div>" & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "<div id=line3>It is supported by a very active and supporting <a href='https://www.autoitscript.com/forum/'>user forum</a>.</div>" & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "<div id=IEAu3Data></div>" & @CR
			$S_HTML &= "</BODY>" & @CR
			$S_HTML &= "</HTML>"
			$O_OBJECT = _IECreate()
			_IEDocWriteHTML($O_OBJECT, $S_HTML)
		Case "table"
			$S_HTML &= "<HTML>" & @CR
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Example('table')</TITLE>" & @CR
			$S_HTML &= "<STYLE>body {font-family: Arial}</STYLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<BODY>" & @CR
			$S_HTML &= "$oTableOne = _IETableGetObjByName($oIE, &quot;tableOne&quot;)<br>" & @CR
			$S_HTML &= "&lt;table border=1 id='tableOne'&gt;<p>" & @CR
			$S_HTML &= "<table border=1 id='tableOne'>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>AutoIt</td>" & @CR
			$S_HTML &= "		<td>is</td>" & @CR
			$S_HTML &= "		<td>really</td>" & @CR
			$S_HTML &= "		<td>great</td>" & @CR
			$S_HTML &= "		<td>with</td>" & @CR
			$S_HTML &= "		<td>IE.au3</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>1</td>" & @CR
			$S_HTML &= "		<td>2</td>" & @CR
			$S_HTML &= "		<td>3</td>" & @CR
			$S_HTML &= "		<td>4</td>" & @CR
			$S_HTML &= "		<td>5</td>" & @CR
			$S_HTML &= "		<td>6</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>the</td>" & @CR
			$S_HTML &= "		<td>quick</td>" & @CR
			$S_HTML &= "		<td>red</td>" & @CR
			$S_HTML &= "		<td>fox</td>" & @CR
			$S_HTML &= "		<td>jumped</td>" & @CR
			$S_HTML &= "		<td>over</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>the</td>" & @CR
			$S_HTML &= "		<td>lazy</td>" & @CR
			$S_HTML &= "		<td>brown</td>" & @CR
			$S_HTML &= "		<td>dog</td>" & @CR
			$S_HTML &= "		<td>the</td>" & @CR
			$S_HTML &= "		<td>time</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>has</td>" & @CR
			$S_HTML &= "		<td>come</td>" & @CR
			$S_HTML &= "		<td>for</td>" & @CR
			$S_HTML &= "		<td>all</td>" & @CR
			$S_HTML &= "		<td>good</td>" & @CR
			$S_HTML &= "		<td>men</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>to</td>" & @CR
			$S_HTML &= "		<td>come</td>" & @CR
			$S_HTML &= "		<td>to</td>" & @CR
			$S_HTML &= "		<td>the</td>" & @CR
			$S_HTML &= "		<td>aid</td>" & @CR
			$S_HTML &= "		<td>of</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "</table>" & @CR
			$S_HTML &= "<p>" & @CR
			$S_HTML &= "$oTableTwo = _IETableGetObjByName($oIE, &quot;tableTwo&quot;)<br>" & @CR
			$S_HTML &= "&lt;table border=&quot;1&quot; id='tableTwo'&gt;<p>" & @CR
			$S_HTML &= "<table border=1 id='tableTwo'>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td colspan='4'>Table Top</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>One</td>" & @CR
			$S_HTML &= "		<td colspan='3'>Two</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>Three</td>" & @CR
			$S_HTML &= "		<td>Four</td>" & @CR
			$S_HTML &= "		<td colspan='2'>Five</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>Six</td>" & @CR
			$S_HTML &= "		<td colspan='3'>Seven</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "	<tr>" & @CR
			$S_HTML &= "		<td>Eight</td>" & @CR
			$S_HTML &= "		<td>Nine</td>" & @CR
			$S_HTML &= "		<td>Ten</td>" & @CR
			$S_HTML &= "		<td>Eleven</td>" & @CR
			$S_HTML &= "	</tr>" & @CR
			$S_HTML &= "</table>" & @CR
			$S_HTML &= "</BODY>" & @CR
			$S_HTML &= "</HTML>"
			$O_OBJECT = _IECreate()
			_IEDocWriteHTML($O_OBJECT, $S_HTML)
		Case "form"
			$S_HTML &= "<HTML>" & @CR
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Example('form')</TITLE>" & @CR
			$S_HTML &= "<STYLE>body {font-family: Arial}</STYLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<BODY>" & @CR
			$S_HTML &= "<form name='ExampleForm' onSubmit='javascript:alert(""ExampleFormSubmitted"");' method='post'>" & @CR
			$S_HTML &= "<table cellspacing=6 cellpadding=6 border=1>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>ExampleForm</td>" & @CR
			$S_HTML &= "<td>&lt;form name='ExampleForm' onSubmit='javascript:alert(""ExampleFormSubmitted"");' method='post'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>Hidden Input Element<input type='hidden' name='hiddenExample' value='secret value'></td>" & @CR
			$S_HTML &= "<td>&lt;input type='hidden' name='hiddenExample' value='secret value'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='text' name='textExample' value='https://' size='20' maxlength='30'>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input type='text' name='textExample' value='https://' size='20' maxlength='30'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='password' name='passwordExample' size='10'>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input type='password' name='passwordExample' size='10'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='file' name='fileExample'>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input type='file' name='fileExample'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='image' name='imageExample' alt='AutoIt Homepage' src='https://www.autoitscript.com/images/autoit_6_240x100.jpg'>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input type='image' name='imageExample' alt='AutoIt Homepage' src='https://www.autoitscript.com/images/autoit_6_240x100.jpg'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<textarea name='textareaExample' rows='5' cols='15'>Hello!</textarea>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;textarea name='textareaExample' rows='5' cols='15'&gt;Hello!&lt;/textarea&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='checkbox' name='checkboxG1Example' value='gameBasketball'>Basketball<br>" & @CR
			$S_HTML &= "<input type='checkbox' name='checkboxG1Example' value='gameFootball'>Football<br>" & @CR
			$S_HTML &= "<input type='checkbox' name='checkboxG2Example' value='gameTennis' checked>Tennis<br>" & @CR
			$S_HTML &= "<input type='checkbox' name='checkboxG2Example' value='gameBaseball'>Baseball" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input type='checkbox' name='checkboxG1Example' value='gameBasketball'&gt;Basketball&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='checkbox' name='checkboxG1Example' value='gameFootball'&gt;Football&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='checkbox' name='checkboxG2Example' value='gameTennis' checked&gt;Tennis&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='checkbox' name='checkboxG2Example' value='gameBaseball'&gt;Baseball</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input type='radio' name='radioExample' value='vehicleAirplane'>Airplane<br>" & @CR
			$S_HTML &= "<input type='radio' name='radioExample' value='vehicleTrain' checked>Train<br>" & @CR
			$S_HTML &= "<input type='radio' name='radioExample' value='vehicleBoat'>Boat<br>" & @CR
			$S_HTML &= "<input type='radio' name='radioExample' value='vehicleCar'>Car</td>" & @CR
			$S_HTML &= "<td>&lt;input type='radio' name='radioExample' value='vehicleAirplane'&gt;Airplane&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='radio' name='radioExample' value='vehicleTrain' checked&gt;Train&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='radio' name='radioExample' value='vehicleBoat'&gt;Boat&lt;br&gt;<br>" & @CR
			$S_HTML &= "&lt;input type='radio' name='radioExample' value='vehicleCar'&gt;Car&lt;br&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<select name='selectExample'>" & @CR
			$S_HTML &= "<option value='homepage.html'>Homepage" & @CR
			$S_HTML &= "<option value='midipage.html'>Midipage" & @CR
			$S_HTML &= "<option value='freepage.html'>Freepage" & @CR
			$S_HTML &= "</select>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;select name='selectExample'&gt;<br>" & @CR
			$S_HTML &= "&lt;option value='homepage.html'&gt;Homepage<br>" & @CR
			$S_HTML &= "&lt;option value='midipage.html'&gt;Midipage<br>" & @CR
			$S_HTML &= "&lt;option value='freepage.html'&gt;Freepage<br>" & @CR
			$S_HTML &= "&lt;/select&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<select name='multipleSelectExample' size='6' multiple>" & @CR
			$S_HTML &= "<option value='Name1'>Aaron" & @CR
			$S_HTML &= "<option value='Name2'>Bruce" & @CR
			$S_HTML &= "<option value='Name3'>Carlos" & @CR
			$S_HTML &= "<option value='Name4'>Denis" & @CR
			$S_HTML &= "<option value='Name5'>Ed" & @CR
			$S_HTML &= "<option value='Name6'>Freddy" & @CR
			$S_HTML &= "</select>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;select name='multipleSelectExample' size='6' multiple&gt;<br>" & @CR
			$S_HTML &= "&lt;option value='Name1'&gt;Aaron<br>" & @CR
			$S_HTML &= "&lt;option value='Name2'&gt;Bruce<br>" & @CR
			$S_HTML &= "&lt;option value='Name3'&gt;Carlos<br>" & @CR
			$S_HTML &= "&lt;option value='Name4'&gt;Denis<br>" & @CR
			$S_HTML &= "&lt;option value='Name5'&gt;Ed<br>" & @CR
			$S_HTML &= "&lt;option value='Name6'&gt;Freddy<br>" & @CR
			$S_HTML &= "&lt;/select&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td>" & @CR
			$S_HTML &= "<input name='submitExample' type='submit' value='Submit'>" & @CR
			$S_HTML &= "<input name='resetExample' type='reset' value='Reset'>" & @CR
			$S_HTML &= "</td>" & @CR
			$S_HTML &= "<td>&lt;input name='submitExample' type='submit' value='Submit'&gt;<br>" & @CR
			$S_HTML &= "&lt;input name='resetExample' type='reset' value='Reset'&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "</table>" & @CR
			$S_HTML &= "<input type='hidden' name='hiddenExample' value='secret value'>" & @CR
			$S_HTML &= "</FORM>" & @CR
			$S_HTML &= "</BODY>" & @CR
			$S_HTML &= "</HTML>"
			$O_OBJECT = _IECreate()
			_IEDocWriteHTML($O_OBJECT, $S_HTML)
		Case "frameset"
			$S_HTML &= "<HTML>" & @CR
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Example('frameset')</TITLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<FRAMESET rows='25,200'>" & @CR
			$S_HTML &= "	<FRAME NAME=Top SRC=about:blank>" & @CR
			$S_HTML &= "	<FRAMESET cols='100,500'>" & @CR
			$S_HTML &= "		<FRAME NAME=Menu SRC=about:blank>" & @CR
			$S_HTML &= "		<FRAME NAME=Main SRC=about:blank>" & @CR
			$S_HTML &= "	</FRAMESET>" & @CR
			$S_HTML &= "</FRAMESET>" & @CR
			$S_HTML &= "</HTML>"
			$O_OBJECT = _IECreate()
			_IEDocWriteHTML($O_OBJECT, $S_HTML)
			_IEAction($O_OBJECT, "refresh")
			Local $OFRAMETOP = _IEFrameGetObjByName($O_OBJECT, "Top")
			Local $OFRAMEMENU = _IEFrameGetObjByName($O_OBJECT, "Menu")
			Local $OFRAMEMAIN = _IEFrameGetObjByName($O_OBJECT, "Main")
			_IEBodyWriteHTML($OFRAMETOP, '$oFrameTop = _IEFrameGetObjByName($oIE, "Top")')
			_IEBodyWriteHTML($OFRAMEMENU, '$oFrameMenu = _IEFrameGetObjByName($oIE, "Menu")')
			_IEBodyWriteHTML($OFRAMEMAIN, '$oFrameMain = _IEFrameGetObjByName($oIE, "Main")')
		Case "iframe"
			$S_HTML &= "<HTML>" & @CR
			$S_HTML &= "<HEAD>" & @CR
			$S_HTML &= "<TITLE>_IE_Example('iframe')</TITLE>" & @CR
			$S_HTML &= "</HEAD>" & @CR
			$S_HTML &= "<BODY>" & @CR
			$S_HTML &= "<table cellspacing=6 cellpadding=6 border=1>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td><iframe name='iFrameOne' src='about:blank' title='iFrameOne'></iframe></td>" & @CR
			$S_HTML &= "<td>&lt;iframe name=&quot;iFrameOne&quot; src=&quot;about:blank&quot; title=&quot;iFrameOne&quot;&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "<tr>" & @CR
			$S_HTML &= "<td><iframe name='iFrameTwo' src='about:blank' title='iFrameTwo'></iframe></td>" & @CR
			$S_HTML &= "<td>&lt;iframe name=&quot;iFrameTwo&quot; src=&quot;about:blank&quot; title=&quot;iFrameTwo&quot;&gt;</td>" & @CR
			$S_HTML &= "</tr>" & @CR
			$S_HTML &= "</table>" & @CR
			$S_HTML &= "</BODY>" & @CR
			$S_HTML &= "</HTML>"
			$O_OBJECT = _IECreate()
			_IEDocWriteHTML($O_OBJECT, $S_HTML)
			_IEAction($O_OBJECT, "refresh")
			Local $OIFRAMEONE = _IEFrameGetObjByName($O_OBJECT, "iFrameOne")
			Local $OIFRAMETWO = _IEFrameGetObjByName($O_OBJECT, "iFrameTwo")
			_IEBodyWriteHTML($OIFRAMEONE, '$oIFrameOne = _IEFrameGetObjByName($oIE, "iFrameOne")')
			_IEBodyWriteHTML($OIFRAMETWO, '$oIFrameTwo = _IEFrameGetObjByName($oIE, "iFrameTwo")')
		Case Else
			__IEERRORNOTIFY("Error", "_IE_Example", "$_IEStatus_InvalidValue")
			Return SetError($_IESTATUS_INVALIDVALUE, 1, 0)
	EndSwitch
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT)
EndFunc   ;==>_IE_Example
Func _IE_VersionInfo()
	__IEERRORNOTIFY("Information", "_IE_VersionInfo", "version " & $IEAU3VERSIONINFO[0] & $IEAU3VERSIONINFO[1] & "." & $IEAU3VERSIONINFO[2] & "-" & $IEAU3VERSIONINFO[3], "Release date: " & $IEAU3VERSIONINFO[4])
	Return SetError($_IESTATUS_SUCCESS, 0, $IEAU3VERSIONINFO)
EndFunc   ;==>_IE_VersionInfo
#EndRegion General
#Region Internal functions
Func __IELOCKSETFOREGROUNDWINDOW($NLOCKCODE)
	Local $ARET = DllCall("user32.dll", "bool", "LockSetForegroundWindow", "uint", $NLOCKCODE)
	If @error Or $ARET[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
	Return $ARET[0]
EndFunc   ;==>__IELOCKSETFOREGROUNDWINDOW
Func __IECONTROLGETOBJFROMHWND(ByRef $HWIN)
	DllCall("ole32.dll", "long", "CoInitialize", "ptr", 0)
	If @error Then Return SetError(2, @error, 0)
	Local Const $WM_HTML_GETOBJECT = __IEREGISTERWINDOWMESSAGE("WM_HTML_GETOBJECT")
	Local Const $SMTO_ABORTIFHUNG = 2
	Local $LRESULT
	__IESENDMESSAGETIMEOUT($HWIN, $WM_HTML_GETOBJECT, 0, 0, $SMTO_ABORTIFHUNG, 1000, $LRESULT)
	Local $TYPUUID = DllStructCreate("int;short;short;byte[8]")
	DllStructSetData($TYPUUID, 1, 1651492128)
	DllStructSetData($TYPUUID, 2, 42014)
	DllStructSetData($TYPUUID, 3, 4559)
	DllStructSetData($TYPUUID, 4, 167, 1)
	DllStructSetData($TYPUUID, 4, 49, 2)
	DllStructSetData($TYPUUID, 4, 0, 3)
	DllStructSetData($TYPUUID, 4, 160, 4)
	DllStructSetData($TYPUUID, 4, 201, 5)
	DllStructSetData($TYPUUID, 4, 8, 6)
	DllStructSetData($TYPUUID, 4, 38, 7)
	DllStructSetData($TYPUUID, 4, 55, 8)
	Local $ARET = DllCall("oleacc.dll", "long", "ObjectFromLresult", "lresult", $LRESULT, "ptr", DllStructGetPtr($TYPUUID), "wparam", 0, "idispatch*", 0)
	If @error Then Return SetError(3, @error, 0)
	If IsObj($ARET[4]) Then
		Local $OIE = $ARET[4].Script()
		Return $OIE.Document.parentwindow
	Else
		Return SetError(1, $ARET[0], 0)
	EndIf
EndFunc   ;==>__IECONTROLGETOBJFROMHWND
Func __IEREGISTERWINDOWMESSAGE($SMSG)
	Local $ARET = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $SMSG)
	If @error Then Return SetError(@error, @extended, 0)
	If $ARET[0] = 0 Then Return SetError(10, _WinAPI_GetLastError(), 0)
	Return $ARET[0]
EndFunc   ;==>__IEREGISTERWINDOWMESSAGE
Func __IESENDMESSAGETIMEOUT($HWND, $MSG, $WPARAM, $LPARAM, $NFLAGS, $NTIMEOUT, ByRef $VOUT, $R = 0, $T1 = "int", $T2 = "int")
	Local $ARET = DllCall("user32.dll", "lresult", "SendMessageTimeout", "hwnd", $HWND, "uint", $MSG, $T1, $WPARAM, $T2, $LPARAM, "uint", $NFLAGS, "uint", $NTIMEOUT, "dword_ptr*", "")
	If @error Or $ARET[0] = 0 Then
		$VOUT = 0
		Return SetError(1, _WinAPI_GetLastError(), 0)
	EndIf
	$VOUT = $ARET[7]
	If $R >= 0 And $R <= 4 Then Return $ARET[$R]
	Return $ARET
EndFunc   ;==>__IESENDMESSAGETIMEOUT
Func __IEISOBJTYPE(ByRef $O_OBJECT, $S_TYPE)
	If Not IsObj($O_OBJECT) Then
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	Local $STATUS = __IEINTERNALERRORHANDLERREGISTER()
	If Not $STATUS Then __IEERRORNOTIFY("Warning", "internal function __IEIsObjType", "Cannot register internal error handler, cannot trap COM errors", "Use _IEErrorHandlerRegister() to register a user error handler")
	Local $F_NOTIFYSTATUS = _IEErrorNotify()
	_IEErrorNotify(False)
	Local $S_NAME = String(ObjName($O_OBJECT)), $OBJECTOK = False
	Switch $S_TYPE
		Case "browserdom"
			Local $OTEMP = $O_OBJECT.document
			If __IEISOBJTYPE($O_OBJECT, "documentcontainer") Then
				$OBJECTOK = True
			ElseIf __IEISOBJTYPE($O_OBJECT, "document") Then
				$OBJECTOK = True
			ElseIf __IEISOBJTYPE($OTEMP, "document") Then
				$OBJECTOK = True
			EndIf
		Case "browser"
			If ($S_NAME = "IWebBrowser2") Or ($S_NAME = "IWebBrowser") Then $OBJECTOK = True
		Case "window"
			If $S_NAME = "DispHTMLWindow2" Then $OBJECTOK = True
		Case "documentContainer"
			If __IEISOBJTYPE($O_OBJECT, "window") Or __IEISOBJTYPE($O_OBJECT, "browser") Then $OBJECTOK = True
		Case "document"
			If $S_NAME = "DispHTMLDocument" Then $OBJECTOK = True
		Case "table"
			If $S_NAME = "DispHTMLTable" Then $OBJECTOK = True
		Case "form"
			If $S_NAME = "DispHTMLFormElement" Then $OBJECTOK = True
		Case "forminputelement"
			If ($S_NAME = "DispHTMLInputElement") Or ($S_NAME = "DispHTMLSelectElement") Or ($S_NAME = "DispHTMLTextAreaElement") Then $OBJECTOK = True
		Case "elementcollection"
			If ($S_NAME = "DispHTMLElementCollection") Then $OBJECTOK = True
		Case "formselectelement"
			If $S_NAME = "DispHTMLSelectElement" Then $OBJECTOK = True
		Case Else
			Return SetError($_IESTATUS_INVALIDVALUE, 2, 0)
	EndSwitch
	_IEErrorNotify($F_NOTIFYSTATUS)
	__IEINTERNALERRORHANDLERDEREGISTER()
	If $OBJECTOK Then
		Return SetError($_IESTATUS_SUCCESS, 0, 1)
	Else
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
EndFunc   ;==>__IEISOBJTYPE
Func __IEERRORNOTIFY($S_SEVERITY, $S_FUNC, $S_STATUS = "", $S_MESSAGE = "")
	If $_IEERRORNOTIFY Or $__IEAU3DEBUG Then
		Local $SSTR = "--> IE.au3 " & $IEAU3VERSIONINFO[5] & " " & $S_SEVERITY & " from function " & $S_FUNC
		If Not String($S_STATUS) = "" Then $SSTR &= ", " & $S_STATUS
		If Not String($S_MESSAGE) = "" Then $SSTR &= " (" & $S_MESSAGE & ")"
		ConsoleWrite($SSTR & @CRLF)
	EndIf
	Return 1
EndFunc   ;==>__IEERRORNOTIFY
Func __IEINTERNALERRORHANDLERREGISTER()
	Local $SCURRENTERRORHANDLER = ObjEvent("AutoIt.Error")
	If $SCURRENTERRORHANDLER <> "" And Not IsObj($OIEERRORHANDLER) Then
		Return SetError($_IESTATUS_GENERALERROR, 0, 0)
	EndIf
	$OIEERRORHANDLER = ""
	$OIEERRORHANDLER = ObjEvent("AutoIt.Error", "__IEInternalErrorHandler")
	If IsObj($OIEERRORHANDLER) Then
		Return SetError($_IESTATUS_SUCCESS, 0, 1)
	Else
		Return SetError($_IESTATUS_GENERALERROR, 0, 0)
	EndIf
EndFunc   ;==>__IEINTERNALERRORHANDLERREGISTER
Func __IEINTERNALERRORHANDLERDEREGISTER()
	$OIEERRORHANDLER = ""
	If $SIEUSERERRORHANDLER <> "" Then
		$OIEERRORHANDLER = ObjEvent("AutoIt.Error", $SIEUSERERRORHANDLER)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, 1)
EndFunc   ;==>__IEINTERNALERRORHANDLERDEREGISTER
Func __IEINTERNALERRORHANDLER()
	$IECOMERRORSCRIPTLINE = $OIEERRORHANDLER.scriptline
	$IECOMERRORNUMBER = $OIEERRORHANDLER.number
	$IECOMERRORNUMBERHEX = Hex($OIEERRORHANDLER.number, 8)
	$IECOMERRORDESCRIPTION = StringStripWS($OIEERRORHANDLER.description, 2)
	$IECOMERRORWINDESCRIPTION = StringStripWS($OIEERRORHANDLER.WinDescription, 2)
	$IECOMERRORSOURCE = $OIEERRORHANDLER.Source
	$IECOMERRORHELPFILE = $OIEERRORHANDLER.HelpFile
	$IECOMERRORHELPCONTEXT = $OIEERRORHANDLER.HelpContext
	$IECOMERRORLASTDLLERROR = $OIEERRORHANDLER.LastDllError
	$IECOMERROROUTPUT = ""
	$IECOMERROROUTPUT &= "--> COM Error Encountered in " & @ScriptName & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorScriptline = " & $IECOMERRORSCRIPTLINE & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorNumberHex = " & $IECOMERRORNUMBERHEX & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorNumber = " & $IECOMERRORNUMBER & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorWinDescription = " & $IECOMERRORWINDESCRIPTION & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorDescription = " & $IECOMERRORDESCRIPTION & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorSource = " & $IECOMERRORSOURCE & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorHelpFile = " & $IECOMERRORHELPFILE & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorHelpContext = " & $IECOMERRORHELPCONTEXT & @CRLF
	$IECOMERROROUTPUT &= "----> $IEComErrorLastDllError = " & $IECOMERRORLASTDLLERROR & @CRLF
	If $_IEERRORNOTIFY Or $__IEAU3DEBUG Then ConsoleWrite($IECOMERROROUTPUT & @CRLF)
	SetError($_IESTATUS_COMERROR)
	Return
EndFunc   ;==>__IEINTERNALERRORHANDLER
Func __IECOMERRORUNRECOVERABLE()
	Select
		Case ($IECOMERRORNUMBER = -2147352567) Or (String($IECOMERRORDESCRIPTION) = "Access is denied.")
			Return $_IESTATUS_ACCESSISDENIED
		Case ($IECOMERRORNUMBER = -2147417848) Or (String($IECOMERRORWINDESCRIPTION) = "The object invoked has disconnected from its clients.")
			Return $_IESTATUS_CLIENTDISCONNECTED
		Case Else
			Return $_IESTATUS_SUCCESS
	EndSelect
EndFunc   ;==>__IECOMERRORUNRECOVERABLE
#EndRegion Internal functions
#Region ProtoType Functions
Func __IENAVIGATE(ByRef $O_OBJECT, $S_URL, $F_WAIT = 1, $I_FLAGS = 0, $S_TARGET = "", $S_POSTDATA = "", $S_HEADERS = "")
	__IEERRORNOTIFY("Warning", "__IENavigate", "Unsupported function called. Not fully tested.")
	If Not IsObj($O_OBJECT) Then
		__IEERRORNOTIFY("Error", "__IENavigate", "$_IEStatus_InvalidDataType")
		Return SetError($_IESTATUS_INVALIDDATATYPE, 1, 0)
	EndIf
	If Not __IEISOBJTYPE($O_OBJECT, "documentContainer") Then
		__IEERRORNOTIFY("Error", "__IENavigate", "$_IEStatus_InvalidObjectType")
		Return SetError($_IESTATUS_INVALIDOBJECTTYPE, 1, 0)
	EndIf
	$O_OBJECT.navigate($S_URL, $I_FLAGS, $S_TARGET, $S_POSTDATA, $S_HEADERS)
	If $F_WAIT Then
		_IELoadWait($O_OBJECT)
		Return SetError(@error, 0, $O_OBJECT)
	EndIf
	Return SetError($_IESTATUS_SUCCESS, 0, $O_OBJECT)
EndFunc   ;==>__IENAVIGATE
Func __IESTRINGTOBSTR($S_STRING, $S_CHARSET = "us-ascii")
	Local Const $ADTYPEBINARY = 1, $ADTYPETEXT = 2
	Local $O_STREAM = ObjCreate("ADODB.Stream")
	$O_STREAM.Type = $ADTYPETEXT
	$O_STREAM.CharSet = $S_CHARSET
	$O_STREAM.Open
	$O_STREAM.WriteText($S_STRING)
	$O_STREAM.Position = 0
	$O_STREAM.Type = $ADTYPEBINARY
	$O_STREAM.Position = 0
	Return $O_STREAM.Read
EndFunc   ;==>__IESTRINGTOBSTR
Func __IEBSTRTOSTRING($O_BSTR, $S_CHARSET = "us-ascii")
	Local Const $ADTYPEBINARY = 1, $ADTYPETEXT = 2
	Local $O_STREAM = ObjCreate("ADODB.Stream")
	$O_STREAM.Type = $ADTYPEBINARY
	$O_STREAM.Open
	$O_STREAM.Write($O_BSTR)
	$O_STREAM.Position = 0
	$O_STREAM.Type = $ADTYPETEXT
	$O_STREAM.CharSet = $S_CHARSET
	$O_STREAM.Position = 0
	Return $O_STREAM.ReadText
EndFunc   ;==>__IEBSTRTOSTRING
Func __IECREATENEWIE($S_TITLE, $S_HEAD = "", $S_BODY = "")
	Local $S_TEMP = __IETEMPFILE("", "~IE~", ".htm")
	If @error Then
		__IEERRORNOTIFY("Error", "_IECreateHTA", "", "Error creating temporary file in @TempDir or @ScriptDir")
		Return SetError($_IESTATUS_GENERALERROR, 1, 0)
	EndIf
	Local $S_HTML = ""
	$S_HTML &= "<HTML>" & @CR
	$S_HTML &= "<HEAD>" & @CR
	$S_HTML &= "<TITLE>" & $S_TEMP & "</TITLE>" & @CR & $S_HEAD & @CR
	$S_HTML &= "</HEAD>" & @CR
	$S_HTML &= "<BODY>" & @CR & $S_BODY & @CR
	$S_HTML &= "</BODY>" & @CR
	$S_HTML &= "</HTML>"
	Local $H_FILE = FileOpen($S_TEMP, 2)
	FileWrite($H_FILE, $S_HTML)
	FileClose($H_FILE)
	If @error Then
		__IEERRORNOTIFY("Error", "_IECreateNewIE", "", "Error creating temporary file in @TempDir or @ScriptDir")
		Return SetError($_IESTATUS_GENERALERROR, 2, 0)
	EndIf
	Run(@ProgramFilesDir & "\Internet Explorer\iexplore.exe " & $S_TEMP)
	Local $S_PID
	If WinWait($S_TEMP, "", 60) Then
		$S_PID = WinGetProcess($S_TEMP)
	Else
		__IEERRORNOTIFY("Error", "_IECreateNewIE", "", "Timeout waiting for new IE window creation")
		Return SetError($_IESTATUS_GENERALERROR, 3, 0)
	EndIf
	If Not FileDelete($S_TEMP) Then
		__IEERRORNOTIFY("Warning", "_IECreateNewIE", "", "Could not delete temporary file " & FileGetLongName($S_TEMP))
	EndIf
	Local $O_OBJECT = _IEAttach($S_TEMP)
	_IELoadWait($O_OBJECT)
	_IEPropertySet($O_OBJECT, "title", $S_TITLE)
	Return SetError($_IESTATUS_SUCCESS, $S_PID, $O_OBJECT)
EndFunc   ;==>__IECREATENEWIE
Func __IETEMPFILE($S_DIRECTORYNAME = @TempDir, $S_FILEPREFIX = "~", $S_FILEEXTENSION = ".tmp", $I_RANDOMLENGTH = 7)
	Local $S_TEMPNAME, $I_TMP = 0
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @TempDir
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @ScriptDir
	If StringRight($S_DIRECTORYNAME, 1) <> "\" Then $S_DIRECTORYNAME = $S_DIRECTORYNAME & "\"
	Do
		$S_TEMPNAME = ""
		While StringLen($S_TEMPNAME) < $I_RANDOMLENGTH
			$S_TEMPNAME = $S_TEMPNAME & Chr(Random(97, 122, 1))
		WEnd
		$S_TEMPNAME = $S_DIRECTORYNAME & $S_FILEPREFIX & $S_TEMPNAME & $S_FILEEXTENSION
		$I_TMP += 1
		If $I_TMP > 200 Then
			Return SetError($_IESTATUS_GENERALERROR, 1, 0)
		EndIf
	Until Not FileExists($S_TEMPNAME)
	Return $S_TEMPNAME
EndFunc   ;==>__IETEMPFILE
#EndRegion ProtoType Functions
Func _FileCountLines($SFILEPATH)
	Local $HFILE = FileOpen($SFILEPATH, $FO_READ)
	If $HFILE = -1 Then Return SetError(1, 0, 0)
	Local $SFILECONTENT = StringStripWS(FileRead($HFILE), 2)
	FileClose($HFILE)
	Local $ATMP
	If StringInStr($SFILECONTENT, @LF) Then
		$ATMP = StringSplit(StringStripCR($SFILECONTENT), @LF)
	ElseIf StringInStr($SFILECONTENT, @CR) Then
		$ATMP = StringSplit($SFILECONTENT, @CR)
	Else
		If StringLen($SFILECONTENT) Then
			Return 1
		Else
			Return SetError(2, 0, 0)
		EndIf
	EndIf
	Return $ATMP[0]
EndFunc   ;==>_FileCountLines
Func _FileCreate($SFILEPATH)
	Local $HOPENFILE = FileOpen($SFILEPATH, $FO_OVERWRITE)
	If $HOPENFILE = -1 Then Return SetError(1, 0, 0)
	Local $HWRITEFILE = FileWrite($HOPENFILE, "")
	FileClose($HOPENFILE)
	If $HWRITEFILE = -1 Then Return SetError(2, 0, 0)
	Return 1
EndFunc   ;==>_FileCreate
Func _FileListToArray($SPATH, $SFILTER = "*", $IFLAG = 0)
	Local $HSEARCH, $SFILE, $SFILELIST, $SDELIM = "|"
	$SPATH = StringRegExpReplace($SPATH, "[\\/]+\z", "") & "\"
	If Not FileExists($SPATH) Then Return SetError(1, 1, "")
	If StringRegExp($SFILTER, "[\\/:><\|]|(?s)\A\s*\z") Then Return SetError(2, 2, "")
	If Not ($IFLAG = 0 Or $IFLAG = 1 Or $IFLAG = 2) Then Return SetError(3, 3, "")
	$HSEARCH = FileFindFirstFile($SPATH & $SFILTER)
	If @error Then Return SetError(4, 4, "")
	While 1
		$SFILE = FileFindNextFile($HSEARCH)
		If @error Then ExitLoop
		If ($IFLAG + @extended = 2) Then ContinueLoop
		$SFILELIST &= $SDELIM & $SFILE
	WEnd
	FileClose($HSEARCH)
	If Not $SFILELIST Then Return SetError(4, 4, "")
	Return StringSplit(StringTrimLeft($SFILELIST, 1), "|")
EndFunc   ;==>_FileListToArray
Func _FilePrint($S_FILE, $I_SHOW = @SW_HIDE)
	Local $A_RET = DllCall("shell32.dll", "int", "ShellExecuteW", "hwnd", 0, "wstr", "print", "wstr", $S_FILE, "wstr", "", "wstr", "", "int", $I_SHOW)
	If @error Then Return SetError(@error, @extended, 0)
	If $A_RET[0] <= 32 Then Return SetError(10, $A_RET[0], 0)
	Return 1
EndFunc   ;==>_FilePrint
Func _FileReadToArray($SFILEPATH, ByRef $AARRAY)
	Local $HFILE = FileOpen($SFILEPATH, $FO_READ)
	If $HFILE = -1 Then Return SetError(1, 0, 0)
	Local $AFILE = FileRead($HFILE, FileGetSize($SFILEPATH))
	If StringRight($AFILE, 1) = @LF Then $AFILE = StringTrimRight($AFILE, 1)
	If StringRight($AFILE, 1) = @CR Then $AFILE = StringTrimRight($AFILE, 1)
	FileClose($HFILE)
	If StringInStr($AFILE, @LF) Then
		$AARRAY = StringSplit(StringStripCR($AFILE), @LF)
	ElseIf StringInStr($AFILE, @CR) Then
		$AARRAY = StringSplit($AFILE, @CR)
	Else
		If StringLen($AFILE) Then
			Dim $AARRAY[2] = [1, $AFILE]
		Else
			Return SetError(2, 0, 0)
		EndIf
	EndIf
	Return 1
EndFunc   ;==>_FileReadToArray
Func _FileWriteFromArray($FILE, $A_ARRAY, $I_BASE = 0, $I_UBOUND = 0)
	If Not IsArray($A_ARRAY) Then Return SetError(2, 0, 0)
	Local $LAST = UBound($A_ARRAY) - 1
	If $I_UBOUND < 1 Or $I_UBOUND > $LAST Then $I_UBOUND = $LAST
	If $I_BASE < 0 Or $I_BASE > $LAST Then $I_BASE = 0
	Local $HFILE
	If IsString($FILE) Then
		$HFILE = FileOpen($FILE, $FO_OVERWRITE)
	Else
		$HFILE = $FILE
	EndIf
	If $HFILE = -1 Then Return SetError(1, 0, 0)
	Local $ERRORSAV = 0
	For $X = $I_BASE To $I_UBOUND
		If FileWrite($HFILE, $A_ARRAY[$X] & @CRLF) = 0 Then
			$ERRORSAV = 3
			ExitLoop
		EndIf
	Next
	If IsString($FILE) Then FileClose($HFILE)
	If $ERRORSAV Then Return SetError($ERRORSAV, 0, 0)
	Return 1
EndFunc   ;==>_FileWriteFromArray
Func _FileWriteLog($SLOGPATH, $SLOGMSG, $IFLAG = -1)
	Local $IOPENMODE = $FO_APPEND
	Local $SDATENOW = @YEAR & "-" & @MON & "-" & @MDAY
	Local $STIMENOW = @HOUR & ":" & @MIN & ":" & @SEC
	Local $SMSG = $SDATENOW & " " & $STIMENOW & " : " & $SLOGMSG
	If $IFLAG <> -1 Then
		$SMSG &= @CRLF & FileRead($SLOGPATH)
		$IOPENMODE = $FO_OVERWRITE
	EndIf
	Local $HOPENFILE = FileOpen($SLOGPATH, $IOPENMODE)
	If $HOPENFILE = -1 Then Return SetError(1, 0, 0)
	Local $IWRITEFILE = FileWriteLine($HOPENFILE, $SMSG)
	Local $IRET = FileClose($HOPENFILE)
	If $IWRITEFILE = -1 Then Return SetError(2, $IRET, 0)
	Return $IRET
EndFunc   ;==>_FileWriteLog
Func _FileWriteToLine($SFILE, $ILINE, $STEXT, $FOVERWRITE = 0)
	If $ILINE <= 0 Then Return SetError(4, 0, 0)
	If Not IsString($STEXT) Then
		$STEXT = String($STEXT)
		If $STEXT = "" Then Return SetError(6, 0, 0)
	EndIf
	If $FOVERWRITE <> 0 And $FOVERWRITE <> 1 Then Return SetError(5, 0, 0)
	If Not FileExists($SFILE) Then Return SetError(2, 0, 0)
	Local $SREAD_FILE = FileRead($SFILE)
	Local $ASPLIT_FILE = StringSplit(StringStripCR($SREAD_FILE), @LF)
	If UBound($ASPLIT_FILE) < $ILINE Then Return SetError(1, 0, 0)
	Local $HFILE = FileOpen($SFILE, $FO_OVERWRITE)
	If $HFILE = -1 Then Return SetError(3, 0, 0)
	$SREAD_FILE = ""
	For $I = 1 To $ASPLIT_FILE[0]
		If $I = $ILINE Then
			If $FOVERWRITE = 1 Then
				If $STEXT <> "" Then $SREAD_FILE &= $STEXT & @CRLF
			Else
				$SREAD_FILE &= $STEXT & @CRLF & $ASPLIT_FILE[$I] & @CRLF
			EndIf
		ElseIf $I < $ASPLIT_FILE[0] Then
			$SREAD_FILE &= $ASPLIT_FILE[$I] & @CRLF
		ElseIf $I = $ASPLIT_FILE[0] Then
			$SREAD_FILE &= $ASPLIT_FILE[$I]
		EndIf
	Next
	FileWrite($HFILE, $SREAD_FILE)
	FileClose($HFILE)
	Return 1
EndFunc   ;==>_FileWriteToLine
Func _PathFull($SRELATIVEPATH, $SBASEPATH = @WorkingDir)
	If Not $SRELATIVEPATH Or $SRELATIVEPATH = "." Then Return $SBASEPATH
	Local $SFULLPATH = StringReplace($SRELATIVEPATH, "/", "\")
	Local Const $SFULLPATHCONST = $SFULLPATH
	Local $SPATH
	Local $BROOTONLY = StringLeft($SFULLPATH, 1) = "\" And StringMid($SFULLPATH, 2, 1) <> "\"
	For $I = 1 To 2
		$SPATH = StringLeft($SFULLPATH, 2)
		If $SPATH = "\\" Then
			$SFULLPATH = StringTrimLeft($SFULLPATH, 2)
			Local $NSERVERLEN = StringInStr($SFULLPATH, "\") - 1
			$SPATH = "\\" & StringLeft($SFULLPATH, $NSERVERLEN)
			$SFULLPATH = StringTrimLeft($SFULLPATH, $NSERVERLEN)
			ExitLoop
		ElseIf StringRight($SPATH, 1) = ":" Then
			$SFULLPATH = StringTrimLeft($SFULLPATH, 2)
			ExitLoop
		Else
			$SFULLPATH = $SBASEPATH & "\" & $SFULLPATH
		EndIf
	Next
	If $I = 3 Then Return ""
	If StringLeft($SFULLPATH, 1) <> "\" Then
		If StringLeft($SFULLPATHCONST, 2) = StringLeft($SBASEPATH, 2) Then
			$SFULLPATH = $SBASEPATH & "\" & $SFULLPATH
		Else
			$SFULLPATH = "\" & $SFULLPATH
		EndIf
	EndIf
	Local $ATEMP = StringSplit($SFULLPATH, "\")
	Local $APATHPARTS[$ATEMP[0]], $J = 0
	For $I = 2 To $ATEMP[0]
		If $ATEMP[$I] = ".." Then
			If $J Then $J -= 1
		ElseIf Not ($ATEMP[$I] = "" And $I <> $ATEMP[0]) And $ATEMP[$I] <> "." Then
			$APATHPARTS[$J] = $ATEMP[$I]
			$J += 1
		EndIf
	Next
	$SFULLPATH = $SPATH
	If Not $BROOTONLY Then
		For $I = 0 To $J - 1
			$SFULLPATH &= "\" & $APATHPARTS[$I]
		Next
	Else
		$SFULLPATH &= $SFULLPATHCONST
		If StringInStr($SFULLPATH, "..") Then $SFULLPATH = _PathFull($SFULLPATH)
	EndIf
	While StringInStr($SFULLPATH, ".\")
		$SFULLPATH = StringReplace($SFULLPATH, ".\", "\")
	WEnd
	Return $SFULLPATH
EndFunc   ;==>_PathFull
Func _PathGetRelative($SFROM, $STO)
	If StringRight($SFROM, 1) <> "\" Then $SFROM &= "\"
	If StringRight($STO, 1) <> "\" Then $STO &= "\"
	If $SFROM = $STO Then Return SetError(1, 0, StringTrimRight($STO, 1))
	Local $ASFROM = StringSplit($SFROM, "\")
	Local $ASTO = StringSplit($STO, "\")
	If $ASFROM[1] <> $ASTO[1] Then Return SetError(2, 0, StringTrimRight($STO, 1))
	Local $I = 2
	Local $IDIFF = 1
	While 1
		If $ASFROM[$I] <> $ASTO[$I] Then
			$IDIFF = $I
			ExitLoop
		EndIf
		$I += 1
	WEnd
	$I = 1
	Local $SRELPATH = ""
	For $J = 1 To $ASTO[0]
		If $I >= $IDIFF Then
			$SRELPATH &= "\" & $ASTO[$I]
		EndIf
		$I += 1
	Next
	$SRELPATH = StringTrimLeft($SRELPATH, 1)
	$I = 1
	For $J = 1 To $ASFROM[0]
		If $I > $IDIFF Then
			$SRELPATH = "..\" & $SRELPATH
		EndIf
		$I += 1
	Next
	If StringRight($SRELPATH, 1) == "\" Then $SRELPATH = StringTrimRight($SRELPATH, 1)
	Return $SRELPATH
EndFunc   ;==>_PathGetRelative
Func _PathMake($SZDRIVE, $SZDIR, $SZFNAME, $SZEXT)
	If StringLen($SZDRIVE) Then
		If Not (StringLeft($SZDRIVE, 2) = "\\") Then $SZDRIVE = StringLeft($SZDRIVE, 1) & ":"
	EndIf
	If StringLen($SZDIR) Then
		If Not (StringRight($SZDIR, 1) = "\") And Not (StringRight($SZDIR, 1) = "/") Then $SZDIR = $SZDIR & "\"
	EndIf
	If StringLen($SZEXT) Then
		If Not (StringLeft($SZEXT, 1) = ".") Then $SZEXT = "." & $SZEXT
	EndIf
	Return $SZDRIVE & $SZDIR & $SZFNAME & $SZEXT
EndFunc   ;==>_PathMake
Func _PathSplit($SZPATH, ByRef $SZDRIVE, ByRef $SZDIR, ByRef $SZFNAME, ByRef $SZEXT)
	Local $DRIVE = ""
	Local $DIR = ""
	Local $FNAME = ""
	Local $EXT = ""
	Local $POS
	Local $ARRAY[5]
	$ARRAY[0] = $SZPATH
	If StringMid($SZPATH, 2, 1) = ":" Then
		$DRIVE = StringLeft($SZPATH, 2)
		$SZPATH = StringTrimLeft($SZPATH, 2)
	ElseIf StringLeft($SZPATH, 2) = "\\" Then
		$SZPATH = StringTrimLeft($SZPATH, 2)
		$POS = StringInStr($SZPATH, "\")
		If $POS = 0 Then $POS = StringInStr($SZPATH, "/")
		If $POS = 0 Then
			$DRIVE = "\\" & $SZPATH
			$SZPATH = ""
		Else
			$DRIVE = "\\" & StringLeft($SZPATH, $POS - 1)
			$SZPATH = StringTrimLeft($SZPATH, $POS - 1)
		EndIf
	EndIf
	Local $NPOSFORWARD = StringInStr($SZPATH, "/", 0, -1)
	Local $NPOSBACKWARD = StringInStr($SZPATH, "\", 0, -1)
	If $NPOSFORWARD >= $NPOSBACKWARD Then
		$POS = $NPOSFORWARD
	Else
		$POS = $NPOSBACKWARD
	EndIf
	$DIR = StringLeft($SZPATH, $POS)
	$FNAME = StringRight($SZPATH, StringLen($SZPATH) - $POS)
	If StringLen($DIR) = 0 Then $FNAME = $SZPATH
	$POS = StringInStr($FNAME, ".", 0, -1)
	If $POS Then
		$EXT = StringRight($FNAME, StringLen($FNAME) - ($POS - 1))
		$FNAME = StringLeft($FNAME, $POS - 1)
	EndIf
	$SZDRIVE = $DRIVE
	$SZDIR = $DIR
	$SZFNAME = $FNAME
	$SZEXT = $EXT
	$ARRAY[1] = $DRIVE
	$ARRAY[2] = $DIR
	$ARRAY[3] = $FNAME
	$ARRAY[4] = $EXT
	Return $ARRAY
EndFunc   ;==>_PathSplit
Func _ReplaceStringInFile($SZFILENAME, $SZSEARCHSTRING, $SZREPLACESTRING, $FCASENESS = 0, $FOCCURANCE = 1)
	Local $IRETVAL = 0
	Local $NCOUNT, $SENDSWITH
	If StringInStr(FileGetAttrib($SZFILENAME), "R") Then Return SetError(6, 0, -1)
	Local $HFILE = FileOpen($SZFILENAME, $FO_READ)
	If $HFILE = -1 Then Return SetError(1, 0, -1)
	Local $S_TOTFILE = FileRead($HFILE, FileGetSize($SZFILENAME))
	If StringRight($S_TOTFILE, 2) = @CRLF Then
		$SENDSWITH = @CRLF
	ElseIf StringRight($S_TOTFILE, 1) = @CR Then
		$SENDSWITH = @CR
	ElseIf StringRight($S_TOTFILE, 1) = @LF Then
		$SENDSWITH = @LF
	Else
		$SENDSWITH = ""
	EndIf
	Local $AFILELINES = StringSplit(StringStripCR($S_TOTFILE), @LF)
	FileClose($HFILE)
	Local $HWRITEHANDLE = FileOpen($SZFILENAME, $FO_OVERWRITE)
	If $HWRITEHANDLE = -1 Then Return SetError(2, 0, -1)
	For $NCOUNT = 1 To $AFILELINES[0]
		If StringInStr($AFILELINES[$NCOUNT], $SZSEARCHSTRING, $FCASENESS) Then
			$AFILELINES[$NCOUNT] = StringReplace($AFILELINES[$NCOUNT], $SZSEARCHSTRING, $SZREPLACESTRING, 1 - $FOCCURANCE, $FCASENESS)
			$IRETVAL = $IRETVAL + 1
			If $FOCCURANCE = 0 Then
				$IRETVAL = 1
				ExitLoop
			EndIf
		EndIf
	Next
	For $NCOUNT = 1 To $AFILELINES[0] - 1
		If FileWriteLine($HWRITEHANDLE, $AFILELINES[$NCOUNT]) = 0 Then
			FileClose($HWRITEHANDLE)
			Return SetError(3, 0, -1)
		EndIf
	Next
	If $AFILELINES[$NCOUNT] <> "" Then FileWrite($HWRITEHANDLE, $AFILELINES[$NCOUNT] & $SENDSWITH)
	FileClose($HWRITEHANDLE)
	Return $IRETVAL
EndFunc   ;==>_ReplaceStringInFile
Func _TempFile($S_DIRECTORYNAME = @TempDir, $S_FILEPREFIX = "~", $S_FILEEXTENSION = ".tmp", $I_RANDOMLENGTH = 7)
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @TempDir
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @ScriptDir
	If StringRight($S_DIRECTORYNAME, 1) <> "\" Then $S_DIRECTORYNAME = $S_DIRECTORYNAME & "\"
	Local $S_TEMPNAME
	Do
		$S_TEMPNAME = ""
		While StringLen($S_TEMPNAME) < $I_RANDOMLENGTH
			$S_TEMPNAME = $S_TEMPNAME & Chr(Random(97, 122, 1))
		WEnd
		$S_TEMPNAME = $S_DIRECTORYNAME & $S_FILEPREFIX & $S_TEMPNAME & $S_FILEEXTENSION
	Until Not FileExists($S_TEMPNAME)
	Return $S_TEMPNAME
EndFunc   ;==>_TempFile
Global Const $GUI_EVENT_CLOSE = -3
Global Const $GUI_EVENT_MINIMIZE = -4
Global Const $GUI_EVENT_RESTORE = -5
Global Const $GUI_EVENT_MAXIMIZE = -6
Global Const $GUI_EVENT_PRIMARYDOWN = -7
Global Const $GUI_EVENT_PRIMARYUP = -8
Global Const $GUI_EVENT_SECONDARYDOWN = -9
Global Const $GUI_EVENT_SECONDARYUP = -10
Global Const $GUI_EVENT_MOUSEMOVE = -11
Global Const $GUI_EVENT_RESIZED = -12
Global Const $GUI_EVENT_DROPPED = -13
Global Const $GUI_RUNDEFMSG = "GUI_RUNDEFMSG"
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 1
Global Const $GUI_DOCKLEFT = 2
Global Const $GUI_DOCKRIGHT = 4
Global Const $GUI_DOCKHCENTER = 8
Global Const $GUI_DOCKTOP = 32
Global Const $GUI_DOCKBOTTOM = 64
Global Const $GUI_DOCKVCENTER = 128
Global Const $GUI_DOCKWIDTH = 256
Global Const $GUI_DOCKHEIGHT = 512
Global Const $GUI_DOCKSIZE = 768
Global Const $GUI_DOCKMENUBAR = 544
Global Const $GUI_DOCKSTATEBAR = 576
Global Const $GUI_DOCKALL = 802
Global Const $GUI_DOCKBORDERS = 102
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = -2
Global Const $GUI_BKCOLOR_DEFAULT = -1
Global Const $GUI_BKCOLOR_TRANSPARENT = -2
Global Const $GUI_BKCOLOR_LV_ALTERNATE = -33554432
Global Const $GUI_WS_EX_PARENTDRAG = 1048576
Const $PARAMBYVAL = 0
Const $PARAMBYREF = 1
Const $PARAMWINDOW = 3
Const $PARAMARRAY = 2
Const $OE_HOTKEY = 1
Const $OE_CONTROL = 0
Const $OE_GUI = 2
Const $MAX_NUM_PARAMS = 5
Global $CTRLLIB[6][2][$MAX_NUM_PARAMS + 3]
Func SETONEVENTA($ICTRL, $SFUNC, $PARTYPE1 = 0, $PAR1 = "", $PARTYPE2 = 0, $PAR2 = "", $PARTYPE3 = 0, $PAR3 = "", $PARTYPE4 = 0, $PAR4 = "", $PARTYPE5 = 0, $PAR5 = "")
	$IPARCOUNT = (@NumParams - 2) / 2
	Return SETONEVENTAT(0, $IPARCOUNT, $ICTRL, $SFUNC, $PARTYPE1, $PAR1, $PARTYPE2, $PAR2, $PARTYPE3, $PAR3, $PARTYPE4, $PAR4, $PARTYPE5, $PAR5)
EndFunc   ;==>SETONEVENTA
Func TRAYSETONEVENTA($ICTRL, $SFUNC, $PARTYPE1 = 0, $PAR1 = "", $PARTYPE2 = 0, $PAR2 = "", $PARTYPE3 = 0, $PAR3 = "", $PARTYPE4 = 0, $PAR4 = "", $PARTYPE5 = 0, $PAR5 = "")
	Local $TT
	If $ICTRL = -1 Then
		$TT = TrayCreateItem("")
		$ICTRL = $TT - 1
		TrayItemDelete($TT)
	EndIf
	$IPARCOUNT = (@NumParams - 2) / 2
	Return SETONEVENTAT(1, $IPARCOUNT, $ICTRL, $SFUNC, $PARTYPE1, $PAR1, $PARTYPE2, $PAR2, $PARTYPE3, $PAR3, $PARTYPE4, $PAR4, $PARTYPE5, $PAR5)
EndFunc   ;==>TRAYSETONEVENTA
Func SETONEVENTAT($CTRLTYPE, $IPARCOUNT, $ICTRL, $SFUNC, $PARTYPE1 = 0, $PAR1 = "", $PARTYPE2 = 0, $PAR2 = "", $PARTYPE3 = 0, $PAR3 = "", $PARTYPE4 = 0, $PAR4 = "", $PARTYPE5 = 0, $PAR5 = "")
	Local $N, $AVAL, $ITEM = 0
	If $ICTRL = -1 Then $ICTRL = _GUIGETLASTCTRLID()
	For $N = 1 To $CTRLLIB[0][0][0]
		If $CTRLLIB[$N][1][0] = $ICTRL Then
			$ITEM = $N
			ExitLoop
		EndIf
	Next
	If $ITEM = 0 Then
		$CTRLLIB[0][0][0] += 1
		$ITEM = $CTRLLIB[0][0][0]
		If UBound($CTRLLIB) < $ITEM + 1 Then ReDim $CTRLLIB[$ITEM + 2][2][$MAX_NUM_PARAMS + 3]
	EndIf
	If $CTRLTYPE = 0 Then
		If IsString($ICTRL) Then
			If Not IsString($ICTRL) Or $ICTRL = "" Then Return -6
			HotKeySet($ICTRL, "HK_EVENTFUNC")
			$CTRLLIB[$ITEM][0][0] = $OE_HOTKEY
		Else
			If Opt("GUIOnEventMode") = 0 Then
				Return -3
			EndIf
			If $ICTRL < -2 And $ICTRL > -14 Then
				If $PARTYPE1 <> $PARAMBYVAL Then Return -4
				If IsHWnd($PAR1) Then
					$CTRLLIB[$ITEM][0][1] = $PAR1
				ElseIf Number($PAR1) = 0 Then
					$CTRLLIB[$ITEM][0][1] = 0
				Else
					Return -5
				EndIf
				GUISetOnEvent($ICTRL, "EventGuiFunc")
				$CTRLLIB[$ITEM][0][0] = $OE_GUI
			Else
				$CTRLLIB[$ITEM][0][0] = $OE_CONTROL
				GUICtrlSetOnEvent($ICTRL, "EventCtrlFunc")
			EndIf
		EndIf
	Else
		TrayItemSetOnEvent($ICTRL, "TrayEventCtrlFunc")
		$CTRLLIB[$ITEM][0][0] = $OE_CONTROL
	EndIf
	Switch $CTRLLIB[$ITEM][0][0]
		Case $OE_HOTKEY
			$CTRLLIB[$ITEM][1][0] = $ICTRL
		Case $OE_CONTROL
			$CTRLLIB[$ITEM][1][0] = $ICTRL
		Case $OE_GUI
			$CTRLLIB[$ITEM][1][0] = $ICTRL
	EndSwitch
	$CTRLLIB[$ITEM][1][1] = $SFUNC
	$CTRLLIB[$ITEM][1][2] = $IPARCOUNT
	For $N = 1 To $IPARCOUNT
		$CTRLLIB[$ITEM][0][$N + 2] = Eval("ParType" & $N)
		If $CTRLLIB[$ITEM][0][$N + 2] = $PARAMBYVAL Then
			$CTRLLIB[$ITEM][1][$N + 2] = Eval("Par" & $N)
		ElseIf ($CTRLLIB[$ITEM][0][$N + 2] = $PARAMBYREF) Then
			$AVAL = Eval("Par" & $N)
			If Not IsString($AVAL) Then
				$CTRLLIB[$ITEM][1][1] = ""
				SetError($N)
				Return -2
			EndIf
			If StringLeft($AVAL, 1) = "$" Then
				$AVAL = StringRight($AVAL, StringLen($AVAL) - 1)
			EndIf
			$CTRLLIB[$ITEM][1][$N + 2] = $AVAL
		Else
			$CTRLLIB[$ITEM][1][1] = ""
			Return -1
		EndIf
	Next
	If $CTRLLIB[$ITEM][0][0] = $OE_GUI And $IPARCOUNT = 0 Then
		$CTRLLIB[$ITEM][1][1 + 2] = 0
	EndIf
	Return 1
EndFunc   ;==>SETONEVENTAT
Func _GUIGETLASTCTRLID()
	Local $ARET = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", GUICtrlGetHandle(-1))
	Return $ARET[0]
EndFunc   ;==>_GUIGETLASTCTRLID
Func EVENTCTRLFUNC()
	Local $ITEM
	$ITEM = GETITEM(@GUI_CtrlId)
	If $ITEM = -1 Then $ITEM = GETITEM(@TRAY_ID)
	If $ITEM = -1 Then Return
	$CTRLLIB[0][1][1] = $ITEM
	$CTRLLIB[0][1][2] = @GUI_CtrlId
	BUILDFNCALL($ITEM)
EndFunc   ;==>EVENTCTRLFUNC
Func TRAYEVENTCTRLFUNC()
	Local $ITEM
	$ITEM = GETITEM(@TRAY_ID)
	If $ITEM = -1 Then Return
	$CTRLLIB[0][1][1] = $ITEM
	$CTRLLIB[0][1][2] = @TRAY_ID
	BUILDFNCALL($ITEM)
EndFunc   ;==>TRAYEVENTCTRLFUNC
Func EVENTGUIFUNC()
	Local $ITEM
	$ITEM = GETITEM(@GUI_CtrlId, @GUI_WinHandle)
	If $ITEM = -1 Then Return
	$CTRLLIB[0][1][1] = $ITEM
	$CTRLLIB[0][1][2] = @GUI_CtrlId
	If @GUI_CtrlId = $GUI_EVENT_DROPPED Then
		$CTRLLIB[0][1][3] = @GUI_DragId
		$CTRLLIB[0][1][4] = @GUI_DragFile
		$CTRLLIB[0][1][5] = @GUI_DropId
	EndIf
	BUILDFNCALL($ITEM)
EndFunc   ;==>EVENTGUIFUNC
Func EVENTGETDRAGIDS()
	Local $ADRAG[3]
	$ADRAG[0] = $CTRLLIB[0][1][3]
	$ADRAG[1] = $CTRLLIB[0][1][4]
	$ADRAG[2] = $CTRLLIB[0][1][5]
	Return $ADRAG
EndFunc   ;==>EVENTGETDRAGIDS
Func HK_EVENTFUNC()
	Local $ITEM
	$ITEM = GETITEM(@HotKeyPressed)
	If $ITEM = -1 Then Return
	$CTRLLIB[0][1][1] = $ITEM
	$CTRLLIB[0][1][2] = @HotKeyPressed
	BUILDFNCALL($ITEM)
EndFunc   ;==>HK_EVENTFUNC
Func BUILDFNCALL($INDEX)
	Local $ARRAYSET[$CTRLLIB[$INDEX][1][2] + 1]
	$ARRAYSET[0] = "CallArgArray"
	For $N = 1 To $CTRLLIB[$INDEX][1][2]
		If $CTRLLIB[$INDEX][0][$N + 2] = $PARAMBYVAL Then
			$ARRAYSET[$N] = $CTRLLIB[$INDEX][1][$N + 2]
		Else
			$ARRAYSET[$N] = Eval($CTRLLIB[$INDEX][1][$N + 2])
		EndIf
	Next
	Call($CTRLLIB[$INDEX][1][1], $ARRAYSET)
EndFunc   ;==>BUILDFNCALL
Func GETCTRLID()
	Return $CTRLLIB[0][1][2]
EndFunc   ;==>GETCTRLID
Func GETCTRLHANDLE()
	If IsString($CTRLLIB[0][1][2]) Or $CTRLLIB[0][1][2] = 0 Then
		Return 0
	Else
		Return GUICtrlGetHandle($CTRLLIB[0][1][2])
	EndIf
EndFunc   ;==>GETCTRLHANDLE
Func GETITEM($ID, $HWND = 0)
	For $N = 0 To UBound($CTRLLIB) - 1
		If $CTRLLIB[$N][1][0] = $ID Then
			If $CTRLLIB[$N][0][0] = $OE_GUI Then
				If $CTRLLIB[$N][0][1] = $HWND Or $CTRLLIB[$N][0][1] = 0 Then
					Return $N
				EndIf
			Else
				Return $N
			EndIf
		EndIf
	Next
	Return -1
EndFunc   ;==>GETITEM
Func SETONEVENT($ICTRL, $SFUNC, $IPARCOUNT = 0, $PARTYPE1 = 0, $PAR1 = "", $PARTYPE2 = 0, $PAR2 = "", $PARTYPE3 = 0, $PAR3 = "", $PARTYPE4 = 0, $PAR4 = "", $PARTYPE5 = 0, $PAR5 = "")
	SETONEVENTA($ICTRL, $SFUNC, $PARTYPE1, $PAR1, $PARTYPE2, $PAR2, $PARTYPE3, $PAR3, $PARTYPE4, $PAR4, $PARTYPE5, $PAR5)
EndFunc   ;==>SETONEVENT
Global Const $FW_DONTCARE = 0
Global Const $FW_THIN = 100
Global Const $FW_EXTRALIGHT = 200
Global Const $FW_ULTRALIGHT = 200
Global Const $FW_LIGHT = 300
Global Const $FW_NORMAL = 400
Global Const $FW_REGULAR = 400
Global Const $FW_MEDIUM = 500
Global Const $FW_SEMIBOLD = 600
Global Const $FW_DEMIBOLD = 600
Global Const $FW_BOLD = 700
Global Const $FW_EXTRABOLD = 800
Global Const $FW_ULTRABOLD = 800
Global Const $FW_HEAVY = 900
Global Const $FW_BLACK = 900
Global Const $CF_EFFECTS = 256
Global Const $CF_PRINTERFONTS = 2
Global Const $CF_SCREENFONTS = 1
Global Const $CF_NOSCRIPTSEL = 8388608
Global Const $CF_INITTOLOGFONTSTRUCT = 64
Global Const $LOGPIXELSX = 88
Global Const $LOGPIXELSY = 90
Global Const $ANSI_CHARSET = 0
Global Const $BALTIC_CHARSET = 186
Global Const $CHINESEBIG5_CHARSET = 136
Global Const $DEFAULT_CHARSET = 1
Global Const $EASTEUROPE_CHARSET = 238
Global Const $GB2312_CHARSET = 134
Global Const $GREEK_CHARSET = 161
Global Const $HANGEUL_CHARSET = 129
Global Const $MAC_CHARSET = 77
Global Const $OEM_CHARSET = 255
Global Const $RUSSIAN_CHARSET = 204
Global Const $SHIFTJIS_CHARSET = 128
Global Const $SYMBOL_CHARSET = 2
Global Const $TURKISH_CHARSET = 162
Global Const $VIETNAMESE_CHARSET = 163
Global Const $OUT_CHARACTER_PRECIS = 2
Global Const $OUT_DEFAULT_PRECIS = 0
Global Const $OUT_DEVICE_PRECIS = 5
Global Const $OUT_OUTLINE_PRECIS = 8
Global Const $OUT_PS_ONLY_PRECIS = 10
Global Const $OUT_RASTER_PRECIS = 6
Global Const $OUT_STRING_PRECIS = 1
Global Const $OUT_STROKE_PRECIS = 3
Global Const $OUT_TT_ONLY_PRECIS = 7
Global Const $OUT_TT_PRECIS = 4
Global Const $CLIP_CHARACTER_PRECIS = 1
Global Const $CLIP_DEFAULT_PRECIS = 0
Global Const $CLIP_EMBEDDED = 128
Global Const $CLIP_LH_ANGLES = 16
Global Const $CLIP_MASK = 15
Global Const $CLIP_STROKE_PRECIS = 2
Global Const $CLIP_TT_ALWAYS = 32
Global Const $ANTIALIASED_QUALITY = 4
Global Const $DEFAULT_QUALITY = 0
Global Const $DRAFT_QUALITY = 1
Global Const $NONANTIALIASED_QUALITY = 3
Global Const $PROOF_QUALITY = 2
Global Const $DEFAULT_PITCH = 0
Global Const $FIXED_PITCH = 1
Global Const $VARIABLE_PITCH = 2
Global Const $FF_DECORATIVE = 80
Global Const $FF_DONTCARE = 0
Global Const $FF_MODERN = 48
Global Const $FF_ROMAN = 16
Global Const $FF_SCRIPT = 64
Global Const $FF_SWISS = 32
Global Const $__MISCCONSTANT_CC_ANYCOLOR = 256
Global Const $__MISCCONSTANT_CC_FULLOPEN = 2
Global Const $__MISCCONSTANT_CC_RGBINIT = 1
Global Const $TAGCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName"
Global Const $TAGCHOOSEFONT = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" & "ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"
Func _ChooseColor($IRETURNTYPE = 0, $ICOLORREF = 0, $IREFTYPE = 0, $HWNDOWNDER = 0)
	Local $CUSTCOLORS = "dword[16]"
	Local $TCHOOSE = DllStructCreate($TAGCHOOSECOLOR)
	Local $TCC = DllStructCreate($CUSTCOLORS)
	If $IREFTYPE = 1 Then
		$ICOLORREF = Int($ICOLORREF)
	ElseIf $IREFTYPE = 2 Then
		$ICOLORREF = Hex(String($ICOLORREF), 6)
		$ICOLORREF = "0x" & StringMid($ICOLORREF, 5, 2) & StringMid($ICOLORREF, 3, 2) & StringMid($ICOLORREF, 1, 2)
	EndIf
	DllStructSetData($TCHOOSE, "Size", DllStructGetSize($TCHOOSE))
	DllStructSetData($TCHOOSE, "hWndOwnder", $HWNDOWNDER)
	DllStructSetData($TCHOOSE, "rgbResult", $ICOLORREF)
	DllStructSetData($TCHOOSE, "CustColors", DllStructGetPtr($TCC))
	DllStructSetData($TCHOOSE, "Flags", BitOR($__MISCCONSTANT_CC_ANYCOLOR, $__MISCCONSTANT_CC_FULLOPEN, $__MISCCONSTANT_CC_RGBINIT))
	Local $ARESULT = DllCall("comdlg32.dll", "bool", "ChooseColor", "ptr", DllStructGetPtr($TCHOOSE))
	If @error Then Return SetError(@error, @extended, -1)
	If $ARESULT[0] = 0 Then Return SetError(-3, -3, -1)
	Local $COLOR_PICKED = DllStructGetData($TCHOOSE, "rgbResult")
	If $IRETURNTYPE = 1 Then
		Return "0x" & Hex(String($COLOR_PICKED), 6)
	ElseIf $IRETURNTYPE = 2 Then
		$COLOR_PICKED = Hex(String($COLOR_PICKED), 6)
		Return "0x" & StringMid($COLOR_PICKED, 5, 2) & StringMid($COLOR_PICKED, 3, 2) & StringMid($COLOR_PICKED, 1, 2)
	ElseIf $IRETURNTYPE = 0 Then
		Return $COLOR_PICKED
	Else
		Return SetError(-4, -4, -1)
	EndIf
EndFunc   ;==>_ChooseColor
Func _ChooseFont($SFONTNAME = "Courier New", $IPOINTSIZE = 10, $ICOLORREF = 0, $IFONTWEIGHT = 0, $IITALIC = False, $IUNDERLINE = False, $ISTRIKETHRU = False, $HWNDOWNER = 0)
	Local $ITALIC = 0, $UNDERLINE = 0, $STRIKEOUT = 0
	Local $LNGDC = __MISC_GETDC(0)
	Local $LFHEIGHT = Round(($IPOINTSIZE * __MISC_GETDEVICECAPS($LNGDC, $LOGPIXELSX)) / 72, 0)
	__MISC_RELEASEDC(0, $LNGDC)
	Local $TCHOOSEFONT = DllStructCreate($TAGCHOOSEFONT)
	Local $TLOGFONT = DllStructCreate($TAGLOGFONT)
	DllStructSetData($TCHOOSEFONT, "Size", DllStructGetSize($TCHOOSEFONT))
	DllStructSetData($TCHOOSEFONT, "hWndOwner", $HWNDOWNER)
	DllStructSetData($TCHOOSEFONT, "LogFont", DllStructGetPtr($TLOGFONT))
	DllStructSetData($TCHOOSEFONT, "PointSize", $IPOINTSIZE)
	DllStructSetData($TCHOOSEFONT, "Flags", BitOR($CF_SCREENFONTS, $CF_PRINTERFONTS, $CF_EFFECTS, $CF_INITTOLOGFONTSTRUCT, $CF_NOSCRIPTSEL))
	DllStructSetData($TCHOOSEFONT, "rgbColors", $ICOLORREF)
	DllStructSetData($TCHOOSEFONT, "FontType", 0)
	DllStructSetData($TLOGFONT, "Height", $LFHEIGHT)
	DllStructSetData($TLOGFONT, "Weight", $IFONTWEIGHT)
	DllStructSetData($TLOGFONT, "Italic", $IITALIC)
	DllStructSetData($TLOGFONT, "Underline", $IUNDERLINE)
	DllStructSetData($TLOGFONT, "Strikeout", $ISTRIKETHRU)
	DllStructSetData($TLOGFONT, "FaceName", $SFONTNAME)
	Local $ARESULT = DllCall("comdlg32.dll", "bool", "ChooseFontW", "ptr", DllStructGetPtr($TCHOOSEFONT))
	If @error Then Return SetError(@error, @extended, -1)
	If $ARESULT[0] = 0 Then Return SetError(-3, -3, -1)
	Local $FONTNAME = DllStructGetData($TLOGFONT, "FaceName")
	If StringLen($FONTNAME) = 0 And StringLen($SFONTNAME) > 0 Then $FONTNAME = $SFONTNAME
	If DllStructGetData($TLOGFONT, "Italic") Then $ITALIC = 2
	If DllStructGetData($TLOGFONT, "Underline") Then $UNDERLINE = 4
	If DllStructGetData($TLOGFONT, "Strikeout") Then $STRIKEOUT = 8
	Local $ATTRIBUTES = BitOR($ITALIC, $UNDERLINE, $STRIKEOUT)
	Local $SIZE = DllStructGetData($TCHOOSEFONT, "PointSize") / 10
	Local $COLORREF = DllStructGetData($TCHOOSEFONT, "rgbColors")
	Local $WEIGHT = DllStructGetData($TLOGFONT, "Weight")
	Local $COLOR_PICKED = Hex(String($COLORREF), 6)
	Return StringSplit($ATTRIBUTES & "," & $FONTNAME & "," & $SIZE & "," & $WEIGHT & "," & $COLORREF & "," & "0x" & $COLOR_PICKED & "," & "0x" & StringMid($COLOR_PICKED, 5, 2) & StringMid($COLOR_PICKED, 3, 2) & StringMid($COLOR_PICKED, 1, 2), ",")
EndFunc   ;==>_ChooseFont
Func _ClipPutFile($SFILE, $SSEPARATOR = "|")
	Local Const $GMEM_MOVEABLE = 2, $CF_HDROP = 15
	$SFILE &= $SSEPARATOR & $SSEPARATOR
	Local $NGLOBMEMSIZE = (StringLen($SFILE) + 20)
	Local $ARESULT = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
	If @error Or $ARESULT[0] = 0 Then Return SetError(1, _WinAPI_GetLastError(), False)
	Local $IERROR = 0, $ILASTERROR = 0
	$ARESULT = DllCall("user32.dll", "bool", "EmptyClipboard")
	If @error Or Not $ARESULT[0] Then
		$IERROR = 2
		$ILASTERROR = _WinAPI_GetLastError()
	Else
		$ARESULT = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $GMEM_MOVEABLE, "ulong_ptr", $NGLOBMEMSIZE)
		If @error Or Not $ARESULT[0] Then
			$IERROR = 3
			$ILASTERROR = _WinAPI_GetLastError()
		Else
			Local $HGLOBAL = $ARESULT[0]
			$ARESULT = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $HGLOBAL)
			If @error Or Not $ARESULT[0] Then
				$IERROR = 4
				$ILASTERROR = _WinAPI_GetLastError()
			Else
				Local $HLOCK = $ARESULT[0]
				Local $DROPFILES = DllStructCreate("dword;ptr;int;int;int;char[" & StringLen($SFILE) + 1 & "]", $HLOCK)
				If @error Then Return SetError(5, 6, False)
				Local $TEMPSTRUCT = DllStructCreate("dword;ptr;int;int;int")
				DllStructSetData($DROPFILES, 1, DllStructGetSize($TEMPSTRUCT))
				DllStructSetData($DROPFILES, 2, 0)
				DllStructSetData($DROPFILES, 3, 0)
				DllStructSetData($DROPFILES, 4, 0)
				DllStructSetData($DROPFILES, 5, 0)
				DllStructSetData($DROPFILES, 6, $SFILE)
				For $I = 1 To StringLen($SFILE)
					If DllStructGetData($DROPFILES, 6, $I) = $SSEPARATOR Then DllStructSetData($DROPFILES, 6, Chr(0), $I)
				Next
				$ARESULT = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $CF_HDROP, "handle", $HGLOBAL)
				If @error Or Not $ARESULT[0] Then
					$IERROR = 6
					$ILASTERROR = _WinAPI_GetLastError()
				EndIf
				$ARESULT = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $HGLOBAL)
				If (@error Or Not $ARESULT[0]) And Not $IERROR And _WinAPI_GetLastError() Then
					$IERROR = 8
					$ILASTERROR = _WinAPI_GetLastError()
				EndIf
			EndIf
			$ARESULT = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $HGLOBAL)
			If (@error Or Not $ARESULT[0]) And Not $IERROR Then
				$IERROR = 9
				$ILASTERROR = _WinAPI_GetLastError()
			EndIf
		EndIf
	EndIf
	$ARESULT = DllCall("user32.dll", "bool", "CloseClipboard")
	If (@error Or Not $ARESULT[0]) And Not $IERROR Then Return SetError(7, _WinAPI_GetLastError(), False)
	If $IERROR Then Return SetError($IERROR, $ILASTERROR, False)
	Return True
EndFunc   ;==>_ClipPutFile
Func _IIF($FTEST, $VTRUEVAL, $VFALSEVAL)
	If $FTEST Then
		Return $VTRUEVAL
	Else
		Return $VFALSEVAL
	EndIf
EndFunc   ;==>_IIF
Func _MouseTrap($ILEFT = 0, $ITOP = 0, $IRIGHT = 0, $IBOTTOM = 0)
	Local $ARESULT
	If @NumParams == 0 Then
		$ARESULT = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
		If @error Or Not $ARESULT[0] Then Return SetError(1, _WinAPI_GetLastError(), False)
	Else
		If @NumParams == 2 Then
			$IRIGHT = $ILEFT + 1
			$IBOTTOM = $ITOP + 1
		EndIf
		Local $TRECT = DllStructCreate($TAGRECT)
		DllStructSetData($TRECT, "Left", $ILEFT)
		DllStructSetData($TRECT, "Top", $ITOP)
		DllStructSetData($TRECT, "Right", $IRIGHT)
		DllStructSetData($TRECT, "Bottom", $IBOTTOM)
		$ARESULT = DllCall("user32.dll", "bool", "ClipCursor", "ptr", DllStructGetPtr($TRECT))
		If @error Or Not $ARESULT[0] Then Return SetError(2, _WinAPI_GetLastError(), False)
	EndIf
	Return True
EndFunc   ;==>_MouseTrap
Func _Singleton($SOCCURENCENAME, $IFLAG = 0)
	Local Const $ERROR_ALREADY_EXISTS = 183
	Local Const $SECURITY_DESCRIPTOR_REVISION = 1
	Local $PSECURITYATTRIBUTES = 0
	If BitAND($IFLAG, 2) Then
		Local $TSECURITYDESCRIPTOR = DllStructCreate("dword[5]")
		Local $PSECURITYDESCRIPTOR = DllStructGetPtr($TSECURITYDESCRIPTOR)
		Local $ARET = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", "ptr", $PSECURITYDESCRIPTOR, "dword", $SECURITY_DESCRIPTOR_REVISION)
		If @error Then Return SetError(@error, @extended, 0)
		If $ARET[0] Then
			$ARET = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", "ptr", $PSECURITYDESCRIPTOR, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $ARET[0] Then
				Local $STRUCTSECURITYATTRIBUTES = DllStructCreate($TAGSECURITY_ATTRIBUTES)
				DllStructSetData($STRUCTSECURITYATTRIBUTES, 1, DllStructGetSize($STRUCTSECURITYATTRIBUTES))
				DllStructSetData($STRUCTSECURITYATTRIBUTES, 2, $PSECURITYDESCRIPTOR)
				DllStructSetData($STRUCTSECURITYATTRIBUTES, 3, 0)
				$PSECURITYATTRIBUTES = DllStructGetPtr($STRUCTSECURITYATTRIBUTES)
			EndIf
		EndIf
	EndIf
	Local $HANDLE = DllCall("kernel32.dll", "handle", "CreateMutexW", "ptr", $PSECURITYATTRIBUTES, "bool", 1, "wstr", $SOCCURENCENAME)
	If @error Then Return SetError(@error, @extended, 0)
	Local $LASTERROR = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $LASTERROR[0] = $ERROR_ALREADY_EXISTS Then
		If BitAND($IFLAG, 1) Then
			Return SetError($LASTERROR[0], $LASTERROR[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $HANDLE[0]
EndFunc   ;==>_Singleton
Func _IsPressed($SHEXKEY, $VDLL = "user32.dll")
	Local $A_R = DllCall($VDLL, "short", "GetAsyncKeyState", "int", "0x" & $SHEXKEY)
	If @error Then Return SetError(@error, @extended, False)
	Return BitAND($A_R[0], 32768) <> 0
EndFunc   ;==>_IsPressed
Func _VersionCompare($SVERSION1, $SVERSION2)
	If $SVERSION1 = $SVERSION2 Then Return 0
	Local $SEP = "."
	If StringInStr($SVERSION1, $SEP) = 0 Then $SEP = ","
	Local $AVERSION1 = StringSplit($SVERSION1, $SEP)
	Local $AVERSION2 = StringSplit($SVERSION2, $SEP)
	If UBound($AVERSION1) <> UBound($AVERSION2) Or UBound($AVERSION1) = 0 Then
		SetExtended(1)
		If $SVERSION1 > $SVERSION2 Then
			Return 1
		ElseIf $SVERSION1 < $SVERSION2 Then
			Return -1
		EndIf
	Else
		For $I = 1 To UBound($AVERSION1) - 1
			If StringIsDigit($AVERSION1[$I]) And StringIsDigit($AVERSION2[$I]) Then
				If Number($AVERSION1[$I]) > Number($AVERSION2[$I]) Then
					Return 1
				ElseIf Number($AVERSION1[$I]) < Number($AVERSION2[$I]) Then
					Return -1
				EndIf
			Else
				SetExtended(1)
				If $AVERSION1[$I] > $AVERSION2[$I] Then
					Return 1
				ElseIf $AVERSION1[$I] < $AVERSION2[$I] Then
					Return -1
				EndIf
			EndIf
		Next
	EndIf
	Return SetError(2, 0, 0)
EndFunc   ;==>_VersionCompare
Func __MISC_GETDC($HWND)
	Local $ARESULT = DllCall("User32.dll", "handle", "GetDC", "hwnd", $HWND)
	If @error Or Not $ARESULT[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
	Return $ARESULT[0]
EndFunc   ;==>__MISC_GETDC
Func __MISC_GETDEVICECAPS($HDC, $IINDEX)
	Local $ARESULT = DllCall("GDI32.dll", "int", "GetDeviceCaps", "handle", $HDC, "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0)
	Return $ARESULT[0]
EndFunc   ;==>__MISC_GETDEVICECAPS
Func __MISC_RELEASEDC($HWND, $HDC)
	Local $ARESULT = DllCall("User32.dll", "int", "ReleaseDC", "hwnd", $HWND, "handle", $HDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0] <> 0
EndFunc   ;==>__MISC_RELEASEDC
Global Const $WS_TILED = 0
Global Const $WS_OVERLAPPED = 0
Global Const $WS_MAXIMIZEBOX = 65536
Global Const $WS_MINIMIZEBOX = 131072
Global Const $WS_TABSTOP = 65536
Global Const $WS_GROUP = 131072
Global Const $WS_SIZEBOX = 262144
Global Const $WS_THICKFRAME = 262144
Global Const $WS_SYSMENU = 524288
Global Const $WS_HSCROLL = 1048576
Global Const $WS_VSCROLL = 2097152
Global Const $WS_DLGFRAME = 4194304
Global Const $WS_BORDER = 8388608
Global Const $WS_CAPTION = 12582912
Global Const $WS_OVERLAPPEDWINDOW = 13565952
Global Const $WS_TILEDWINDOW = 13565952
Global Const $WS_MAXIMIZE = 16777216
Global Const $WS_CLIPCHILDREN = 33554432
Global Const $WS_CLIPSIBLINGS = 67108864
Global Const $WS_DISABLED = 134217728
Global Const $WS_VISIBLE = 268435456
Global Const $WS_MINIMIZE = 536870912
Global Const $WS_CHILD = 1073741824
Global Const $WS_POPUP = -2147483648
Global Const $WS_POPUPWINDOW = -2138570752
Global Const $DS_MODALFRAME = 128
Global Const $DS_SETFOREGROUND = 512
Global Const $DS_CONTEXTHELP = 8192
Global Const $WS_EX_ACCEPTFILES = 16
Global Const $WS_EX_MDICHILD = 64
Global Const $WS_EX_APPWINDOW = 262144
Global Const $WS_EX_COMPOSITED = 33554432
Global Const $WS_EX_CLIENTEDGE = 512
Global Const $WS_EX_CONTEXTHELP = 1024
Global Const $WS_EX_DLGMODALFRAME = 1
Global Const $WS_EX_LEFTSCROLLBAR = 16384
Global Const $WS_EX_OVERLAPPEDWINDOW = 768
Global Const $WS_EX_RIGHT = 4096
Global Const $WS_EX_STATICEDGE = 131072
Global Const $WS_EX_TOOLWINDOW = 128
Global Const $WS_EX_TOPMOST = 8
Global Const $WS_EX_TRANSPARENT = 32
Global Const $WS_EX_WINDOWEDGE = 256
Global Const $WS_EX_LAYERED = 524288
Global Const $WS_EX_CONTROLPARENT = 65536
Global Const $WS_EX_LAYOUTRTL = 4194304
Global Const $WS_EX_RTLREADING = 8192
Global Const $WM_GETTEXTLENGTH = 14
Global Const $WM_GETTEXT = 13
Global Const $WM_SIZE = 5
Global Const $WM_SIZING = 532
Global Const $WM_USER = 1024
Global Const $WM_CREATE = 1
Global Const $WM_DESTROY = 2
Global Const $WM_MOVE = 3
Global Const $WM_ACTIVATE = 6
Global Const $WM_SETFOCUS = 7
Global Const $WM_KILLFOCUS = 8
Global Const $WM_ENABLE = 10
Global Const $WM_SETREDRAW = 11
Global Const $WM_SETTEXT = 12
Global Const $WM_PAINT = 15
Global Const $WM_CLOSE = 16
Global Const $WM_QUIT = 18
Global Const $WM_ERASEBKGND = 20
Global Const $WM_SYSCOLORCHANGE = 21
Global Const $WM_SHOWWINDOW = 24
Global Const $WM_WININICHANGE = 26
Global Const $WM_DEVMODECHANGE = 27
Global Const $WM_ACTIVATEAPP = 28
Global Const $WM_FONTCHANGE = 29
Global Const $WM_TIMECHANGE = 30
Global Const $WM_CANCELMODE = 31
Global Const $WM_SETCURSOR = 32
Global Const $WM_MOUSEACTIVATE = 33
Global Const $WM_CHILDACTIVATE = 34
Global Const $WM_QUEUESYNC = 35
Global Const $WM_GETMINMAXINFO = 36
Global Const $WM_PAINTICON = 38
Global Const $WM_ICONERASEBKGND = 39
Global Const $WM_NEXTDLGCTL = 40
Global Const $WM_SPOOLERSTATUS = 42
Global Const $WM_DRAWITEM = 43
Global Const $WM_MEASUREITEM = 44
Global Const $WM_DELETEITEM = 45
Global Const $WM_VKEYTOITEM = 46
Global Const $WM_CHARTOITEM = 47
Global Const $WM_SETFONT = 48
Global Const $WM_GETFONT = 49
Global Const $WM_SETHOTKEY = 50
Global Const $WM_GETHOTKEY = 51
Global Const $WM_QUERYDRAGICON = 55
Global Const $WM_COMPAREITEM = 57
Global Const $WM_GETOBJECT = 61
Global Const $WM_COMPACTING = 65
Global Const $WM_COMMNOTIFY = 68
Global Const $WM_WINDOWPOSCHANGING = 70
Global Const $WM_WINDOWPOSCHANGED = 71
Global Const $WM_POWER = 72
Global Const $WM_NOTIFY = 78
Global Const $WM_COPYDATA = 74
Global Const $WM_CANCELJOURNAL = 75
Global Const $WM_INPUTLANGCHANGEREQUEST = 80
Global Const $WM_INPUTLANGCHANGE = 81
Global Const $WM_TCARD = 82
Global Const $WM_HELP = 83
Global Const $WM_USERCHANGED = 84
Global Const $WM_NOTIFYFORMAT = 85
Global Const $WM_CUT = 768
Global Const $WM_COPY = 769
Global Const $WM_PASTE = 770
Global Const $WM_CLEAR = 771
Global Const $WM_UNDO = 772
Global Const $WM_CONTEXTMENU = 123
Global Const $WM_STYLECHANGING = 124
Global Const $WM_STYLECHANGED = 125
Global Const $WM_DISPLAYCHANGE = 126
Global Const $WM_GETICON = 127
Global Const $WM_SETICON = 128
Global Const $WM_NCCREATE = 129
Global Const $WM_NCDESTROY = 130
Global Const $WM_NCCALCSIZE = 131
Global Const $WM_NCHITTEST = 132
Global Const $WM_NCPAINT = 133
Global Const $WM_NCACTIVATE = 134
Global Const $WM_GETDLGCODE = 135
Global Const $WM_SYNCPAINT = 136
Global Const $WM_NCMOUSEMOVE = 160
Global Const $WM_NCLBUTTONDOWN = 161
Global Const $WM_NCLBUTTONUP = 162
Global Const $WM_NCLBUTTONDBLCLK = 163
Global Const $WM_NCRBUTTONDOWN = 164
Global Const $WM_NCRBUTTONUP = 165
Global Const $WM_NCRBUTTONDBLCLK = 166
Global Const $WM_NCMBUTTONDOWN = 167
Global Const $WM_NCMBUTTONUP = 168
Global Const $WM_NCMBUTTONDBLCLK = 169
Global Const $WM_KEYDOWN = 256
Global Const $WM_KEYUP = 257
Global Const $WM_CHAR = 258
Global Const $WM_DEADCHAR = 259
Global Const $WM_SYSKEYDOWN = 260
Global Const $WM_SYSKEYUP = 261
Global Const $WM_SYSCHAR = 262
Global Const $WM_SYSDEADCHAR = 263
Global Const $WM_INITDIALOG = 272
Global Const $WM_COMMAND = 273
Global Const $WM_SYSCOMMAND = 274
Global Const $WM_TIMER = 275
Global Const $WM_HSCROLL = 276
Global Const $WM_VSCROLL = 277
Global Const $WM_INITMENU = 278
Global Const $WM_INITMENUPOPUP = 279
Global Const $WM_MENUSELECT = 287
Global Const $WM_MENUCHAR = 288
Global Const $WM_ENTERIDLE = 289
Global Const $WM_MENURBUTTONUP = 290
Global Const $WM_MENUDRAG = 291
Global Const $WM_MENUGETOBJECT = 292
Global Const $WM_UNINITMENUPOPUP = 293
Global Const $WM_MENUCOMMAND = 294
Global Const $WM_CHANGEUISTATE = 295
Global Const $WM_UPDATEUISTATE = 296
Global Const $WM_QUERYUISTATE = 297
Global Const $WM_CTLCOLORMSGBOX = 306
Global Const $WM_CTLCOLOREDIT = 307
Global Const $WM_CTLCOLORLISTBOX = 308
Global Const $WM_CTLCOLORBTN = 309
Global Const $WM_CTLCOLORDLG = 310
Global Const $WM_CTLCOLORSCROLLBAR = 311
Global Const $WM_CTLCOLORSTATIC = 312
Global Const $WM_CTLCOLOR = 25
Global Const $MN_GETHMENU = 481
Global Const $NM_FIRST = 0
Global Const $NM_OUTOFMEMORY = $NM_FIRST - 1
Global Const $NM_CLICK = $NM_FIRST - 2
Global Const $NM_DBLCLK = $NM_FIRST - 3
Global Const $NM_RETURN = $NM_FIRST - 4
Global Const $NM_RCLICK = $NM_FIRST - 5
Global Const $NM_RDBLCLK = $NM_FIRST - 6
Global Const $NM_SETFOCUS = $NM_FIRST - 7
Global Const $NM_KILLFOCUS = $NM_FIRST - 8
Global Const $NM_CUSTOMDRAW = $NM_FIRST - 12
Global Const $NM_HOVER = $NM_FIRST - 13
Global Const $NM_NCHITTEST = $NM_FIRST - 14
Global Const $NM_KEYDOWN = $NM_FIRST - 15
Global Const $NM_RELEASEDCAPTURE = $NM_FIRST - 16
Global Const $NM_SETCURSOR = $NM_FIRST - 17
Global Const $NM_CHAR = $NM_FIRST - 18
Global Const $NM_TOOLTIPSCREATED = $NM_FIRST - 19
Global Const $NM_LDOWN = $NM_FIRST - 20
Global Const $NM_RDOWN = $NM_FIRST - 21
Global Const $NM_THEMECHANGED = $NM_FIRST - 22
Global Const $WM_MOUSEMOVE = 512
Global Const $WM_LBUTTONDOWN = 513
Global Const $WM_LBUTTONUP = 514
Global Const $WM_LBUTTONDBLCLK = 515
Global Const $WM_RBUTTONDOWN = 516
Global Const $WM_RBUTTONUP = 517
Global Const $WM_RBUTTONDBLCK = 518
Global Const $WM_MBUTTONDOWN = 519
Global Const $WM_MBUTTONUP = 520
Global Const $WM_MBUTTONDBLCK = 521
Global Const $WM_MOUSEWHEEL = 522
Global Const $WM_XBUTTONDOWN = 523
Global Const $WM_XBUTTONUP = 524
Global Const $WM_XBUTTONDBLCLK = 525
Global Const $WM_MOUSEHWHEEL = 526
Global Const $PS_SOLID = 0
Global Const $PS_DASH = 1
Global Const $PS_DOT = 2
Global Const $PS_DASHDOT = 3
Global Const $PS_DASHDOTDOT = 4
Global Const $PS_NULL = 5
Global Const $PS_INSIDEFRAME = 6
Global Const $LWA_ALPHA = 2
Global Const $LWA_COLORKEY = 1
Global Const $RGN_AND = 1
Global Const $RGN_OR = 2
Global Const $RGN_XOR = 3
Global Const $RGN_DIFF = 4
Global Const $RGN_COPY = 5
Global Const $ERRORREGION = 0
Global Const $NULLREGION = 1
Global Const $SIMPLEREGION = 2
Global Const $COMPLEXREGION = 3
Global Const $TRANSPARENT = 1
Global Const $OPAQUE = 2
Global Const $CCM_FIRST = 8192
Global Const $CCM_GETUNICODEFORMAT = ($CCM_FIRST + 6)
Global Const $CCM_SETUNICODEFORMAT = ($CCM_FIRST + 5)
Global Const $CCM_SETBKCOLOR = $CCM_FIRST + 1
Global Const $CCM_SETCOLORSCHEME = $CCM_FIRST + 2
Global Const $CCM_GETCOLORSCHEME = $CCM_FIRST + 3
Global Const $CCM_GETDROPTARGET = $CCM_FIRST + 4
Global Const $CCM_SETWINDOWTHEME = $CCM_FIRST + 11
Global Const $GA_PARENT = 1
Global Const $GA_ROOT = 2
Global Const $GA_ROOTOWNER = 3
Global Const $SM_CXSCREEN = 0
Global Const $SM_CYSCREEN = 1
Global Const $SM_CXVSCROLL = 2
Global Const $SM_CYHSCROLL = 3
Global Const $SM_CYCAPTION = 4
Global Const $SM_CXBORDER = 5
Global Const $SM_CYBORDER = 6
Global Const $SM_CXDLGFRAME = 7
Global Const $SM_CYDLGFRAME = 8
Global Const $SM_CYVTHUMB = 9
Global Const $SM_CXHTHUMB = 10
Global Const $SM_CXICON = 11
Global Const $SM_CYICON = 12
Global Const $SM_CXCURSOR = 13
Global Const $SM_CYCURSOR = 14
Global Const $SM_CYMENU = 15
Global Const $SM_CXFULLSCREEN = 16
Global Const $SM_CYFULLSCREEN = 17
Global Const $SM_CYKANJIWINDOW = 18
Global Const $SM_MOUSEPRESENT = 19
Global Const $SM_CYVSCROLL = 20
Global Const $SM_CXHSCROLL = 21
Global Const $SM_DEBUG = 22
Global Const $SM_SWAPBUTTON = 23
Global Const $SM_RESERVED1 = 24
Global Const $SM_RESERVED2 = 25
Global Const $SM_RESERVED3 = 26
Global Const $SM_RESERVED4 = 27
Global Const $SM_CXMIN = 28
Global Const $SM_CYMIN = 29
Global Const $SM_CXSIZE = 30
Global Const $SM_CYSIZE = 31
Global Const $SM_CXFRAME = 32
Global Const $SM_CYFRAME = 33
Global Const $SM_CXMINTRACK = 34
Global Const $SM_CYMINTRACK = 35
Global Const $SM_CXDOUBLECLK = 36
Global Const $SM_CYDOUBLECLK = 37
Global Const $SM_CXICONSPACING = 38
Global Const $SM_CYICONSPACING = 39
Global Const $SM_MENUDROPALIGNMENT = 40
Global Const $SM_PENWINDOWS = 41
Global Const $SM_DBCSENABLED = 42
Global Const $SM_CMOUSEBUTTONS = 43
Global Const $SM_SECURE = 44
Global Const $SM_CXEDGE = 45
Global Const $SM_CYEDGE = 46
Global Const $SM_CXMINSPACING = 47
Global Const $SM_CYMINSPACING = 48
Global Const $SM_CXSMICON = 49
Global Const $SM_CYSMICON = 50
Global Const $SM_CYSMCAPTION = 51
Global Const $SM_CXSMSIZE = 52
Global Const $SM_CYSMSIZE = 53
Global Const $SM_CXMENUSIZE = 54
Global Const $SM_CYMENUSIZE = 55
Global Const $SM_ARRANGE = 56
Global Const $SM_CXMINIMIZED = 57
Global Const $SM_CYMINIMIZED = 58
Global Const $SM_CXMAXTRACK = 59
Global Const $SM_CYMAXTRACK = 60
Global Const $SM_CXMAXIMIZED = 61
Global Const $SM_CYMAXIMIZED = 62
Global Const $SM_NETWORK = 63
Global Const $SM_CLEANBOOT = 67
Global Const $SM_CXDRAG = 68
Global Const $SM_CYDRAG = 69
Global Const $SM_SHOWSOUNDS = 70
Global Const $SM_CXMENUCHECK = 71
Global Const $SM_CYMENUCHECK = 72
Global Const $SM_SLOWMACHINE = 73
Global Const $SM_MIDEASTENABLED = 74
Global Const $SM_MOUSEWHEELPRESENT = 75
Global Const $SM_XVIRTUALSCREEN = 76
Global Const $SM_YVIRTUALSCREEN = 77
Global Const $SM_CXVIRTUALSCREEN = 78
Global Const $SM_CYVIRTUALSCREEN = 79
Global Const $SM_CMONITORS = 80
Global Const $SM_SAMEDISPLAYFORMAT = 81
Global Const $SM_IMMENABLED = 82
Global Const $SM_CXFOCUSBORDER = 83
Global Const $SM_CYFOCUSBORDER = 84
Global Const $SM_TABLETPC = 86
Global Const $SM_MEDIACENTER = 87
Global Const $SM_STARTER = 88
Global Const $SM_SERVERR2 = 89
Global Const $SM_CMETRICS = 90
Global Const $SM_REMOTESESSION = 4096
Global Const $SM_SHUTTINGDOWN = 8192
Global Const $SM_REMOTECONTROL = 8193
Global Const $SM_CARETBLINKINGENABLED = 8194
Global Const $BLACKNESS = 66
Global Const $CAPTUREBLT = 1073741824
Global Const $DSTINVERT = 5570569
Global Const $MERGECOPY = 12583114
Global Const $MERGEPAINT = 12255782
Global Const $NOMIRRORBITMAP = -2147483648
Global Const $NOTSRCCOPY = 3342344
Global Const $NOTSRCERASE = 1114278
Global Const $PATCOPY = 15728673
Global Const $PATINVERT = 5898313
Global Const $PATPAINT = 16452105
Global Const $SRCAND = 8913094
Global Const $SRCCOPY = 13369376
Global Const $SRCERASE = 4457256
Global Const $SRCINVERT = 6684742
Global Const $SRCPAINT = 15597702
Global Const $WHITENESS = 16711778
Global Const $DT_BOTTOM = 8
Global Const $DT_CALCRECT = 1024
Global Const $DT_CENTER = 1
Global Const $DT_EDITCONTROL = 8192
Global Const $DT_END_ELLIPSIS = 32768
Global Const $DT_EXPANDTABS = 64
Global Const $DT_EXTERNALLEADING = 512
Global Const $DT_HIDEPREFIX = 1048576
Global Const $DT_INTERNAL = 4096
Global Const $DT_LEFT = 0
Global Const $DT_MODIFYSTRING = 65536
Global Const $DT_NOCLIP = 256
Global Const $DT_NOFULLWIDTHCHARBREAK = 524288
Global Const $DT_NOPREFIX = 2048
Global Const $DT_PATH_ELLIPSIS = 16384
Global Const $DT_PREFIXONLY = 2097152
Global Const $DT_RIGHT = 2
Global Const $DT_RTLREADING = 131072
Global Const $DT_SINGLELINE = 32
Global Const $DT_TABSTOP = 128
Global Const $DT_TOP = 0
Global Const $DT_VCENTER = 4
Global Const $DT_WORDBREAK = 16
Global Const $DT_WORD_ELLIPSIS = 262144
Global Const $RDW_ERASE = 4
Global Const $RDW_FRAME = 1024
Global Const $RDW_INTERNALPAINT = 2
Global Const $RDW_INVALIDATE = 1
Global Const $RDW_NOERASE = 32
Global Const $RDW_NOFRAME = 2048
Global Const $RDW_NOINTERNALPAINT = 16
Global Const $RDW_VALIDATE = 8
Global Const $RDW_ERASENOW = 512
Global Const $RDW_UPDATENOW = 256
Global Const $RDW_ALLCHILDREN = 128
Global Const $RDW_NOCHILDREN = 64
Global Const $WM_RENDERFORMAT = 773
Global Const $WM_RENDERALLFORMATS = 774
Global Const $WM_DESTROYCLIPBOARD = 775
Global Const $WM_DRAWCLIPBOARD = 776
Global Const $WM_PAINTCLIPBOARD = 777
Global Const $WM_VSCROLLCLIPBOARD = 778
Global Const $WM_SIZECLIPBOARD = 779
Global Const $WM_ASKCBFORMATNAME = 780
Global Const $WM_CHANGECBCHAIN = 781
Global Const $WM_HSCROLLCLIPBOARD = 782
Global Const $HTERROR = -2
Global Const $HTTRANSPARENT = -1
Global Const $HTNOWHERE = 0
Global Const $HTCLIENT = 1
Global Const $HTCAPTION = 2
Global Const $HTSYSMENU = 3
Global Const $HTGROWBOX = 4
Global Const $HTSIZE = $HTGROWBOX
Global Const $HTMENU = 5
Global Const $HTHSCROLL = 6
Global Const $HTVSCROLL = 7
Global Const $HTMINBUTTON = 8
Global Const $HTMAXBUTTON = 9
Global Const $HTLEFT = 10
Global Const $HTRIGHT = 11
Global Const $HTTOP = 12
Global Const $HTTOPLEFT = 13
Global Const $HTTOPRIGHT = 14
Global Const $HTBOTTOM = 15
Global Const $HTBOTTOMLEFT = 16
Global Const $HTBOTTOMRIGHT = 17
Global Const $HTBORDER = 18
Global Const $HTREDUCE = $HTMINBUTTON
Global Const $HTZOOM = $HTMAXBUTTON
Global Const $HTSIZEFIRST = $HTLEFT
Global Const $HTSIZELAST = $HTBOTTOMRIGHT
Global Const $HTOBJECT = 19
Global Const $HTCLOSE = 20
Global Const $HTHELP = 21
Global Const $COLOR_SCROLLBAR = 0
Global Const $COLOR_BACKGROUND = 1
Global Const $COLOR_ACTIVECAPTION = 2
Global Const $COLOR_INACTIVECAPTION = 3
Global Const $COLOR_MENU = 4
Global Const $COLOR_WINDOW = 5
Global Const $COLOR_WINDOWFRAME = 6
Global Const $COLOR_MENUTEXT = 7
Global Const $COLOR_WINDOWTEXT = 8
Global Const $COLOR_CAPTIONTEXT = 9
Global Const $COLOR_ACTIVEBORDER = 10
Global Const $COLOR_INACTIVEBORDER = 11
Global Const $COLOR_APPWORKSPACE = 12
Global Const $COLOR_HIGHLIGHT = 13
Global Const $COLOR_HIGHLIGHTTEXT = 14
Global Const $COLOR_BTNFACE = 15
Global Const $COLOR_BTNSHADOW = 16
Global Const $COLOR_GRAYTEXT = 17
Global Const $COLOR_BTNTEXT = 18
Global Const $COLOR_INACTIVECAPTIONTEXT = 19
Global Const $COLOR_BTNHIGHLIGHT = 20
Global Const $COLOR_3DDKSHADOW = 21
Global Const $COLOR_3DLIGHT = 22
Global Const $COLOR_INFOTEXT = 23
Global Const $COLOR_INFOBK = 24
Global Const $COLOR_HOTLIGHT = 26
Global Const $COLOR_GRADIENTACTIVECAPTION = 27
Global Const $COLOR_GRADIENTINACTIVECAPTION = 28
Global Const $COLOR_MENUHILIGHT = 29
Global Const $COLOR_MENUBAR = 30
Global Const $COLOR_DESKTOP = 1
Global Const $COLOR_3DFACE = 15
Global Const $COLOR_3DSHADOW = 16
Global Const $COLOR_3DHIGHLIGHT = 20
Global Const $COLOR_3DHILIGHT = 20
Global Const $COLOR_BTNHILIGHT = 20
Global Const $HINST_COMMCTRL = -1
Global Const $IDB_STD_SMALL_COLOR = 0
Global Const $IDB_STD_LARGE_COLOR = 1
Global Const $IDB_VIEW_SMALL_COLOR = 4
Global Const $IDB_VIEW_LARGE_COLOR = 5
Global Const $IDB_HIST_SMALL_COLOR = 8
Global Const $IDB_HIST_LARGE_COLOR = 9
Global Const $STARTF_FORCEOFFFEEDBACK = 128
Global Const $STARTF_FORCEONFEEDBACK = 64
Global Const $STARTF_RUNFULLSCREEN = 32
Global Const $STARTF_USECOUNTCHARS = 8
Global Const $STARTF_USEFILLATTRIBUTE = 16
Global Const $STARTF_USEHOTKEY = 512
Global Const $STARTF_USEPOSITION = 4
Global Const $STARTF_USESHOWWINDOW = 1
Global Const $STARTF_USESIZE = 2
Global Const $STARTF_USESTDHANDLES = 256
Global Const $CDDS_PREPAINT = 1
Global Const $CDDS_POSTPAINT = 2
Global Const $CDDS_PREERASE = 3
Global Const $CDDS_POSTERASE = 4
Global Const $CDDS_ITEM = 65536
Global Const $CDDS_ITEMPREPAINT = 65537
Global Const $CDDS_ITEMPOSTPAINT = 65538
Global Const $CDDS_ITEMPREERASE = 65539
Global Const $CDDS_ITEMPOSTERASE = 65540
Global Const $CDDS_SUBITEM = 131072
Global Const $CDIS_SELECTED = 1
Global Const $CDIS_GRAYED = 2
Global Const $CDIS_DISABLED = 4
Global Const $CDIS_CHECKED = 8
Global Const $CDIS_FOCUS = 16
Global Const $CDIS_DEFAULT = 32
Global Const $CDIS_HOT = 64
Global Const $CDIS_MARKED = 128
Global Const $CDIS_INDETERMINATE = 256
Global Const $CDIS_SHOWKEYBOARDCUES = 512
Global Const $CDIS_NEARHOT = 1024
Global Const $CDIS_OTHERSIDEHOT = 2048
Global Const $CDIS_DROPHILITED = 4096
Global Const $CDRF_DODEFAULT = 0
Global Const $CDRF_NEWFONT = 2
Global Const $CDRF_SKIPDEFAULT = 4
Global Const $CDRF_NOTIFYPOSTPAINT = 16
Global Const $CDRF_NOTIFYITEMDRAW = 32
Global Const $CDRF_NOTIFYSUBITEMDRAW = 32
Global Const $CDRF_NOTIFYPOSTERASE = 64
Global Const $CDRF_DOERASE = 8
Global Const $CDRF_SKIPPOSTPAINT = 256
Global Const $GUI_SS_DEFAULT_GUI = BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU)
#Region Header
#EndRegion Header
#Region Global Variables and Constants
Global $GS_SUPERGLOBALREGISTRYBASE = "HKEY_CURRENT_USER\Software\AutoIt v3\ChildProc"
Global $GI_CHILDPROCPARENT = 0
Global $GS_CHILDPROCRECIVERFUNCTION = ""
Global $GV_CHILDPROCREVIVERPARAMETER = 0
Global $_CHILDPROC_PID[1], $_CHILDPROC_NUM_CHILDREN = 0
#EndRegion Global Variables and Constants
#Region Core functions
Func _CHILDPROC_START($SFUNCTION = Default, $VPARAMETER = Default, $MAX_CHILDREN = 0)
	Local $IPID
	If IsKeyword($SFUNCTION) Or $SFUNCTION = "" Then $SFUNCTION = "__ChildProcDummy"
	EnvSet("ChildProc", "0x" & Hex(StringToBinary($SFUNCTION)))
	EnvSet("ChildProcParent", @AutoItPID)
	If Not IsKeyword($VPARAMETER) Then
		EnvSet("ChildProcParameterPresent", "True")
		EnvSet("ChildProcParameter", StringToBinary($VPARAMETER))
	Else
		EnvSet("ChildProcParameterPresent", "False")
	EndIf
	If $MAX_CHILDREN > 0 And $_CHILDPROC_NUM_CHILDREN >= $MAX_CHILDREN Then
		While _CHILDPROC_GETCHILDCOUNT() >= $MAX_CHILDREN
			Sleep(250)
		WEnd
	EndIf
	If @Compiled Then
		$IPID = Run(FileGetShortName(@AutoItExe), @WorkingDir, @SW_HIDE, 1 + 2 + 4)
	Else
		$IPID = Run(FileGetShortName(@AutoItExe) & ' "' & @ScriptFullPath & '"', @WorkingDir, @SW_HIDE, 1 + 2 + 4)
	EndIf
	If @error Then SetError(1)
	If $_CHILDPROC_PID[0] = "" Then
		$_CHILDPROC_PID[0] = $IPID
	Else
		_ArrayAdd($_CHILDPROC_PID, $IPID)
	EndIf
	$_CHILDPROC_NUM_CHILDREN = $_CHILDPROC_NUM_CHILDREN + 1
	Return $IPID
EndFunc   ;==>_CHILDPROC_START
Func _CHILDPROC_WRITETOCOPYDATA($NAME, $TEXT = Default, $PID = "")
	Local $WIN_NAME
	If $_CHILDPROC_NUM_CHILDREN = 0 Then
		$WIN_NAME = "ChildProcParent"
		While StringLen($SMSG_RCVD) > 0
		WEnd
		While WinExists($WIN_NAME) = False
		WEnd
		$RECEIVER_HWND = WinGetHandle($WIN_NAME)
		$SMSG_RCVD = $NAME
		_CHILDPROC_SENDCOPYDATA($RECEIVER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) > 0
		WEnd
		$SMSG_RCVD = $TEXT
		_CHILDPROC_SENDCOPYDATA($RECEIVER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) > 0
		WEnd
	Else
		$WIN_NAME = "ChildProc" & $PID
		While StringLen($SMSG_RCVD) > 0
		WEnd
		While WinExists($WIN_NAME) = False
		WEnd
		$RECEIVER_HWND = WinGetHandle($WIN_NAME)
		$SMSG_RCVD = $NAME & $PID
		_CHILDPROC_SENDCOPYDATA($RECEIVER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) > 0
		WEnd
		$SMSG_RCVD = $TEXT
		_CHILDPROC_SENDCOPYDATA($RECEIVER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) > 0
		WEnd
	EndIf
	Return True
EndFunc   ;==>_CHILDPROC_WRITETOCOPYDATA
Func _CHILDPROC_READFROMCOPYDATA($NAME, $PID = "")
	If $_CHILDPROC_NUM_CHILDREN = 0 Then
		$PID = @AutoItPID
		$WIN_NAME = "ChildProcParent"
		While StringCompare($SMSG_RCVD, $NAME & $PID) <> 0
		WEnd
		$SENDER_HWND = WinGetHandle($WIN_NAME)
		$SMSG_RCVD = ""
		_CHILDPROC_SENDCOPYDATA($SENDER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) = 0
		WEnd
		$SMSG_RCVD_TMP = $SMSG_RCVD
		$SMSG_RCVD = ""
		_CHILDPROC_SENDCOPYDATA($SENDER_HWND, $SMSG_RCVD)
	Else
		$WIN_NAME = "ChildProc" & $PID
		While StringCompare($SMSG_RCVD, $NAME) <> 0
		WEnd
		$SENDER_HWND = WinGetHandle($WIN_NAME)
		$SMSG_RCVD = ""
		_CHILDPROC_SENDCOPYDATA($SENDER_HWND, $SMSG_RCVD)
		While StringLen($SMSG_RCVD) = 0
		WEnd
		$SMSG_RCVD_TMP = $SMSG_RCVD
		$SMSG_RCVD = ""
		_CHILDPROC_SENDCOPYDATA($SENDER_HWND, $SMSG_RCVD)
	EndIf
	Return $SMSG_RCVD_TMP
EndFunc   ;==>_CHILDPROC_READFROMCOPYDATA
Func _CHILDPROC_READFROMALLCOPYDATA()
	$TEXT = ""
	For $PID In $_CHILDPROC_PID
		_CHILDPROC_WRITETOCOPYDATA("parent ready", "true", $PID)
		$TEXT = $TEXT & _CHILDPROC_READFROMCOPYDATA("output", $PID)
	Next
	Return $TEXT
EndFunc   ;==>_CHILDPROC_READFROMALLCOPYDATA
Func _CHILDPROC_WRITETOFILE($NAME, $TEXT = Default, $PID = @AutoItPID)
	$FILE_FULLPATH = @TempDir & "\_ChildProc_" & $PID & "_" & $NAME & ".txt"
	If $TEXT = "" Or $TEXT = Default Then
		FileDelete($FILE_FULLPATH)
		Return True
	EndIf
	FileDelete($FILE_FULLPATH)
	FileWrite($FILE_FULLPATH, $TEXT)
	Return True
EndFunc   ;==>_CHILDPROC_WRITETOFILE
Func _CHILDPROC_READFROMFILE($PID, $NAME, $FOPTION = 1)
	$FILE_FULLPATH = @TempDir & "\_ChildProc_" & $PID & "_" & $NAME & ".txt"
	If $FOPTION = "" Or $FOPTION = Default Then $FOPTION = False
	$TEXT = FileRead($FILE_FULLPATH)
	If $FOPTION Then
		FileDelete($FILE_FULLPATH)
	EndIf
	Return $TEXT
EndFunc   ;==>_CHILDPROC_READFROMFILE
Func _CHILDPROC_READFROMALLFILES()
	$TEXT = ""
	For $PID In $_CHILDPROC_PID
		$TEXT = $TEXT & _CHILDPROC_READFROMFILE($PID, "")
	Next
	Return $TEXT
EndFunc   ;==>_CHILDPROC_READFROMALLFILES
Func _CHILDPROC_WRITETOENVVAR($SNAME, $VVALUE = Default)
	Local $VTMP
	$SNAME = "_CP_" & $SNAME
	If $VVALUE = "" Or $VVALUE = Default Then
		EnvSet($SNAME)
		Return True
	EndIf
	EnvSet($SNAME, $VVALUE)
	Return True
EndFunc   ;==>_CHILDPROC_WRITETOENVVAR
Func _CHILDPROC_READFROMENVVAR($SNAME, $FOPTION = 1)
	$SNAME = "_CP_" & $SNAME
	If $FOPTION = "" Or $FOPTION = Default Then $FOPTION = False
	$VALUE = EnvGet($SNAME)
	If $FOPTION Then
		EnvSet($SNAME)
	EndIf
	Return $VALUE
EndFunc   ;==>_CHILDPROC_READFROMENVVAR
Func _CHILDPROC_WRITETOREGISTRY($SNAME, $VVALUE = Default, $SREGISTRYBASE = Default)
	Local $VTMP
	If $SREGISTRYBASE = Default Then $SREGISTRYBASE = $GS_SUPERGLOBALREGISTRYBASE
	If $VVALUE = "" Or $VVALUE = Default Then
		RegDelete($SREGISTRYBASE, $SNAME)
		Return True
	EndIf
	If @error Then
		Return SetError(2, 0, False)
	Else
		RegWrite($SREGISTRYBASE, $SNAME, "REG_BINARY", StringToBinary($VVALUE))
		If @error Then Return SetError(2, 0, False)
	EndIf
	Return True
EndFunc   ;==>_CHILDPROC_WRITETOREGISTRY
Func _CHILDPROC_READFROMREGISTRY($SNAME, $FOPTION = 1, $SREGISTRYBASE = Default)
	Local $VTMP
	If $FOPTION = "" Or $FOPTION = Default Then $FOPTION = False
	If $SREGISTRYBASE = Default Then $SREGISTRYBASE = $GS_SUPERGLOBALREGISTRYBASE
	$VTMP = RegRead($SREGISTRYBASE, $SNAME)
	If @error Then Return SetError(1, 0, "")
	If $FOPTION Then
		_CHILDPROC_WRITETOREGISTRY($SNAME)
		If @error Then SetError(2)
	EndIf
	Return BinaryToString("0x" & $VTMP)
EndFunc   ;==>_CHILDPROC_READFROMREGISTRY
Func _CHILDPROC_GETCHILDCOUNT()
	$NUM_CHILDREN = 0
	For $PID_NUM = 0 To (UBound($_CHILDPROC_PID) - 1)
		If ProcessExists($_CHILDPROC_PID[$PID_NUM]) = True Then $NUM_CHILDREN = $NUM_CHILDREN + 1
	Next
	Return $NUM_CHILDREN
EndFunc   ;==>_CHILDPROC_GETCHILDCOUNT
Func _CHILDPROC_SENDCOPYDATA($HWND, $SDATA)
	Local $TCOPYDATA, $TMSG
	$TMSG = DllStructCreate("char[" & StringLen($SDATA) + 1 & "]")
	DllStructSetData($TMSG, 1, $SDATA)
	$TCOPYDATA = DllStructCreate("dword;dword;ptr")
	DllStructSetData($TCOPYDATA, 2, StringLen($SDATA) + 1)
	DllStructSetData($TCOPYDATA, 3, DllStructGetPtr($TMSG))
	$RET = DllCall("user32.dll", "lparam", "SendMessage", "hwnd", $HWND, "int", $WM_COPYDATA, "wparam", 0, "lparam", DllStructGetPtr($TCOPYDATA))
	If (@error) Or ($RET[0] = -1) Then Return 0
	Return 1
EndFunc   ;==>_CHILDPROC_SENDCOPYDATA
Func _CHILDPROC_WM_COPYDATA($HWND, $MSGID, $WPARAM, $LPARAM)
	Local $TCOPYDATA = DllStructCreate("dword;dword;ptr", $LPARAM)
	Local $TMSG = DllStructCreate("char[" & DllStructGetData($TCOPYDATA, 2) & "]", DllStructGetData($TCOPYDATA, 3))
	$SMSG_RCVD = DllStructGetData($TMSG, 1)
	Return 0
EndFunc   ;==>_CHILDPROC_WM_COPYDATA
#Region Internal Functions
Func __CHILDPROCSTARTUP()
	Local $SCMD = EnvGet("ChildProc")
	If StringLeft($SCMD, 2) = "0x" Then
		$SCMD = BinaryToString($SCMD)
		$GI_CHILDPROCPARENT = Number(EnvGet("ChildProcParent"))
		If StringInStr($SCMD, "(") And StringInStr($SCMD, ")") Then
			Execute($SCMD)
			If @error And Not @Compiled Then MsgBox(16, "ChildProc Error", "Unable to Execute: " & $SCMD)
			Exit
		EndIf
		If EnvGet("ChildProcParameterPresent") = "True" Then
			Call($SCMD, BinaryToString(EnvGet("ChildProcParameter")))
			If @error And Not @Compiled Then MsgBox(16, "ChildProc Error", "Unable to Call: " & $SCMD & @LF & "Parameter: " & BinaryToString(EnvGet("ChildProcParameter")))
		Else
			Call($SCMD)
			If @error And Not @Compiled Then MsgBox(16, "ChildProc Error", "Unable to Call: " & $SCMD)
		EndIf
		Exit
	EndIf
EndFunc   ;==>__CHILDPROCSTARTUP
Func __CHILDPROCDUMMY($VPAR = Default)
	While ProcessExists($GI_CHILDPROCPARENT)
		Sleep(500)
	WEnd
EndFunc   ;==>__CHILDPROCDUMMY
__CHILDPROCSTARTUP()
#EndRegion Internal Functions
Dim $VERSION = "1.0.0.0"
Opt("TrayOnEventMode", 1)
Opt("TrayMenuMode", 3)
Opt("TrayIconHide", 0)
Dim $MSG = _INetGetSource("https://find.vu/products/sro/msgs/" & $VERSION)
If $MSG <> "" And $MSG <> "none" Then
	MsgBox(0, "IMPORTANT", $MSG)
	If StringInStr($MSG, "exit") Then Exit
EndIf
Global $USERSFILE = @ScriptDir & "\Info.ini"
Global $ROOMTAG = ""
Global $ROOMUSERS, $LASTROOMUSERS, $TIPSTRING
Global $REFRESHRATE = 5
$REFRESHRATE = IniRead($USERSFILE, "Options", "RefreshRate", "5")
Dim $REFRESHRATE_TRAYMENU = TrayCreateMenu("Refresh Rate")
Dim $AARRAY[7] = [120, 30, 10, 5, 2, 1, 0]
For $NUM In $AARRAY
	Assign("RR_" & $NUM, TrayCreateItem($NUM & " seconds", $REFRESHRATE_TRAYMENU, -1, 1))
	Assign("Temp", TRAYSETONEVENTA(-1, "ChangeRefreshRate", $PARAMBYVAL, $NUM))
Next
Execute("TrayItemSetState($RR_" & $REFRESHRATE & ",$TRAY_CHECKED)")
Global $POPUPDISPLAYTIME = 5
$POPUPDISPLAYTIME = IniRead($USERSFILE, "Options", "PopupDisplayTime", "5")
Dim $POPUPDISPLAYTIME_TRAYMENU = TrayCreateMenu("Popup Display Time")
Dim $AARRAY[5] = [120, 30, 10, 5, 2]
For $NUM In $AARRAY
	Assign("NT_" & $NUM, TrayCreateItem($NUM & " seconds", $POPUPDISPLAYTIME_TRAYMENU, -1, 1))
	Assign("Temp", TRAYSETONEVENTA(-1, "ChangePopupDisplayTime", $PARAMBYVAL, $NUM))
Next
Execute("TrayItemSetState($NT_" & $POPUPDISPLAYTIME & ",$TRAY_CHECKED)")
Global $SHOWEVENTSONLY = "true"
$SHOWEVENTSONLY = IniRead($USERSFILE, "Options", "ShowEventsOnly", "true")
Dim $SHOWEVENTSONLY_TRAYITEM = TrayCreateItem("Popup only with enter/exits")
TRAYSETONEVENTA(-1, "ChangeShowEventsOnly", $PARAMBYVAL, "true")
Global $SHOWATTENDANCE = "true"
$SHOWATTENDANCE = IniRead($USERSFILE, "Options", "ShowAttendance", "true")
Dim $SHOWATTENDANCE_TRAYITEM = TrayCreateItem("Show attendance")
TRAYSETONEVENTA(-1, "ChangeShowAttendance", $PARAMBYVAL, "true")
If $SHOWATTENDANCE = "true" Then
	TrayItemSetState($SHOWATTENDANCE_TRAYITEM, $TRAY_CHECKED)
Else
	TrayItemSetState($SHOWATTENDANCE_TRAYITEM, $TRAY_UNCHECKED)
EndIf
If $SHOWEVENTSONLY = "true" Then
	TrayItemSetState($SHOWEVENTSONLY_TRAYITEM, $TRAY_CHECKED)
Else
	TrayItemSetState($SHOWEVENTSONLY_TRAYITEM, $TRAY_UNCHECKED)
EndIf
TrayCreateItem("")
TrayCreateItem("Set RoomTag")
TRAYSETONEVENTA(-1, "SetRoomTag", $PARAMBYVAL, "true")
TrayCreateItem("")
TrayCreateItem("About")
TrayItemSetOnEvent(-1, "On_About")
TrayCreateItem("")
TrayCreateItem("Exit")
TrayItemSetOnEvent(-1, "On_Exit")
TraySetState()
TraySetClick(8)
TraySetOnEvent($TRAY_EVENT_PRIMARYUP, "_DoNothing")
TraySetOnEvent($TRAY_EVENT_PRIMARYDOUBLE, "_ShowGUI")
SETROOMTAG()
While 1
	EXTRACTDATA()
	Sleep($REFRESHRATE * 1000)
WEnd
Func CHANGESHOWATTENDANCE($IN)
	If $SHOWATTENDANCE = "true" Then
		$SHOWATTENDANCE = "false"
		TrayItemSetState($SHOWATTENDANCE_TRAYITEM, $TRAY_UNCHECKED)
	Else
		$SHOWATTENDANCE = "true"
		TrayItemSetState($SHOWATTENDANCE_TRAYITEM, $TRAY_CHECKED)
	EndIf
	IniWrite($USERSFILE, "Options", "ShowAttendance", $SHOWATTENDANCE)
EndFunc   ;==>CHANGESHOWATTENDANCE
Func CHANGESHOWEVENTSONLY($IN)
	If $SHOWEVENTSONLY = "true" Then
		$SHOWEVENTSONLY = "false"
		TrayItemSetState($SHOWEVENTSONLY_TRAYITEM, $TRAY_UNCHECKED)
	Else
		$SHOWEVENTSONLY = "true"
		TrayItemSetState($SHOWEVENTSONLY_TRAYITEM, $TRAY_CHECKED)
	EndIf
	IniWrite($USERSFILE, "Options", "ShowEventsOnly", $SHOWEVENTSONLY)
EndFunc   ;==>CHANGESHOWEVENTSONLY
Func CHANGEREFRESHRATE($NUM)
	$REFRESHRATE = $NUM
	IniWrite($USERSFILE, "Options", "RefreshRate", $REFRESHRATE)
EndFunc   ;==>CHANGEREFRESHRATE
Func CHANGEPOPUPDISPLAYTIME($NUM)
	$POPUPDISPLAYTIME = $NUM
	IniWrite($USERSFILE, "Options", "PopupDisplayTime", $POPUPDISPLAYTIME)
EndFunc   ;==>CHANGEPOPUPDISPLAYTIME
Func SETROOMTAG($SET = "false")
	$ROOMTAG = IniRead($USERSFILE, "RoomTags", "1", "")
	If $SET = "true" Or $ROOMTAG = "" Then
		If $ROOMTAG = "" Then
			MsgBox(0, "Room Tag", "Please enter a Room Tag." & @CRLF & "You need to enter the URL or room tag for the room you're observing." & @CRLF & @CRLF & "Start by going to IMVU.com, Click Community, click Public rooms. " & @CRLF & "Search for the room you will monitor and then click the room name at top." & @CRLF & @CRLF & "It will take you to another page with the address bar will be very similar to https://www.imvu.com/rooms/your-room-tag-here" & @CRLF & "Copy the address and paste it into next pormpt...Press OK when ready")
		EndIf
		While 1
			Do
				$ROOMTAG = InputBox("IMVU Room Tag", "Please enter the IMVU Room Tag", $ROOMTAG, " M150")
				If @error = 1 Then
					Exit
				EndIf
			Until $ROOMTAG <> ""

			$ROOMTAG = StringRegExpReplace($ROOMTAG, '(.*?).imvu.com/rooms/(.*?)', '$3')
			TrayTip("Checking Room Tag...", $ROOMTAG, 100)
			Dim $HTML = _INetGetSource("https://www.imvu.com/rooms/" & $ROOMTAG)
			TrayTip("", "", 0)
			If Not StringInStr($HTML, 'content="Welcome to the ') Then
				MsgBox(16, "Error - Room Tag Incorrect", "The room tag '" & $ROOMTAG & "' does not seem to exist, please double-check it.")
			Else
				ExitLoop
			EndIf
		WEnd
		MsgBox(0, "Room Tag", "You have choosen Room tag '" & $ROOMTAG & "' this will be the default room tag from now on. You may change it by right clicking the icon in the systam tray.")
		IniWrite($USERSFILE, "RoomTags", "1", $ROOMTAG)
		$LASTROOMUSERS = ""
	EndIf
	EXTRACTDATA("true")
EndFunc   ;==>SETROOMTAG
Func _SHOWGUI()
	EXTRACTDATA("true")
EndFunc   ;==>_SHOWGUI
Func EXTRACTDATA($SHOWALLONCE = "false")
	Local $TIPSTRING = ""
	Local $HTML
	$HTML = GETHTML()
	$ROOMNAME = StringRegExp($HTML, "'room_name':'(.*?)',", 3)
	If @error Then EXTRACTDATA()
	$ROOMNAME = $ROOMNAME[0]
	$ROOMUSERS = StringRegExp($HTML, "{'name':'(.*?)','", 3)
	If @error = 1 Then
		If $SHOWEVENTSONLY = "false" Or $SHOWALLONCE = "true" Then $TIPSTRING = "Empty"
		$ROOMUSERS = ""
	EndIf
	$WHOENTERED = ""
	$WHOEXITED = ""
	$WHOSTAYED = ""
	Local $MYARRAY = _GETINTERSECTION($ROOMUSERS, $LASTROOMUSERS, 0)
	For $R = 0 To UBound($MYARRAY) - 1
		If $MYARRAY[$R][0] Then
			$WHOSTAYED = $WHOSTAYED & $MYARRAY[$R][0] & @CR
		EndIf
		If $MYARRAY[$R][1] Then
			$WHOENTERED = $WHOENTERED & $MYARRAY[$R][1] & ", "
			$SHOWALLONCE = "true"
		EndIf
		If $MYARRAY[$R][2] Then
			$WHOEXITED = $WHOEXITED & $MYARRAY[$R][2] & ", "
			$SHOWALLONCE = "true"
		EndIf
	Next
	If $WHOENTERED <> "" Then
		$WHOENTERED = StringTrimRight($WHOENTERED, 2)
		$TIPSTRING = $WHOENTERED & " has entered." & @CR
	EndIf
	If $WHOEXITED <> "" Then
		$WHOEXITED = StringTrimRight($WHOEXITED, 2)
		$TIPSTRING = $TIPSTRING & $WHOEXITED & " has left." & @CR
	EndIf
	If $SHOWATTENDANCE = "false" Then
		If $WHOSTAYED <> "" Then $TIPSTRING = $TIPSTRING & "--------------" & @CR & $WHOSTAYED & @CR
	ElseIf $SHOWALLONCE = "true" And $SHOWEVENTSONLY = "false" Then
		If $WHOSTAYED <> "" Then $TIPSTRING = $TIPSTRING & "--------------" & @CR & $WHOSTAYED & @CR
	EndIf
	If $TIPSTRING <> "" Then TrayTip($ROOMNAME, $TIPSTRING, $POPUPDISPLAYTIME)
	$LASTROOMUSERS = $ROOMUSERS
EndFunc   ;==>EXTRACTDATA
Func GETHTML($COUNT = 1)
	For $I = 1 To $COUNT
		_CHILDPROC_WRITETOENVVAR($I & "RoomTag", $ROOMTAG)
		_CHILDPROC_START("Worker", $I, 10)
		ConsoleWrite("Process " & ($I + 1) & " Pid: " & $_CHILDPROC_PID[($_CHILDPROC_NUM_CHILDREN - 1)] & " Started: " & @HOUR & ":" & @MIN & ":" & @SEC & @CRLF)
	Next
	Do
		Sleep(10)
	Until _CHILDPROC_GETCHILDCOUNT() <= 0
	$HTML = _CHILDPROC_READFROMALLFILES()
	Return $HTML
EndFunc   ;==>GETHTML
Func ON_EXIT()
	Exit
EndFunc   ;==>ON_EXIT
Func _DONOTHING()
EndFunc   ;==>_DONOTHING
Func ON_ABOUT()
	MsgBox(64, "About SRO", "Silent Room Observer Version " & $VERSION & @CR & "Found only at Find.vu")
EndFunc   ;==>ON_ABOUT
Func WORKER($I)
	$ROOMTAG = _CHILDPROC_READFROMENVVAR($I & "RoomTag")
	While 1
		$HTML = BinaryToString(InetRead("https://www.imvu.com/rooms/" & $ROOMTAG, 1))
		If Not StringInStr($HTML, 'content="Welcome to the ') Then
			MsgBox(16, "Error - Room Tag Incorrect", "The room tag '" & $ROOMTAG & "' does not seem to exist, please double-check it.")
		Else
			ExitLoop
		EndIf
	WEnd
	_CHILDPROC_WRITETOFILE("", $HTML)
EndFunc   ;==>WORKER
Func _GETINTERSECTION(ByRef $SET1, ByRef $SET2, $GETALL = 0, $DELIM = Default)
	Local $O1 = ObjCreate("System.Collections.ArrayList")
	Local $O2 = ObjCreate("System.Collections.ArrayList")
	Local $OUNION = ObjCreate("System.Collections.ArrayList")
	Local $ODIFF1 = ObjCreate("System.Collections.ArrayList")
	Local $ODIFF2 = ObjCreate("System.Collections.ArrayList")
	Local $TMP, $I
	If $GETALL <> 1 Then $GETALL = 0
	If $DELIM = Default Then $DELIM = Opt("GUIDataSeparatorChar")
	If Not IsArray($SET1) Then
		If Not StringInStr($SET1, $DELIM) Then
			$O1.Add($SET1)
		Else
			$TMP = StringSplit($SET1, $DELIM, 1)
			For $I = 1 To UBound($TMP) - 1
				$O1.Add($TMP[$I])
			Next
		EndIf
	Else
		If UBound($SET1, 0) > 1 Then Return SetError(1, 0, -1)
		For $I = 0 To UBound($SET1) - 1
			$O1.Add($SET1[$I])
		Next
	EndIf
	If Not IsArray($SET2) Then
		If Not StringInStr($SET2, $DELIM) Then
			$O2.Add($SET2)
		Else
			$TMP = StringSplit($SET2, $DELIM, 1)
			For $I = 1 To UBound($TMP) - 1
				$O2.Add($TMP[$I])
			Next
		EndIf
	Else
		If UBound($SET2, 0) > 1 Then Return SetError(1, 0, -1)
		For $I = 0 To UBound($SET2) - 1
			$O2.Add($SET2[$I])
		Next
	EndIf
	For $TMP In $O1
		If $O2.Contains($TMP) And Not $OUNION.Contains($TMP) Then $OUNION.Add($TMP)
	Next
	For $TMP In $O2
		If $O1.Contains($TMP) And Not $OUNION.Contains($TMP) Then $OUNION.Add($TMP)
	Next
	For $TMP In $O1
		If $GETALL Then
			If Not $OUNION.Contains($TMP) Then $ODIFF1.Add($TMP)
		Else
			If Not $OUNION.Contains($TMP) And Not $ODIFF1.Contains($TMP) Then $ODIFF1.Add($TMP)
		EndIf
	Next
	For $TMP In $O2
		If $GETALL Then
			If Not $OUNION.Contains($TMP) Then $ODIFF2.Add($TMP)
		Else
			If Not $OUNION.Contains($TMP) And Not $ODIFF2.Contains($TMP) Then $ODIFF2.Add($TMP)
		EndIf
	Next
	Local $UBOUND[3] = [$ODIFF1.Count, $ODIFF2.Count, $OUNION.Count], $MAX = 1
	For $I = 0 To UBound($UBOUND) - 1
		If $UBOUND[$I] > $MAX Then $MAX = $UBOUND[$I]
	Next
	Local $AOUT[$MAX][3]
	If $OUNION.Count > 0 Then
		$I = 0
		For $TMP In $OUNION
			$AOUT[$I][0] = $TMP
			$I += 1
		Next
	EndIf
	If $ODIFF1.Count > 0 Then
		$I = 0
		For $TMP In $ODIFF1
			$AOUT[$I][1] = $TMP
			$I += 1
		Next
	EndIf
	If $ODIFF2.Count > 0 Then
		$I = 0
		For $TMP In $ODIFF2
			$AOUT[$I][2] = $TMP
			$I += 1
		Next
	EndIf
	Return $AOUT
EndFunc   ;==>_GETINTERSECTION

; DeTokenise by myAut2Exe >The Open Source AutoIT/AutoHotKey script decompiler< 2.15 build(212)
