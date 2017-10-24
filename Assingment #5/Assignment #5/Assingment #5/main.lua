-- Title: Assignment #5
-- Name: Benjamin Falsetto
-- Course: ICS2O/3C
-- This program lets the user click on and drag objects to different parts of the screen.

-- hide the status bar at the top of the screen
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeedChief = 3

scrollSpeedElite = -3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/dirt.jpg", 2048, 1536)

-- character image with width and height
local yellowMasterChief = display.newImageRect("Images/yellowMasterChief.png", 200, 200)

-- character image with the width and height
local eliteWithEnergySword = display.newImageRect("Images/eliteWithEnergySword.png", 200,200)

-- set the image to be transparent
yellowMasterChief.alpha = 0

-- set the image to be transparent
eliteWithEnergySword.alpha = 0

-- set the initial x and y position of yellow master chief
yellowMasterChief.x = 0
yellowMasterChief.y = display.contentHeight/3

-- set the initial x and y position of elite with energy sword
eliteWithEnergySword.x = display.contentHeight/2
eliteWithEnergySword.y = 500

-- Function: MoveChief
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of chief
local function MoveChief(event)
	-- add the scroll speed to the x-value of chief
	yellowMasterChief.x = yellowMasterChief.x + scrollSpeedChief
	-- change the transparency of chief every time it moves so that it fades out
	yellowMasterChief.alpha = yellowMasterChief.alpha + 0.01
end

-- MoveChief will be called at program start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveChief)

-- Function: MoveElite
-- Input: this function accepts an event listener
-- Output: none
-- Descriotion: This function adds the scroll speed to the x-value of the elite
local function MoveElite(event)
	-- add the scrool speed to the x-value of chief
	eliteWithEnergySword.x = eliteWithEnergySword.x + scrollSpeedElite
	--change the transparency of the elite every time it moves so that it fades out
	eliteWithEnergySword.alpha = eliteWithEnergySword.alpha + 0.01
end

--MoveElite will be called at a program to start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveElite)