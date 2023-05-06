--[=[
    DevMini Viet Nam
    Link: https://www.facebook.com/groups/313279116516482
    Author: Kỳ Kỳ
    Ý tưởng thuộc về Kỳ Kỳ
    Code không được mã hoá nhầm mục đích học tập
]=]--
function GameUpdate05062023()
    local t = os.time()
    local dateTable = os.date("*t", t)
    VarLib2:setGlobalVarByName(3,"gio",dateTable.hour)
    VarLib2:setGlobalVarByName(3,"phut",dateTable.min)
    VarLib2:setGlobalVarByName(3,"giay",dateTable.sec)
    VarLib2:setGlobalVarByName(3,"ngay",dateTable.day)
    VarLib2:setGlobalVarByName(3,"thang",dateTable.month)
    VarLib2:setGlobalVarByName(3,"nam",dateTable.year)
end
ScriptSupportEvent:registerEvent([=[Game.RunTime]=], GameUpdate05062023)
