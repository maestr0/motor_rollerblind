-- file : config.lua
local module = {}

module.SSID = {}  
module.SSID["n00b"] = "myPasswordIsVerySecret!"

-- example for local MQTT

--module.MQHOST = "ohab.local"
--module.MQPORT = 1883
--module.MQID = node.chipid()
--module.MQUSR = ""
--module.MQPW = ""

-- example for cloud MQTT

module.MQHOST = "192.168.0.6"
module.MQPORT = 1883
module.MQID = node.chipid()
module.MQUSR = ""
module.MQPW = ""
module.step_ms = 1

module.MQTLS = 0 -- 0 = unsecured, 1 = TLS/SSL

module.ENDPOINT = "/house/masterbedroom/rollerblind/"
module.ID = "0"
--module.SUB = "set"
module.SUB = {[module.ENDPOINT .. module.ID .. "/set"]=0,[module.ENDPOINT .. "all"]=0}
module.POST = module.ENDPOINT .. module.ID .. "/status"
return module
 
