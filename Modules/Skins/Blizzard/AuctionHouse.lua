local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule("Skins")

local _G = _G
local pairs = pairs

function S:Blizzard_AuctionHouseUI()
    if not self:CheckDB("auctionhouse", "auctionHouse") then
        return
    end

    self:CreateShadow(_G.AuctionHouseFrame)

    local tabs = {_G.AuctionHouseFrameBuyTab, _G.AuctionHouseFrameSellTab, _G.AuctionHouseFrameAuctionsTab}
    for _, tab in pairs(tabs) do
        if tab then
            self:CreateBackdropShadowAfterElvUISkins(tab)
        end
    end
end

S:AddCallbackForAddon("Blizzard_AuctionHouseUI")
