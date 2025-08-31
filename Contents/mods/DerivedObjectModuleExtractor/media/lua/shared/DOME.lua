local DOME = {}

DOME.BaseObject = {}

DOME.BaseObject.derive = ISBaseObject.derive

DOME.modules = {}

function ISBaseObject:derive(type)
    local module = DOME.BaseObject.derive(self, type)
    DOME.modules[type] = module
    return module
end

DOME.require = function(type)
    return DOME.modules[type]
end

return DOME