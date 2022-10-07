local _M = {}

local ffi = require("ffi")
ffi.cdef[[
int printf(const char *fmt, ...);
]]

function _M.greet(name)
        ngx.say("Greetings from ", name)
end

function _M.say()
        ffi.C.printf("Hello %s!\n", "world")
end

return _M
