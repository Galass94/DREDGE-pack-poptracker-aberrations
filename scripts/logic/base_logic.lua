
-- this is the file to put all your custom logic functions into.
-- if you dont want to use the json based logic you can switch to a graph-based logic method.
-- the needed functions for that are in `/scripts/logic/graph_logic/logic_main.lua`.

-- COASTAL

-- ^$CoastalRods
function CoastalRods()
    return AccessibilityLevel.Normal
    --return ANY("startinggear-basicfishingpole", "flexiblefishingpole", "flexiblefishingpoleresearched", "versatilerod", "harvestingplatform", "sinewspindle", InfusedCoastalRods())
end

-- ^$InfusedCoastalRods
function InfusedCoastalRods()
    return ANY("infusedrod", "infusedwinch", "infusedcoilingrod")
end

-- ^$CoastalNets
function CoastalNets()
    return ANY("basictrawlnet", "improvedtrawlnet", "improvedtrawlnetresearched", "temperedmeshnet", "largetrawlnet", "largetrawlnetresearched", "heavy-dutytrawlnet", "radianttrawlnet")
end

-- //------------------------------------------------//
-- SHALLOW

-- ^$ShallowRods
function ShallowRods()
    return ANY("simpleskimmer", "weightedline", "flexiblefishingpole", "flexiblefishingpoleresearched", "heat-resistantline", "heat-resistantlineresearched", "versatilerod", "versatilerodresearched", "harvestingplatform", "sinewspindle", "tendonrod", InfusedShallowRods())
end

-- ^$InfusedShallowRods
function InfusedShallowRods()
    return ANY("infusedrod", "infusedwinch", "infusedfireproofrod")
end

-- ^$ShallowNets
function ShallowNets()
    return ANY("basictrawlnet", "SiltfilteringTrawlnet", "largetrawlnet", "largetrawlnetresearched", "radianttrawlnet")
end

-- //------------------------------------------------//
-- OCEANIC

-- ^$OceanicRods
function OceanicRods()
    return ANY("Hydraulicrod", "Hydraulicrodresearched", "harvestingplatform", "fathomlesswinch", "tendonrod", "glaciallance", InfusedOceanicRods())
end

-- ^$InfusedOceanicRods
function InfusedOceanicRods()
    return ANY("infusedwinch", "infusedhoist")
end

-- ^$OceanicNets
function OceanicNets()
    return ANY("heavy-dutytrawlnet", "radianttrawlnet")
end

-- //------------------------------------------------//
-- ABYSSAL

-- ^$AbyssalRods
function AbyssalRods()
    return ANY("bottomlesslines", "bottomlesslinesresearched", "fathomlesswinch", "samplingdevice", "visceracrane", InfusedAbyssalOrHadalRods())
end

-- ^$InfusedAbyssalOrHadalRods
--function InfusedAbyssalOrHadalRods()
--    return HAS("infusedhoist")
--end

-- ABYSSAL NET does not exist
--function AbyssalNets()
--    return ANY("heavy-dutytrawlnet")
--end

-- //------------------------------------------------//
-- HADAL

-- ^$HadalRods
function HadalRods()
    return ANY("bottomlesslines", "bottomlesslinesresearched", "fathomlesswinch", "visceracrane", InfusedAbyssalOrHadalRods())
end

-- ^$InfusedAbyssalOrHadalRods
function InfusedAbyssalOrHadalRods()
    return HAS("infusedhoist")
end

-- HADAL NET does not exist
--function HadalNets()
--    return ANY("heavy-dutytrawlnet")
--end

-- //------------------------------------------------//
-- MANGROVE

-- ^$MangroveRods
function MangroveRods()
    return ANY("anti-tangleline", "anti-tanglelineresearched", "versatilerod", "versatilerodresearched", "tendonrod", InfusedMangroveRods())
end

-- ^$InfusedMangroveRods
function InfusedMangroveRods()
    return HAS("infusedcoilingrod")
end

-- ^$MangroveNets
function MangroveNets()
    return HAS("SiltfilteringTrawlnet")
end

-- //------------------------------------------------//
-- VOLCANIC

-- ^$VolcanicRods
function VolcanicRods()
    return ANY("heat-resistantline", "heat-resistantlineresearched", "versatilerod", "versatilerodresearched", InfusedVolcanicRods())
end

-- ^$InfusedVolcanicRods
function InfusedVolcanicRods()
    return HAS("infusedfireproofrod")
end

-- ^$VolcanicNets
function VolcanicNets()
    return HAS("temperedmeshnet")
end

-- //------------------------------------------------//
-- ICE

-- ^$IceRods
function IceRods()
    return ANY("barbedicerod", "glaciallance")--, InfusedIceRods())
end

-- INFUSED ICE RODS does not exist
--function InfusedIceRods()
--    return HAS("infusedfireproofrod")
--end

-- ^$IceNets
function IceNets()
    return ANY("brittletrawlnet", "radianttrawlnet")
end

-- //------------------------------------------------//
-- MISC

-- ^$HasPackedExplosives
function HasPackedExplosives()
    return HAS("packedexplosives")
end

-- ^$HasIceBreaker
function HasIceBreaker()
    return ANY("Icebreaker", ALL("Icebreakerplowhalf1", "Icebreakerplowhalf2", "Icebreakerbracing"))
end

-- //------------------------------------------------//
-- Randomizer Settings

-- ^$AberrationsRandomized
function AberrationsRandomized()
    return HAS("aberrations")
end

-- //------------------------------------------------//
-- DLC

--"visibility_rules":[
--    "$XXDLC"
--],

-- $PaleReachDLC
function PaleReachDLC()
    return HAS("palereachDLC")
end

-- $IronRigDLC
function IronRigDLC()
    return HAS("ironrigDLC")
end

-- //------------------------------------------------//
-- Progression IronRig

-- $IronRigPhase1
function IronRigPhase1() -- The Marrows
    return ALL("ironrigDLCphase1", IronRigDLC())
end

-- $IronRigPhase2
function IronRigPhase2() -- Gale Cliffs
    return ALL("ironrigDLCphase2", IronRigDLC())
end

-- $IronRigPhase3
function IronRigPhase3() -- Stellar Basin
    return ALL("ironrigDLCphase3", IronRigDLC())
end

-- $IronRigPhase4
function IronRigPhase4() -- Twisted Strand
    return ALL("ironrigDLCphase4", IronRigDLC())
end

-- $IronRigPhase5
function IronRigPhase5() -- Devils Spine
    return ALL("ironrigDLCphase5", IronRigDLC())
end

-- function <name> (<parameters if needed>)
--     <actual code>
--     <indentations are just for readability>
-- end
--
                