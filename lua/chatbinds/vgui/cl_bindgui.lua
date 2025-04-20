local function OpenBindGui()

    local frame = vgui.Create("DFrame")
    frame:SetSize(400, 550)
    frame:SetTitle("")
    frame:Center()
    frame:MakePopup()
    frame:SetDraggable(false)
    frame:ShowCloseButton(true)

    frame.Paint = function(self, w, h)
        surface.SetDrawColor(0, 0, 0, 255)
        surface.DrawRect(0, 0, w, h)

        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawOutlinedRect(5, 5, w -10, h -10, 3)

        surface.SetTextColor(255, 255, 255, 255)
        surface.SetFont("Binds1")
        local textw, texth = surface.GetTextSize("Chatbinds")
        surface.SetTextPos(w / 2 - textw / 2, 5)
        surface.DrawText("Chatbinds")
    end

    local closebutton = vgui.Create("DButton", frame)
    closebutton:SetSize(200, 40)
    closebutton:SetPos(100, 450)
    closebutton:SetText("")

    closebutton.Paint = function(self, w, h)
        --surface.SetDrawColor(0, 0, 0, 255)
        --surface.DrawRect(0, 0, w, h)

        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawOutlinedRect(0, 0, w, h, 2)

        surface.SetTextColor(255, 255, 255, 255)
        surface.SetFont("Binds1")
        local textw, texth = surface.GetTextSize("Verlassen")
        surface.SetTextPos(w / 2 - textw / 2, 0)
        surface.DrawText("Verlassen")

    end

end

concommand.Add("chatbinds", function(ply)
    OpenBindGui()
end)