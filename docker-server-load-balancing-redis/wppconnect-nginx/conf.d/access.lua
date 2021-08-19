ngx.log(ngx.WARN,'access_by_lua_block: '..ngx.var.request_uri.. ' :access_by_lua_block;')

local t={}
for str in string.gmatch(ngx.var.request_uri, "([^".."/".."]+)") do
        table.insert(t, str)
end
local session = t[2]

local redis = require "resty.redis"
local red = redis:new()

local ok, err = red:connect("172.20.0.7", 6379)
if ok ~= 1 then
    ngx.say("failed to connect: ", err)
    return
end

local posicao, err = red:get(session)
if not (type(posicao) == "string" or type(posicao) == "number")  then
    local novaposicao = math.random( 0, 4 ) --Quantidade de servidor wppconnect
    local grava, err = red:set(session, novaposicao)
    if not (type(grava) == "string" or type(grava) == "number")  then
        ngx.say("failed to set session: ", err)
        return
    end
    ngx.header['posicao'] = novaposicao
else
    ngx.header['posicao'] = posicao
end