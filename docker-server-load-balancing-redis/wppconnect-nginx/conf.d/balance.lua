local hosts = {"172.20.0.2", --IP dos servidores wppconect
               "172.20.0.3",
               "172.20.0.4",
               "172.20.0.5",
               "172.20.0.6"
}

--[[local hosts = {"wppconnect-server-1",  --Arquivo lua não reconhece pelo nome
               "wppconnect-server-2",
               "wppconnect-server-3",
               "wppconnect-server-4",
               "wppconnect-server-5"
}
]]

local ports = {21465, --Portas dos servidores wppconect
               21465,
               21465,
               21465,
               21465
}

local balancer = require "ngx.balancer"
local host = hosts[tonumber(ngx.header['posicao'])]
local port = ports[tonumber(ngx.header['posicao'])]

local ok, err = balancer.set_current_peer(host, port)
if not ok then
    ngx.log(ngx.ERR, "falha ao tentar balancear a rota: ", err)
    return ngx.exit(501)
end