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
Global Const $HGDI_ERROR = Ptr(-1)
Global Const $INVALID_HANDLE_VALUE = Ptr(-1)
Global Const $KF_EXTENDED = 256
Global Const $KF_ALTDOWN = 8192
Global Const $KF_UP = 32768
Global Const $LLKHF_EXTENDED = BitShift($KF_EXTENDED, 8)
Global Const $LLKHF_ALTDOWN = BitShift($KF_ALTDOWN, 8)
Global Const $LLKHF_UP = BitShift($KF_UP, 8)




Global Const $TRAY_CHECKED = 1
Global Const $TRAY_UNCHECKED = 4
Global Const $TRAY_EVENT_PRIMARYUP = -8
Global Const $TRAY_EVENT_PRIMARYDOUBLE = -13
Global Const $GUI_EVENT_DROPPED = -13
Const $PARAMBYVAL = 0
Const $PARAMBYREF = 1
Const $PARAMWINDOW = 3
Const $PARAMARRAY = 2
Const $OE_HOTKEY = 1
Const $OE_CONTROL = 0
Const $OE_GUI = 2
Const $MAX_NUM_PARAMS = 5
Global $CTRLLIB[6][2][$MAX_NUM_PARAMS + 3]

Func _INetGetSource($S_URL, $BSTRING = True)
	Local $SSTRING = InetRead($S_URL, 1)
	Local $NERROR = @error, $NEXTENDED = @extended
	If $BSTRING Then $SSTRING = BinaryToString($SSTRING)
	Return SetError($NERROR, $NEXTENDED, $SSTRING)
EndFunc   ;==>_INetGetSource

Func _ArrayAdd(ByRef $AVARRAY, $VVALUE)
	If Not IsArray($AVARRAY) Then Return SetError(1, 0, -1)
	If UBound($AVARRAY, 0) <> 1 Then Return SetError(2, 0, -1)
	Local $IUBOUND = UBound($AVARRAY)
	ReDim $AVARRAY[$IUBOUND + 1]
	$AVARRAY[$IUBOUND] = $VVALUE
	Return $IUBOUND
EndFunc   ;==>_ArrayAdd

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








Global $GI_CHILDPROCPARENT = 0
Global $_CHILDPROC_PID[1], $_CHILDPROC_NUM_CHILDREN = 0

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

Func _CHILDPROC_GETCHILDCOUNT()
	$NUM_CHILDREN = 0
	For $PID_NUM = 0 To (UBound($_CHILDPROC_PID) - 1)
		If ProcessExists($_CHILDPROC_PID[$PID_NUM]) = True Then $NUM_CHILDREN = $NUM_CHILDREN + 1
	Next
	Return $NUM_CHILDREN
EndFunc   ;==>_CHILDPROC_GETCHILDCOUNT

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








__CHILDPROCSTARTUP()
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