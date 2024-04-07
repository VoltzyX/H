local token = "Kwam92ymdpY2jdpV"

local KeyArgs = ...
local KeyArgs2 = KeyArgs[1]

local requestf = request or (syn and syn.request) or http_request or HttpRequest

local Body = requestf({Url = "https://httpbin.org/get", Method = "GET"}).Body
local decoded = game:GetService("HttpService"):JSONDecode(Body)
local HWID
for key, value in pairs(decoded.headers) do
    if
        string.find(key, "Fingerprint") or string.find(key, "UserAgent") or string.find(key, "User-Agent") or
            string.find(key, "Hwid")
     then
        HWID = value
        break
    end
end

local Lotto432 =
    requestf(
    {
    Url = "https://lwmq9j2lfq.000webhostapp.com/PQMF0j3042n.php",
    Method = "POST",
    Headers = {
    ["HTTP_TOKEN"] = token,
    ["HTTP_KEY"] = wmieeall2,
    ["HTTP_HWID"] = HWID
      },
    }
).Body

if Lotto432 == "Owsp10dmO!" and Lotto432 ~= "Invalid HWID!" and Lotto432 ~= "Invalid Key!" and Lotto432 ~= "OwmP1tr0khr!" then
    rconsoleprint("skibidi")
elseif Lotto432 == "Invalid HWID!" then
    game.Players.LocalPlayer:kick("HWID NOT FOUND\nไม่พบHWID")
    while true do end
    game:Shutdown()
elseif Lotto432 == "Invalid Key!" then
    game.Players.LocalPlayer:kick("KEY NOT FOUND\nไม่พบเจอKey")
    while true do end
    game:Shutdown()
elseif Lotto432 == "OwmP1tr0khr!" then
    game.Players.LocalPlayer:kick("GET THE FUCK OUT FROM THE GAME\nออกเกมไปซะมึง")
    while true do end
    game:Shutdown()
else
    game.Players.LocalPlayer:kick("GET THE FUCK OUT FROM THE GAME\nออกเกมไปซะมึง")
    while true do end
    game:Shutdown()
end
