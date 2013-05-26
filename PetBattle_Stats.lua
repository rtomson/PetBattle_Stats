--===========================================================================--
-- Addon Initialization
--===========================================================================--

local addonName, addon = ...
local L = addon.L

local _G = _G
local C_PetJournal = C_PetJournal
local PetJournal = PetJournal

local MAX_ACTIVE_PETS = 3
local MAX_ACTIVE_ABILITIES = 3
local MAX_PET_ABILITIES = 6

-- Localization
PETBATTLE_STATS = L["PETBATTLE_STATS"]

-- DB settings
PetBattleStatsDB = {}
local DB = PetBattleStatsDB

--------------------------------------------------
-- Debug
--------------------------------------------------
local function Log(...)
    if DB and DB.debug then
        DEFAULT_CHAT_FRAME:AddMessage("|cffff7d0aDebug:|r "..tostring(...))
    end
end

