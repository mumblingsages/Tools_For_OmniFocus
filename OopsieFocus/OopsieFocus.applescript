(*
OopsieFocus

A script to launch OmniFocus and activiate the Quick Entry Panel. 

By Mark Parry
January 22nd, 2017

Dependacies
	1) Keyboard Maestro - Not really a dependancy but an easy way to bind this script to the same keyboard shortcut as that which is mapped in OmniFocus. 

How it works
	Note) When OmniFocus is not running, it isn't catching the the keyboard shortcut in its preferences (because its not running). 
	1) Create a global keyboard macro in a tool like Keyboard Maestro. 
		-) Make sure that the keyboard shortcut defined in Keyboard Maestro matches that which is defined in OmniFocus
	2) With OmniFocus not running type the keyboard shortcut
	3) Applescript will check to see if OmniFocus is running
		If running) The script will simply terminate
		If not running) The script will start OmniFocus and then tell it to display the Quick Entry window
*)
-- hattip http://shawnblanc.net/2011/06/oopsiefocus/

(*
	Handler: LaunchOmniFocus
	Since: v1.0
	Type: Utility
	Description:
		This launches OmniFocus if it is not already running
	Returns:
		Boolean - True if we had to launch OmniFocus
	Parameters:
		None
*)
on LaunchOmniFocus()
	set returnThis to false
	if application "OmniFocus" is not running then
		tell application "OmniFocus"
			activate
		end tell
		set returnThis to true
	end if
	return returnThis
end LaunchOmniFocus

(*
	Handler: OpenQuickEntry
	Since: v1.0
	Type: Core Logic
	Description:
		This handler tells OmniFocus to open the quick entry window
	Returns:
		Nothing
	Parameters:
		None
*)
on OpenQuickEntry()
	local newTask
	tell application "OmniFocus"
		tell quick entry
			open
			activate
			tell application "System Events"
				key code 36 using shift down
			end tell
		end tell
	end tell
	
end OpenQuickEntry

(*
	Handler: run
	Since: v1.0
	Type: Core Logic
	Description:
		The “main method” of the application.
	Returns:
		None
	Parameters:
		None
*)
on run {}
	if LaunchOmniFocus() is true then
		OpenQuickEntry()
	end if
end run

