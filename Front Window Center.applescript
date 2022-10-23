-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1675
property stackingGap : 35
property standardGap : 5
property dockGap : 10
property finderGap : 165
property snappingGap : 20
property menubarHeight : 23

-- Iternal
property monitorHeight : 0
property monitorWidth : 0
property topBound : 0
property leftBound : 0
property boundWidth : 0
property boundHeight : 0
property leftGap : 0
property topGap : 7
property bottomGap : 0

tell application "System Events"
	set myFrontMostApp to "" & short name of first item of (processes whose frontmost is true)
	-- Calculate edges
	if not autohide of dock preferences and screen edge of dock preferences is bottom then
		set dockProps to property list file "~/Library/Preferences/com.apple.dock.plist"
		set bottomGap to the (value of (property list item "tilesize" of dockProps)) + bottomGap + standardGap + dockGap
	else
		set bottomGap to standardGap
	end if
	set monitorProps to monitorProperties() of me
	if monitorProps is null then
		error "Couldn't get screen resolution"
	end if
	set {monitorHeight, monitorWidth} to {Height, Width} of monitorProps
end tell


try
	
	tell application myFrontMostApp
		set windowBounds to bounds of window 1
		set windowLeft to item 1 of windowBounds
		set windowTop to item 2 of windowBounds
		set windowRight to item 3 of windowBounds
		set windowBottom to item 4 of windowBounds
		set windowHeight to windowBottom - windowTop
		set windowWidth to windowRight - windowLeft
		
		set newWindowLeft to (monitorWidth - windowWidth) / 2
		set newWindowTop to (monitorHeight - windowHeight - bottomGap) / 2
		tell window 1
			set bounds to {newWindowLeft, newWindowTop, newWindowLeft + windowWidth, newWindowTop + windowHeight}
		end tell
	end tell
	
end try

on monitorProperties()
	tell application "Finder"
		set screenResolution to bounds of window of desktop
	end tell
	return {Width:item 3 of screenResolution, Height:item 4 of screenResolution, OriginX:missing value, OriginY:missing value}
end monitorProperties
