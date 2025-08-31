local DOME = {
    BaseObject = {},
    modules = {},
    derive = ISBaseObject.derive,
}

function ISBaseObject:derive(type)
    local module = DOME.derive(self, type)
    DOME.modules[type] = module
    return module
end

DOME.require = function(type)
    return DOME.modules[type]
end

return DOME