_G.uitime={}
ScriptSupportEvent:registerEvent([=[UI.Button.TouchBegin]=], function(params)
    _G.uitime["p"..params.eventobjid]=os.time()
    print("Nhấn giữ")
end)

ScriptSupportEvent:registerEvent([=[UI.Button.Click]=], function(params)
    if _G.uitime["p"..params.eventobjid]==nil then
        _G.uitime["p"..params.eventobjid]=0
    end
    local delay=os.time()-_G.uitime["p"..params.eventobjid]
    if delay>0 then
        Chat:sendSystemMsg("Nhấn giữ trong: "..delay.." giây",params.eventobjid)
    end
    _G.uitime["p"..params.eventobjid]=0
    print("Thả")
end)



--[=[

params có các giá trị sau:

eventobjid : id người nhấn
CustomUI : UI
uielement : thành phần UI tương tác
...
]=]--