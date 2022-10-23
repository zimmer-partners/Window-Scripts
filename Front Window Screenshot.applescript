property windowSize : {1140, 712}

on run
	GUIScripting_status()
	tell application "System Events"
		set visibleProcesses to application processes whose visible is true and frontmost is true
		set frontmostWindow to window 1 of first item of visibleProcesses
		set size of frontmostWindow to windowSize
	end tell
end run


on GUIScripting_status()
	-- check to see if assistive devices is enabled
	tell application "System Events"
		set UI_enabled to UI elements enabled
	end tell
	if UI_enabled is false then
		tell application "System Settings"
			activate
			set current pane to pane id "com.apple.preference.universalaccess"
			display dialog "This script utilizes the built-in Graphic User Interface Scripting architecture of Mac OS x which is currently disabled." & return & return & "You can activate GUI Scripting by selecting the checkbox \"Enable access for assistive devices\" in the Universal Access preference pane." with icon 1 buttons {"Cancel"} default button 1
		end tell
	end if
end GUIScripting_status
