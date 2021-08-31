--ngx.log(ngx.WARN,'access_by_lua_block: '..ngx.var.request_uri.. ' :access_by_lua_block;')
local hosts, ports, redis_server, redis_port = dofile("/etc/nginx/conf.d/hosts.lua")
local total_server = #hosts --Quantidade de servidor wppconnect
local controle_load = "posicao/"

local t={}
for str in string.gmatch(ngx.var.request_uri, "([^".."/".."]+)") do
        table.insert(t, str)
end

if t[1] ~= 'api' then
    ngx.say(ngx.ERR, "falha ao tentar ler a URI")
    return ngx.exit(501)
end

local session = t[2]

local redis = require "resty.redis"
local red = redis:new()

local ok, err = red:connect(redis_server, redis_port)
if not (type(ok) == "string" or type(ok) == "number") then
    ngx.say("falha ao conectar ao banco redis: ", err)
    return ngx.exit(501)
end

local posicao, err = red:get(session)
if not (type(posicao) == "string" or type(posicao) == "number")  then
    local posicao_atual, err = red:get(controle_load)
    if not (type(posicao_atual) == "string" or type(posicao_atual) == "number")  then
       posicao_atual = 1
    else
        posicao_atual = posicao_atual + 1
        if posicao_atual > total_server then
            posicao_atual = 1
        end
    end

   local grava, err = red:set(controle_load, posicao_atual)
   if not (type(grava) == "string" or type(grava) == "number")  then
       ngx.say("falha ao gravar posicao do servidor: ", err)
       return ngx.exit(501)
   end

    local grava, err = red:set(session, posicao_atual)
    if not (type(grava) == "string" or type(grava) == "number")  then
        ngx.say("falha ao gravar a posicao da sessão: ", err)
        return ngx.exit(501)
    end
    ngx.header['posicao'] = posicao_atual
else
    ngx.header['posicao'] = posicao
end

if t[3] == 'close-session' then
    red:del(session) 
end