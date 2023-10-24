-- v1.0.7

-- This script contains three frames that handle different events:
-- 1. Frame A plays a sound when the player levels up.
-- 2. Frame B mutes the default level up sound.
-- 3. Frame C displays a chat message when the player logs in.

-- Frame for playing sound on player level up
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\KH3LU\\KH3LU.ogg", "Master")
end)

-- Frame for muting default level up sound
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Frame for displaying chat message on player login
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|c04b2c8ffKH3LU - Kingdom Hearts 3 Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
