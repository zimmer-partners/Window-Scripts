-- Written by moritz@zimmer.partners, September 4, 2023
-- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
use framework "Foundation"
use framework "AppKit"

-- APP SPECIFIC SETTINGS
-- Apps to be excluded in general
property excludeApps : {"prl_client_app", "iTunify", "Smaller", "MacGPT", "Cisco Secure Client", "DaisyDisk"}
-- Apps whose windows should snap to the edges of the screen
property snapToEdgeApps : {"Zattoo", "Console", "ctivity Monitor", "Transmit", "Dictionary", "Pukka", "Address Book", "CSSEdit", "Linkinus", "Feeder", "FlexTime", "Hibari", "Twitterrific", "Tagalicious", "AirFoil", "HelpViewer", "Keychain Access", "Osfoora", "Disk Utility", "Contacts", "Harvest", "TestFlight", "TextExpander", "Notes", "iChat", "Transmission", "HockeyApp", "Font Book", "Mail", "Dash", "Terminal", "Codebug", "Creative Cloud", "Finder", "iTunes", "App Store", "Preview", "Erinnerungen", "Toast Titanium", "Subler", "ClamXAV", "Microsoft OneNote", "On The Job", "HandBrake", "IPNetMonitorX", "Soulver 3", "ViDL", "Apple Configurator 2 MAS", "Teams", "Microsoft Teams (work or school)", "MSTeams", "GitUp", "Facetime", "Machato", "Toggl Track"}
-- Apps whose windows should be centered
property centeredApps : {"Software Update", "Installer", "Server", "Boot Camp-Assistent", "System Preferences", "System Settings"}
-- Apps whose windows should be max heightened
property maxHeightApps : {"Messages", "Skype", "Twitter", "Tweetbot", "Espresso", "Messenger", "WhatsApp", "Franz", "Google Chrome", "Signal Private Messenger", "Rocket.Chat", "Signal", "Slack", "Telegram", "Coda 2 MAS", "Xcode", "MacGDBp", "MakeMKV", "Microsoft To Do", "Nova", "Cisco Jabber", "Reminders"}
-- Apps whose should be spanned across the whole screen
property fullscreenApps : {"Maps", "Photos", "Merlin Project Express", "Calendar", "Numbers", "Microsoft Excel", "Microsoft Edge", "Affinity Designer", "Affinity Designer 2 MAS", "Affinity Photo", "Affinity Photo 2 MAS", "Affinity Publisher 2 MAS", "iMovie", "banana90", "TV", "Fantastical", "Affinity Designer 2 MAS", "Affinity Photo 2 MAS", "Affinity Publisher 2 MAS"}
-- Apps in need for extra gap to the right screen border (only applied to apps with windows snapping to edges)
property extraRightGapApps : {"Finder"}
-- Extra right gap in pixels (mostly used to guarantee desktop objects not overlapping)
property extraRightGap : 180

-- WINDOW SPECIFIC SETTINGS
-- Window names that should be excluded from the cascade
property excludeWindows : {"Copy", "Mobile Sync", "Template Chooser", "API reference", "DrupalContrib", "PHP: ", "LaserJet", "Samsung", "Brother", "Citrix Workspace", "Neue und zuletzt verwendete Dateien öffnen"}
-- Window names that should be snapped to the edges
property snapToEdgesWindows : {"Trash", "Downloads", "Web Inspector", "MiniPlayer"}

-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1475
property stackingGap : 35
property standardGap : 5
property dockGap : 10
property desktopGap : 150
property snappingGap : 20
property menubarHeight : 25

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

on run
	GUIScripting_status()
	tell application "System Events"
		
		-- Calculate edges
		if not autohide of dock preferences then
			set dockProps to property list file "~/Library/Preferences/com.apple.dock.plist"
			set dockTileSize to the (value of (property list item "tilesize" of dockProps))
			if screen edge of dock preferences is bottom then
				set leftGap to standardGap
				set bottomGap to dockTileSize + dockGap + standardGap + dockGap
			else if screen edge of dock preferences is left then
				set leftGap to dockTileSize + dockGap + standardGap
				set bottomGap to standardGap
			end if
		else
			set leftGap to standardGap
			set bottomGap to standardGap
		end if
		
		-- Calculate positioning frame
		set screenProps to screenRecords(true) of me
		if screenProps is {} then
			error "Couldn't get screen resolution"
		end if
		set menubarHeight to menubarHeight of screenProps
		set monitorProps to frame of screenProps
		set {monitorHeight, monitorWidth} to {height, width} of monitorProps
		set topBound to menubarHeight + standardGap
		if (monitorWidth ≤ 1920) then
			set leftBound to (monitorWidth - maxWindowWidth) / 2 + leftGap
			set boundWidth to maxWindowWidth - leftGap - standardGap
		else
			set leftBound to (monitorWidth - maxWideWindowWidth) / 2 + leftGap
			set boundWidth to maxWideWindowWidth - leftGap - standardGap
		end if
		set boundHeight to monitorHeight - topBound - bottomGap
		
		-- Filter out Adobe apps
		set visibleProcesses to application processes whose visible is true and name does not start with "Adobe"
		
		-- Loop apps
		repeat with xProcess in visibleProcesses
			if name of xProcess is not in excludeApps then
				if name of xProcess is in snapToEdgeApps then
					-- Snap windows to edges
					set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name is not "Open") & (windows of xProcess whose subrole is "AXUnknown" and name is not "Open")
					repeat with xWindow in standardWindows
						if (name of xWindow is not in excludeWindows) then
							snapToEdge(xProcess, xWindow) of me
						end if
					end repeat
				else if name of xProcess is in centeredApps then
					-- Center windows				
					set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name does not start with "Mobile Sync" and name does not start with "Template Chooser" and name does not start with "Web Inspector" and name does not start with "Source of" and name does not start with "API reference" and name does not end with "DrupalContrib" and name does not start with "PHP: " and name does not contain "LaserJet" and name does not contain "Samsung" and name does not contain "Brother" and name does not contain "Multiple Speakers" and name is not "Open") -- Filter windows by names
					repeat with xWindow in standardWindows
						if (name of xWindow is not in excludeWindows) and (name of xWindow is not in snapToEdgesWindows) then
							set xPos to position of xWindow
							set xSize to size of xWindow
							set newPos to {(monitorWidth - (first item of xSize)) / 2, (monitorHeight - bottomGap - (second item of xSize)) / 3}
							if (first item of newPos > 0 and first item of newPos < monitorWidth and second item of newPos > 0 and second item of newPos < monitorHeight) then
								set position of xWindow to newPos
							end if
						else if (name of xWindow is in snapToEdgesWindows) then
							snapToEdge(xProcess, xWindow) of me
						end if
					end repeat
				else if name of xProcess is in maxHeightApps then
					-- Stretch windows to max. height
					set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name does not start with "Mobile Sync" and name does not start with "Template Chooser" and name does not start with "Web Inspector" and name does not start with "Source of" and name does not start with "API reference" and name does not end with "DrupalContrib" and name does not start with "PHP: " and name does not contain "LaserJet" and name does not contain "Samsung" and name does not contain "Brother" and name does not contain "Multiple Speakers" and name is not "Open") -- Filter windows by names
					set windowCount to count of standardWindows
					if windowCount ≥ 1 then
						-- Set window height to maximum
						repeat with xWindow in standardWindows
							if (name of xWindow is not in excludeWindows) and (name of xWindow is not in snapToEdgesWindows) then
								fillHeight(xWindow) of me
								snapToEdge(xProcess, xWindow) of me
							else if (name of xWindow is in snapToEdgesWindows) then
								snapToEdge(xProcess, xWindow) of me
							end if
						end repeat
					end if
				else if name of xProcess is in fullscreenApps then
					-- Stretch window to max. height and width
					set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name does not start with "Mobile Sync" and name does not start with "Template Chooser" and name does not start with "Web Inspector" and name does not start with "Source of" and name does not start with "API reference" and name does not end with "DrupalContrib" and name does not start with "PHP: " and name does not contain "LaserJet" and name does not contain "Samsung" and name does not contain "Brother" and name does not contain "Multiple Speakers" and name is not "Open") -- Filter windows by names
					repeat with xWindow in standardWindows
						if (name of xWindow is not in excludeWindows) and (name of xWindow is not in snapToEdgesWindows) then
							fillScreen(xWindow) of me
						else if (name of xWindow is in snapToEdgesWindows) then
							snapToEdge(xProcess, xWindow) of me
						end if
					end repeat
				else
					-- Cascade windows
					set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name does not start with "Mobile Sync" and name does not start with "Template Chooser" and name does not start with "Web Inspector" and name does not start with "Source of" and name does not start with "API reference" and name does not end with "DrupalContrib" and name does not start with "PHP: " and name does not contain "LaserJet" and name does not contain "Samsung" and name does not contain "Brother" and name does not contain "Multiple Speakers" and name is not "Open") -- Filter windows by names
					set windowCount to count of standardWindows
					if windowCount ≥ 1 then
						set maxWidth to boundWidth - ((windowCount - 1) * stackingGap)
						set maxHeight to boundHeight - ((windowCount - 1) * stackingGap)
						set stackOrder to 0
						repeat with windowObject in standardWindows
							if (name of windowObject is not in snapToEdgesWindows) and (name of windowObject is not in excludeWindows) then
								set stackOrder to stackOrder + 1
								cascadeWindow(stackOrder, maxWidth, maxHeight, windowObject) of me
							else if (name of windowObject is in snapToEdgesWindows) then
								snapToEdge(xProcess, windowObject) of me
							end if
						end repeat
					end if
				end if
			end if
		end repeat
	end tell
end run

on cascadeWindow(stackOrder, maxWidth, maxHeight, windowObject)
	tell application "System Events"
		set position of windowObject to {leftBound + (stackOrder - 1) * stackingGap, topBound + (stackOrder - 1) * stackingGap}
		set size of windowObject to {maxWidth, maxHeight}
		set checkHeight to size of windowObject
		if (second item of checkHeight) is not maxHeight then
			set size of windowObject to {maxWidth, maxHeight - 30} -- Lion won't resize sometimes, force it
			set size of windowObject to {maxWidth, maxHeight}
		end if
	end tell
end cascadeWindow

on snapToEdge(thisProcess, thisWindow)
	tell application "System Events"
		set xPos to position of thisWindow
		set xSize to size of thisWindow
		-- constrain window height
		if second item of xSize > boundHeight then
			set size of thisWindow to {first item of xSize, boundHeight}
			set checkHeight to size of thisWindow
			if (second item of checkHeight) is not boundHeight then
				set size of thisWindow to {first item of xSize, boundHeight - 30} -- Lion won't resize sometimes, force it
				set size of thisWindow to {first item of xSize, boundHeight}
			end if
		end if
		-- vertical decluttering
		if second item of xPos < (snappingGap + menubarHeight) then
			set position of thisWindow to {first item of xPos, topBound}
		else if monitorHeight - bottomGap - ((second item of xPos) + (second item of xSize)) < snappingGap then
			set position of thisWindow to {first item of xPos, monitorHeight - bottomGap - (second item of xSize)}
		end if
		set xPos to position of thisWindow
		-- Horizontal Decluttering
		if name of thisProcess is in extraRightGapApps then
			set rightGap to extraRightGap
		else
			set rightGap to standardGap
		end if
		if monitorWidth - ((first item of xPos) + (first item of xSize)) < rightGap then
			-- Correct right gap
			set position of thisWindow to {monitorWidth - ((first item of xSize) + rightGap), second item of xPos}
		else if first item of xPos < leftGap then
			-- Correct left gap
			set position of thisWindow to {leftGap, second item of xPos}
		end if
	end tell
end snapToEdge

on fillHeight(thisWindow)
	tell application "System Events"
		set xPos to position of thisWindow
		set xSize to size of thisWindow
		set xLeft to first item of xPos as integer
		set xWidth to first item of xSize as integer
		set position of thisWindow to {xLeft, topBound}
		set size of thisWindow to {xWidth, boundHeight}
		set checkHeight to size of thisWindow
		if (second item of checkHeight) is not boundHeight then
			set size of thisWindow to {xWidth, boundHeight - 30} -- Lion won't resize sometimes, force it
			set size of thisWindow to {xWidth, boundHeight}
		end if
	end tell
end fillHeight

on fillScreen(thisWindow)
	tell application "System Events"
		set position of thisWindow to {leftGap, topBound}
		set targetWidth to monitorWidth - leftGap - standardGap - desktopGap
		set size of thisWindow to {boundWidth, boundHeight}
		set checkHeight to size of thisWindow
		if (second item of checkHeight) is not boundHeight then
			set size of thisWindow to {targetWidth, boundHeight - 30} -- Lion won't resize sometimes, force it
			set size of thisWindow to {targetWidth, boundHeight}
		end if
		if (first item of checkHeight) is not targetWidth then
			set size of thisWindow to {targetWidth - 30, boundHeight} -- Lion won't resize sometimes, force it
			set size of thisWindow to {targetWidth, boundHeight}
		end if
	end tell
end fillScreen

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

on screenRecords(mainScreenOnly)
	-- Get the array of screens using Objective-C
	set screens to current application's NSScreen's screens()
	-- Convert the NSScreen objects to AppleScript records
	set screenRecords to {}
	repeat with screen in screens
		set screenBounds to screen's frame()
		set screenVisibleBounds to screen's visibleFrame()
		set screenName to screen's localizedName() as string
		set screenBackingScaleFactor to screen's backingScaleFactor() as string
		set screenFrame to {|left|:item 1 of item 1 of screenBounds, top:item 2 of item 1 of screenBounds, width:item 1 of item 2 of screenBounds, height:item 2 of item 2 of screenBounds}
		set screenVisibleFrame to {|left|:item 1 of item 1 of screenVisibleBounds, top:item 2 of item 1 of screenVisibleBounds, width:item 1 of item 2 of screenVisibleBounds, height:item 2 of item 2 of screenVisibleBounds}
		set screenMenuBarHeight to ((height of screenFrame) - (height of screenVisibleFrame) - (top of screenVisibleFrame))
		if (item 1 of item 1 of screenBounds is 0 and item 2 of item 1 of screenBounds is 0) then
			set screenRecord to {name:screenName, frame:screenFrame, visibleFrame:screenVisibleFrame, scaleFactor:screenBackingScaleFactor, menubarHeight:screenMenuBarHeight, isMainScreen:false}
			if mainScreenOnly is true then
				return screenRecord
			end if
		else
			set screenRecord to {name:screenName, frame:screenFrame, visibleFrame:screenVisibleBounds, scaleFactor:screenBackingScaleFactor, menubarHeight:screenMenuBarHeight, isMainScreen:false}
		end if
		set end of screenRecords to screenRecord
	end repeat
	return screenRecords
end screenRecords

-- # Creative Commons Konzessionsurkunde
-- 
-- ## Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International (CC BY-SA 4.0)
-- 
-- Dies ist eine allgemeinverständliche Zusammenfassung der Lizenz (die diese nicht ersetzt). Haftungsbeschränkung.
-- 
-- ### Sie dürfen: [sie-dürfen]
-- 
-- - **Teilen** — das Material in jedwedem Format oder Medium vervielfältigen und weiterverbreiten
-- - **Bearbeiten** — das Material remixen, verändern und darauf aufbauen - und zwar für beliebige Zwecke, sogar kommerziell.
-- - Der Lizenzgeber kann diese Freiheiten nicht widerrufen solange Sie sich an die Lizenzbedingungen halten.
-- 
-- - - -
-- 
-- ### Unter folgenden Bedingungen: [unter-folgenden-bedingungen]
-- 
-- - **Namensnennung** — Sie müssen angemessene Urheber- und Rechteangaben machen, einen Link zur Lizenz beifügen und angeben, ob Änderungen vorgenommen wurden. Diese Angaben dürfen in jeder angemessenen Art und Weise gemacht werden, allerdings nicht so, dass der Eindruck entsteht, der Lizenzgeber unterstütze gerade Sie oder Ihre Nutzung besonders.
-- - **Weitergabe unter gleichen Bedingungen** — Wenn Sie das Material remixen, verändern oder anderweitig direkt darauf aufbauen, dürfen Sie Ihre Beiträge nur unter derselben Lizenz wie das Original verbreiten.
-- - **Keine weiteren Einschränkungen** — Sie dürfen keine zusätzlichen Klauseln oder technische Verfahren einsetzen, die anderen rechtlich irgendetwas untersagen, was die Lizenz erlaubt.
-- 
-- - - -
-- 
-- ### Hinweise: [hinweise]
-- 
-- - Sie müssen sich nicht an diese Lizenz halten hinsichtlich solcher Teile des Materials, die gemeinfrei sind, oder soweit Ihre Nutzungshandlungen durch Ausnahmen und Schranken des Urheberrechts gedeckt sind.
-- - Es werden keine Garantien gegeben und auch keine Gewähr geleistet. Die Lizenz verschafft Ihnen möglicherweise nicht alle Erlaubnisse, die Sie für die jeweilige Nutzung brauchen. Es können beispielsweise andere Rechte wie Persönlichkeits- und Datenschutzrechte zu beachten sein, die Ihre Nutzung des Materials entsprechend beschränken.
-- 
-- [Erfahren Sie mehr](https://wiki.creativecommons.org/FAQ) über CC-Lizenzierung oder verwenden Sie diese Lizenz für Ihr eigenes Material.
-- 
-- Dieser Inhalt ist durch Creative-Commons, einer Non-Profit-Organisation, die auf Spenden angewiesen ist, unter einfachen rechtlichen Regeln verfügbar. Wenn Sie diesen Inhalt mögen und mögen, dass er frei für jeden ist, erwägen Sie eine Spende, um unsere Arbeit zu unterstützen.
-- 
-- Make a Donation
-- 
-- Diese Seite ist in folgenden Sprachen verfügbar:
-- [Bahasa Indonesia](https://creativecommons.org/licenses/by-sa/4.0/deed.id "Bahasa Indonesia") [Bahasa Malaysia](https://creativecommons.org/licenses/by-sa/4.0/deed.ms "Bahasa Malaysia") [Castellano (España)](https://creativecommons.org/licenses/by-sa/4.0/deed.es_ES "Castellano (España)") [Català](https://creativecommons.org/licenses/by-sa/4.0/deed.ca "Català") [Dansk](https://creativecommons.org/licenses/by-sa/4.0/deed.da "Dansk") [Deutsch](deed.de.html "Deutsch") [English](https://creativecommons.org/licenses/by-sa/4.0/deed.en "English") [Español](https://creativecommons.org/licenses/by-sa/4.0/deed.es "Español") [Esperanto](https://creativecommons.org/licenses/by-sa/4.0/deed.eo "Esperanto") [Euskara](https://creativecommons.org/licenses/by-sa/4.0/deed.eu "Euskara") [français](https://creativecommons.org/licenses/by-sa/4.0/deed.fr "français") [Galego](https://creativecommons.org/licenses/by-sa/4.0/deed.gl "Galego") [hrvatski](https://creativecommons.org/licenses/by-sa/4.0/deed.hr "hrvatski") [Italiano](https://creativecommons.org/licenses/by-sa/4.0/deed.it "Italiano") [Latviski](https://creativecommons.org/licenses/by-sa/4.0/deed.lv "Latviski") [Lietuvių](https://creativecommons.org/licenses/by-sa/4.0/deed.lt "Lietuvių") [Magyar](https://creativecommons.org/licenses/by-sa/4.0/deed.hu "Magyar") [Nederlands](https://creativecommons.org/licenses/by-sa/4.0/deed.nl "Nederlands") [norsk](https://creativecommons.org/licenses/by-sa/4.0/deed.no "norsk") [polski](https://creativecommons.org/licenses/by-sa/4.0/deed.pl "polski") [Português](https://creativecommons.org/licenses/by-sa/4.0/deed.pt "Português") [Português (BR)](https://creativecommons.org/licenses/by-sa/4.0/deed.pt_BR "Português (BR)") [română](https://creativecommons.org/licenses/by-sa/4.0/deed.ro "română") [Slovenščina](https://creativecommons.org/licenses/by-sa/4.0/deed.sl "Slovenščina") [srpski (latinica)](https://creativecommons.org/licenses/by-sa/4.0/deed.sr_LATN "srpski (latinica)") [suomeksi](https://creativecommons.org/licenses/by-sa/4.0/deed.fi "suomeksi") [svenska](https://creativecommons.org/licenses/by-sa/4.0/deed.sv "svenska") [Türkçe](https://creativecommons.org/licenses/by-sa/4.0/deed.tr "Türkçe") [Íslenska](https://creativecommons.org/licenses/by-sa/4.0/deed.is "Íslenska") [čeština](https://creativecommons.org/licenses/by-sa/4.0/deed.cs "čeština") [Ελληνικά](https://creativecommons.org/licenses/by-sa/4.0/deed.el "Ελληνικά") [Беларуская](https://creativecommons.org/licenses/by-sa/4.0/deed.be "Беларуская") [русский](https://creativecommons.org/licenses/by-sa/4.0/deed.ru "русский") [українська](https://creativecommons.org/licenses/by-sa/4.0/deed.uk "українська") [العربية](https://creativecommons.org/licenses/by-sa/4.0/deed.ar "العربية") [پارسی](https://creativecommons.org/licenses/by-sa/4.0/deed.fa "پارسی") [বাংলা](https://creativecommons.org/licenses/by-sa/4.0/deed.bn "বাংলা") [中文](https://creativecommons.org/licenses/by-sa/4.0/deed.zh "中文") [日本語](https://creativecommons.org/licenses/by-sa/4.0/deed.ja "日本語") [華語 (台灣)](https://creativecommons.org/licenses/by-sa/4.0/deed.zh_TW "華語 (台灣)") [한국어](https://creativecommons.org/licenses/by-sa/4.0/deed.ko "한국어")
-- 
-- Dieser Inhalt ist durch Creative-Commons, einer Non-Profit-Organisation, die auf Spenden angewiesen ist, unter einfachen rechtlichen Regeln verfügbar. Wenn Sie diesen Inhalt mögen und mögen, dass er frei für jeden ist, erwägen Sie eine Spende, um unsere Arbeit zu unterstützen.
-- 
-- ###### Wir würden uns freuen von Ihnen zu hören!
-- 
-- Creative Commons
-- PO Box 1866, Mountain View, CA 94042
-- 
-- - <info@creativecommons.org>
-- 
-- Except where otherwise noted, content on this site is licensed under a Creative Commons Attribution 4.0 International license. Icons by The Noun Project.
-- 
-- Haftungsbeschränkung
-- 
-- Dieser Deed beschreibt nur einige der wichtigsten Eigenschaften und Klauseln der eigentlichen Lizenz. Er ist keine Lizenz und hat keine rechtliche Bedeutung. Sie sollten alle Klauseln und Bedingungen der eigentlichen Lizenz aufmerksam lesen, bevor Sie das lizenzierte Material nutzen.
-- 
-- Creative Commons ist keine Anwaltskanzlei und bietet keinerlei Rechtsdienstleistungen an. Verbreitung, Anzeigen oder Verlinken dieser Deed oder der Lizenz, die sie zusammenfasst, erzeugt keine Mandats- oder sonstige Beziehung.
-- 
-- Was bedeutet "Namensnennung"?
-- 
-- Die Seite, von der aus Sie hierher gelangt sind, enthielt eingebettete Metadaten zur Lizenz, unter anderem auch zur Art und Weise wie der Rechteinhaber bei Weiterverwendung bezeichnet werden möchte. Das hier gezeigte HTML können Sie als Verweis auf das lizenzierte Werk verwenden. Dadurch werden in Ihre Website Metadaten eingefügt, durch die andere auch die Originalquelle finden können.
-- 
-- Die anzuwendenden Mediationsregeln werden im Rechtehinweis genannt, der dem Werk beigefügt ist, oder ohne einen solchen Hinweis in der Mediationsaufforderung. Falls in einem Rechtehinweis zum Werk nicht anders festgelegt, gelten die UNCITRAL Schiedsgerichtssregeln für jedwedes Schiedsverfahren.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/Intergovernmental_Organizations#What_should_I_know_before_I_use_a_work_licensed_under_the_IGO_3.0_ported_licenses.3F).
-- 
-- Soweit mitgeteilt, müssen Sie die Namen der Urhebers und Zuschreibungsempfänger, einen Rechtevermerk, einen Lizenzvermerk, einen Haftungsausschluss und einen Link zum Material angeben. Die Versionen der CC-Lizenzen vor Version 4.0 fordern außerdem, dass Sie den Titel des Materials angeben, sofern er Ihnen mitgeteilt wurde, und können auch andere geringfügige Abweichungen enthalten.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Detailed_attribution_comparison_chart).
-- 
-- Gemäß Version 4.0 müssen sie angeben, ob Sie das Material verändert haben, und müssen Angaben zu davor bereits vorgenommenen Änderungen bestehen lassen. Gemäß Version 3.0 und früherer Lizenzversionen ist die Angabe von Veränderungen nur dann verpflichtend, wenn Sie eine Abwandlung erstellen.
-- 
-- [Hinweise zur richtigen Kennzeichnung](https://wiki.creativecommons.org/Best_practices_for_attribution#This_is_a_good_attribution_for_material_you_modified_slightly).
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Modifications_and_adaptations_must_be_marked_as_such).
-- 
-- Sie können alternativ auch eine der unter [https://creativecommons.org/compatiblelicenses](../../../share-your-work/licensing-considerations/compatible-licenses.html) als kompatibel aufgelisteten Lizenzen verwenden
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/FAQ#If_I_derive_or_adapt_material_offered_under_a_Creative_Commons_license.2C_which_CC_license.28s.29_can_I_use.3F).
-- 
-- Kommerziell ist eine Nutzung dann, wenn sie in erster Linie auf kommerziell relevante Vorteile oder auf eine Vergütung abzielt.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#Does_my_use_violate_the_NonCommercial_clause_of_the_licenses.3F).
-- 
-- Bloße Veränderungen des Formats gelten für sich genommen nie als Bearbeitungen.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#When_is_my_use_considered_an_adaptation.3F).
-- 
-- Die Lizenz untersagt den Einsatz wirksamer technischer Schutzmaßnahmen, definiert mit Rückgriff auf Artikel 11 des WIPO Copyright Treaty.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Application_of_effective_technological_measures_by_users_of_CC-licensed_works_prohibited).
-- 
-- Freiheiten, die Nutzer gemäß Schranken und Ausnahmen des Urheberrechts haben, etwa Rechte des Fair Use oder das Zitatrecht, werden durch CC-Lizenzen nicht berührt.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#Do_Creative_Commons_licenses_affect_exceptions_and_limitations_to_copyright.2C_such_as_fair_dealing_and_fair_use.3F).
-- 
-- Für die von Ihnen gewünschte Nutzung des Materials kann es erforderlich sein, dass Sie weitere Erlaubnisse einholen.
-- 
-- [Weitere Informationen](https://wiki.creativecommons.org/Considerations_for_licensors_and_licensees).
-- 
