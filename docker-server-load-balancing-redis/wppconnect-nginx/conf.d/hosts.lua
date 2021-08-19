local hosts = {"172.20.0.2", --IP dos servidores wppconect
               "172.20.0.3",
               "172.20.0.4",
               "172.20.0.5",
               "172.20.0.6"
}

local  ports = {21465, --Portas dos servidores wppconect
                21465,
                21465,
                21465,
                21465
}

local redis_server = "172.20.0.7"
local redis_port = 6379

return hosts, ports, redis_server, redis_port