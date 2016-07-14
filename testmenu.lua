if SERVER then return end -- No more server side


--[[
 ____                       ___                 
/\  _`\                   /'___\ __             
\ \ \/\_\    ___     ___ /\ \__//\_\     __     
 \ \ \/_/_  / __`\ /' _ `\ \ ,__\/\ \  /'_ `\   
  \ \ \L\ \/\ \L\ \/\ \/\ \ \ \_/\ \ \/\ \L\ \  
   \ \____/\ \____/\ \_\ \_\ \_\  \ \_\ \____ \ 
    \/___/  \/___/  \/_/\/_/\/_/   \/_/\/___L\ \
                                         /\____/
                                         \_/__/ 
]]--

MenuFont = "Roboto Lt" --Changes the whole font of the menu
LowEndMode = false -- For terrible PC's that cant draw allot of stuff

--End Of Config

--  DONT EDIT BELOW HERE!!!!!!
OpenDelay = nil
IsOpen = nil

surface.CreateFont( "TitleFont", {
	font = MenuFont,
	size = 40,
	weight = 10,
	antialias = true,
} )

surface.CreateFont( "CloseButFont", {
	font = MenuFont,
	size = 20,
	weight = 10,
	antialias = true,
} )

surface.CreateFont( "ButFont", {
	font = MenuFont,
	size = 30,
	weight = 10,
	antialias = true,
} )

local function OpenThaMenu() -- this is the function used to open the menu!
local Frame = vgui.Create( "DFrame" )
Frame:SetSize( 400, 600)
Frame:SetTitle( "" )
Frame:SetDraggable( true )
Frame:SetSizable( false )
Frame:ShowCloseButton( true )
Frame:MakePopup()
Frame:SetPos( 100, 100 )
Frame.Paint = function()
draw.RoundedBox(0,0,0, Frame:GetWide()-0, Frame:GetTall()-0, Color(255,255,255))
draw.DrawText( "Test VGUI", "TitleFont", Frame:GetWide()/2, Frame:GetTall()/Frame:GetWide(), Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
draw.RoundedBox(0,0,85, Frame:GetWide()-0, 1, Color(0,0,0))
end

local MainFrame = vgui.Create( "DPanel", Frame )
MainFrame:SetSize( Frame:GetWide()-0, Frame:GetTall()-120 )
MainFrame:Center()
MainFrame.Paint = function()
draw.RoundedBox(0,0,0, Frame:GetWide()-0, Frame:GetTall()-0, Color(255,0,0,0))
end


local close = vgui.Create("DButton", Frame)
close:SetPos(Frame:GetWide(), Frame:GetTall()-500)
close:SetSize(40,30)
close:SetText("")
close.Paint = function()
draw.RoundedBox(0,0,0, close:GetWide()-45, close:GetTall()-30, Color(255,0,0))
draw.DrawText( "X", "CloseButFont", close:GetWide()/2, close:GetTall()/close:GetWide()+5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end
close.DoClick = function() Frame:Close() IsOpen = false end


local main = vgui.Create( "DButton", Frame )
main:SetPos( 0, 35 )
main:SetText( "" )
main:SetSize( 120, 60 )
main.Paint = function()
draw.RoundedBox(0,0,0, main:GetWide()-0, main:GetTall()-0, Color(255,255,255,0))
draw.DrawText( "Main", "ButFont", main:GetWide()/2, main:GetTall()/main:GetWide()+20, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
end
main.DoClick = function()
	surface.PlaySound("UI/buttonclick.wav")
	MainFrame:Clear()
end

local main2 = vgui.Create( "DButton", Frame )
main2:SetPos( 90, 35 )
main2:SetText( "" )
main2:SetSize( 120, 60 )
main2.Paint = function()
draw.RoundedBox(0,0,0, main:GetWide()-0, main:GetTall()-0, Color(255,255,255,0))
draw.DrawText( "main2", "ButFont", main2:GetWide()/2, main2:GetTall()/main2:GetWide()+20, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
end
main2.DoClick = function()
	surface.PlaySound("UI/buttonclick.wav")
	MainFrame:Clear()
end

local main3 = vgui.Create( "DButton", Frame )
main3:SetPos( 200, 35 )
main3:SetText( "" )
main3:SetSize( 120, 60 )
main3.Paint = function()
draw.RoundedBox(0,0,0, main3:GetWide()-0, main3:GetTall()-0, Color(255,255,255,0))
draw.DrawText( "main3", "ButFont", main3:GetWide()/2, main3:GetTall()/main3:GetWide()+20, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
end
main3.DoClick = function()
	surface.PlaySound("UI/buttonclick.wav")
	MainFrame:Clear()
end

local main4 = vgui.Create( "DButton", Frame )
main4:SetPos( 300, 35 )
main4:SetText( "" )
main4:SetSize( 120, 60 )
main4.Paint = function()
draw.RoundedBox(0,0,0, main4:GetWide()-0, main4:GetTall()-0, Color(255,255,255,0))
draw.DrawText( "main4", "ButFont", main4:GetWide()/2, main4:GetTall()/main4:GetWide()+20, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
end
main4.DoClick = function()
	surface.PlaySound("UI/buttonclick.wav")
	MainFrame:Clear()
end





end

hook.Add("Think","aye",function()
if input.IsKeyDown(KEY_INSERT) && !OpenDelay then
	OpenDelay = true
	OpenThaMenu()
	IsOpen = true

	timer.Simple(3,function() OpenDelay = false end)
end
end)



