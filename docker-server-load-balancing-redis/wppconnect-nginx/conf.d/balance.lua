local hosts, ports = dofile("/etc/nginx/conf.d/hosts.lua")

local balancer = require "ngx.balancer"
local host = hosts[tonumber(ngx.header['posicao'])]
local port = ports[tonumber(ngx.header['posicao'])]

local ok, err = balancer.set_current_peer(host, port)
if not ok then
    ngx.log(ngx.ERR, "falha ao tentar balancear a rota: ", err)
    return ngx.exit(501)
end