local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local KeyLink = "https://pastebin.com/raw/7xcGe2Kk" -- Link where users can get keys
local DiscordInvite = "YourDiscordInviteCode" -- Put your Discord invite code here (without discord.gg/)

local Window = Rayfield:CreateWindow({
    Name = "RAFSUN BOSS",
    LoadingTitle = "WELCOME TO FREEDOM",
    LoadingSubtitle = "by BOSS",
    ShowText = "SORRY -01",
    Theme = "Default",
    ToggleUIKeybind = Enum.KeyCode.K,
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },

    Discord = {
        Enabled = true, -- We’ll add a custom Discord button manually below, so keep this false
        Invite = DiscordInvite,
        RememberJoins = true
    },

    KeySystem = true,  -- Enable key system
    KeySettings = {
        Title = "FREE TO GET KEY",
        Subtitle = "Key System",
        Note = "If you don't have a key, press the button below to get one",
        FileName = "FOR FREE",
        SaveKey = true,
        GrabKeyFromSite = true, -- Get keys from the pastebin raw link
        Key = KeyLink -- Your raw link containing the keys, e.g. "https://pastebin.com/raw/7xcGe2Kk"
    }
})



-- Optional: Load config on start
Rayfield:LoadConfiguration("Big Hub")
