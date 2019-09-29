


local helpMessage = 
    'hello and wellcome to rustic roleplay!',
    'our discord: https://discord.gg/BHY84uj',
    'our teamspeak: rusticroleplay.teamspeak3.com',

local rulesMessage = 
    "No failRP",
    "No cop baiting",
    "No RDM",
    "No VDM" ,
    "No noclipping" ,


local helpPrefix = '^1'
local helpSuffix = '^1.'
local rulesPrefix = '^3'
local rulesSuffix = '^3.'


local helpCommand = "help"
local rulesCommand = "rules"

RegisterCommand(helpCommand, function()
    for i in pairs(helpMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, helpPrefix .. helpMessage[i] .. helpSuffix)
    end
end, false)

RegisterCommand(rulesCommand, function()
    for i in pairs(rulesMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, rulesPrefix .. rulesMessage[i] .. rulesSuffix)
    end
end, false)
TriggerEvent('chat:addSuggestion', '/' .. helpCommand, 'Displays a help message.')
TriggerEvent('chat:addSuggestion', '/' .. rulesCommand, 'Displays the server rules.')