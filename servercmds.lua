------------------------
----[Made by Ryan W]----
------------------------






RegisterCommand("help", function(source, args, user)
    table.remove(args, 1)
    TriggerClientEvent('chatMessage', -1, "^5[Server]", {255, 0, 0}, "Discord: ")
    TriggerClientEvent('chatMessage', -1, "^5[Server]", {255, 0, 0}, "Website: ")
end)
RegisterCommand("search", function(source, args, user)
    table.remove(args, 1)
	TriggerClientEvent('chatMessage', -1, "^5Searches", {255, 0, 0}, "What do I find?")
end)
RegisterCommand("cctv", function(source, args, user)
    table.remove(args, 1)
	TriggerClientEvent('chatMessage', -1, "^5CCTV", {255, 0, 0}, "What do I see?")
end)
RegisterCommand("drugtest", function(source, args, user)
    table.remove(args, 1)
    result = math.random(1,100)
    if result > 40 then
        TriggerClientEvent('chatMessage', -1, "^5Drug Test", {255, 0, 0}, "Positive For Drugs", {255, 0, 0})
    elseif result < 10 then
        TriggerClientEvent('chatMessage', -1, "^5Drug Test", {255, 0, 0}, "Test Failed, Try Again!", {255, 0, 0})      
    else
        TriggerClientEvent('chatMessage', -1, "^5Drug Test", {0, 255, 0}, "Negative For Drugs", {0, 255, 0})
    end
end)
RegisterCommand("apply", function(source, args, user)
    table.remove(args, 1)
    TriggerClientEvent('chatMessage', -1, "Apply - Please go to the following links to apply.", {0,0,0})
    TriggerClientEvent('chatMessage', -1, "Website", {0,0,0}, "")
    TriggerClientEvent('chatMessage', -1, "Discord", {0,0,0}, "")
end)
RegisterCommand("searcharea", function(source, args, user)
    table.remove(args, 1)
    local searcharea = {"Nothing Found","Drugs Spotted","Odd Substance","Black Liquid","Stolen Weapon","Nothing","Meth Pipe","Unknown Object","Possible Drugs","Odd Knife"}
	TriggerClientEvent('chatMessage', -1, "^7Result:^1 ".. searcharea[math.random(#searcharea)])
end)
RegisterCommand("website", function(source, args, user)
    table.remove(args, 1)
    TriggerClientEvent('chatMessage', -1, "Website - This is the community website.", {0,0,0})
    TriggerClientEvent('chatMessage', -1, "Website", {0,0,0}, "")
end)
RegisterCommand("searchstolen", function(source, args, user)
    table.remove(args, 1)
    local stolens = {"Stolen","Unregistered","Not Stolen","Stolen","Not Stolen"}
    TriggerClientEvent('chatMessage', -1, "^7Result:^1 ".. stolens[math.random(#stolens)])
end)


function msg(text)
    TriggerEvent("chatMessage",  "[Server]", {255,0,0}, text)
end