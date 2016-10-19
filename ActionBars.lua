CreateFrame("frame","HidingBlizz")
HidingBlizz:Hide()
HidingBlizz:UnregisterAllEvents()
HidingBlizz:EnableMouse(false)
MainMenuBar:UnregisterAllEvents()
MainMenuBar:SetParent("HidingBlizz")
StanceBarFrame:SetParent("HidingBlizz")
ArtifactWatchBar:SetParent("HidingBlizz")
HonorWatchBar:SetParent("HidingBlizz")
CreateFrame("Frame", "Solar01", UIParent, "SecureHandlerStateTemplate")
Solar01:Show()
Solar01:SetWidth(408)
Solar01:SetHeight(110)
Solar01:SetPoint("BOTTOM")
Solar01:RegisterEvent("ACTIONBAR_SLOT_CHANGED","PLAYER_STARTED_MOVING")
local function eventHandler(self, event, ...)
 for i = 1,36 do
_G["SolarButton" ..i.. "Border"]:SetParent(HidingBlizz)
_G["SolarButton" ..i.. "NormalTexture"]:Hide()
_G["SolarButton" ..i.. "Name"]:Hide()
_G["SolarButton" ..i.. "HotKey"]:Hide()
_G["SolarButton" ..i]:SetBackdropBorderColor(0, 0, 0,0) 
_G["SolarButton" ..i]:SetBackdropColor(0, 0, 0,0) 
_G["SolarButton" ..i]:SetAlpha(0.5)
end
end

Solar01:SetScript("OnEvent", eventHandler);
Solar01:SetBackdrop( { 
  bgFile = "Interface\\BUTTONS\\UI-SliderBar-Background.blp", 
  edgeFile = nil, tile = true, tileSize = 100, edgeSize = 0, 
  insets = { left = 0, right = 0, top = 0, bottom = 0 }
});
local t = Solar01:CreateTexture(nil,"BACKGROUND")
for i = 1,12 do
local b = CreateFrame("CheckButton","SolarButton" ..i,Solar01,"ActionBarButtonTemplate")
b:SetAttribute("type","action")
b:SetAttribute("action",i)
b:SetPoint("BOTTOMLEFT", 34*i-34,0)
end
for i = 13,24 do
local b = CreateFrame("CheckButton","SolarButton" ..i,Solar01,"ActionBarButtonTemplate")
b:SetAttribute("type","action")
b:SetAttribute("action",i)
b:SetPoint("TOPLEFT", 34*i-442,0)
end
for i = 25,36 do
local b = CreateFrame("CheckButton","SolarButton" ..i,Solar01,"ActionBarButtonTemplate")
b:SetAttribute("type","action")
b:SetAttribute("action",i)
b:SetPoint("LEFT", 34*i-850,0)
end

for i = 1,36 do
_G["SolarButton" ..i.. "NormalTexture"]:Hide()
_G["SolarButton" ..i.. "Border"]:SetParent(HidingBlizz)
_G["SolarButton" ..i.. "Name"]:Hide()
_G["SolarButton" ..i.. "HotKey"]:Hide()
_G["SolarButton" ..i]:SetBackdropBorderColor(1, 0, 0,1) 
_G["SolarButton" ..i]:SetBackdropColor(0, 0, 0,0) 
_G["SolarButton" ..i]:SetAlpha(0.5)
end