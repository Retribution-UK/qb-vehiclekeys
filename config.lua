Config = {}

-- NPC Vehicle Lock States
Config.LockNPCDrivingCars = false -- Lock state for NPC cars being driven by NPCs [true = locked, false = unlocked]
Config.LockNPCParkedCars = true -- Lock state for NPC parked cars [true = locked, false = unlocked]

-- Lockpick Settings
Config.RemoveLockpickNormal = 0.5 -- Chance to remove lockpick on fail
Config.RemoveLockpickAdvanced = 0.2 -- Chance to remove advanced lockpick on fail
Config.LockPickDoorEvent = function() -- This function is called when a player attempts to lock pick a vehicle
    --TriggerEvent('qb-lockpick:client:openLockpick', LockpickFinishCallback)
    exports['qb-lock']:StartLockPickCircle(1, 10, success)
--[[     local time = math.random(7,10) 
    local circles = math.random(2,4) 
    local success = exports['qb-lock']:StartLockPickCircle(circles, time, success) 
    print(success) 
    if success then 
        print("WIN") 
    else 
        print("FAIL") 
    end ]]
end 

-- Carjack Settings
Config.CarJackEnable = true -- True allows for the ability to car jack peds.
Config.CarjackingTime = 7500 -- How long it takes to carjack
Config.DelayBetweenCarjackings = 10000 -- Time before you can carjack again
Config.CarjackChance = {
    --['2685387236'] = 0.0, -- melee
    ['416676503'] = 0.5, -- handguns
    ['-957766203'] = 0.75, -- SMG
    ['860033945'] = 0.90, -- shotgun
    ['970310034'] = 0.90, -- assault
    ['1159398588'] = 0.99, -- LMG
    ['3082541095'] = 0.99, -- sniper
    ['2725924767'] = 0.99, -- heavy
    ['1548507267'] = 0.0, -- throwable
    ['4257178988'] = 0.0, -- misc
}

-- Hotwire Settings
Config.HotwireChance = 0.5 -- Chance for successful hotwire or not
Config.TimeBetweenHotwires = 5000 -- Time in ms between hotwire attempts
Config.minHotwireTime = 20000 -- Minimum hotwire time in ms
Config.maxHotwireTime = 40000 --  Maximum hotwire time in ms

-- Police Alert Settings
Config.AlertCooldown = 10000 -- 10 seconds
Config.PoliceAlertChance = 0.95 -- Chance of alerting police during the day
Config.PoliceNightAlertChance = 0.70 -- Chance of alerting police at night (times:01-06)

-- Job Settings
Config.SharedKeys = { -- Share keys amongst employees. Employees can lock/unlock any job-listed vehicle
    ['police'] = { -- Job name
        requireOnduty = false,
        vehicles = {
        'polc8', -- Vehicle model
        'polgo5', -- Vehicle model
	    'police', -- Vehicle model
	    'police2', -- Vehicle model
	    'police3', -- Vehicle model
	    'police4', -- Vehicle model
	    'police5', -- Vehicle model
	    'police6', -- Vehicle model
	    'policefocus', -- Vehicle model
	    'polmav', -- Vehicle model
	    'fbi', -- Vehicle model
	    'fbi3', -- Vehicle model
	    'fbi4', -- Vehicle model
	    'sheriff', -- Vehicle model
	    'sheriff2', -- Vehicle model
	}
    },

    ['mechanic'] = {
        requireOnduty = false,
        vehicles = {
            'towtruck',
	}
    },

    ['tow'] = {
        requireOnduty = false,
        vehicles = {
            'tow',
	}
    }
}

-- These vehicles cannot be jacked
Config.ImmuneVehicles = {
    'stockade',
    'LAZER', -- They spawn on Zancudo and try to take off
    'TITAN', -- They spawn on Zancudo and try to take off
    'BARRACKS', -- Regularily driving around the Zancudo airport surface
    'BARRACKS2', -- Regularily driving around the Zancudo airport surface
    'CRUSADER', -- Regularily driving around the Zancudo airport surface
    'RHINO', -- Regularily driving around the Zancudo airport surface
    'AIRTUG', -- Regularily spawns on the LSIA airport surface
    'RIPLEY', -- Regularily spawns on the LSIA airport surface
    'longfin',
    'dinghy',
    'dinghy2',
    'dinghy3',
    'dinghy4',
    'dinghy5',
    'tug',
    'toro',
    'toro2',
    'submersible',
    'submersible2',
    'patrolboat',
    'avisa',
    'kosatka',
    'speeder',
    'speeder2',
    'seashark2',
    'seashark3',
    'seashark4',
    'seashark5',
    'tropic',
    'tropic2',
    'suntrap',
    'squalo',
    'predator',
    'jetmax',
    'marquis',
    'blazer2',
    'lguard',
    'ambulance',
    'polmav',
    'firetruk',
    'frogger',
    'buzzard'
}

-- These vehicles will never lock
Config.NoLockVehicles = {}

-- These weapons cannot be used for carjacking
Config.NoCarjackWeapons = {
    "WEAPON_UNARMED",
    "WEAPON_Knife",
    "WEAPON_Nightstick",
    "WEAPON_HAMMER",
    "WEAPON_Bat",
    "WEAPON_Crowbar",
    "WEAPON_Golfclub",
    "WEAPON_Bottle",
    "WEAPON_Dagger",
    "WEAPON_Hatchet",
    "WEAPON_KnuckleDuster",
    "WEAPON_Machete",
    "WEAPON_Flashlight",
    "WEAPON_SwitchBlade",
    "WEAPON_Poolcue",
    "WEAPON_Wrench",
    "WEAPON_Battleaxe",
    "WEAPON_Grenade",
    "WEAPON_StickyBomb",
    "WEAPON_ProximityMine",
    "WEAPON_BZGas",
    "WEAPON_Molotov",
    "WEAPON_FireExtinguisher",
    "WEAPON_PetrolCan",
    "WEAPON_Flare",
    "WEAPON_Ball",
    "WEAPON_Snowball",
    "WEAPON_SmokeGrenade",
}
