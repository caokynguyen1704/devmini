function getGiftCode(uid,name)
    local result,data = Valuegroup:getAllGroupItem(21, name, uid)
    if result==0 then 
        return data
    end
    return {}
end

ScriptSupportEvent:registerEvent([=[Game.Run]=],function(p)
    local result,num,array=World:getAllPlayers(-1)
    for i,uid in ipairs(array) do
    	local result,data = VarLib2:getPlayerVarByName(uid,4,"nhapcode")
        if #data>0 then
            local i=1
            local rs=0
            while rs==0 do 
                rs,namecode=VarLib2:getPlayerVarByName(uid,4,"giftcode"..i)
                if namecode==data then 
                    local items=getGiftCode(uid,"vp"..i)
                    for _,iditem in ipairs(items) do
                        Player:gainItems(uid,iditem,1,1)
                    end
                    VarLib2:setPlayerVarByName(uid,4,"giftcode"..i,"")
                    break
                end
                i=i+1
            end
            VarLib2:setPlayerVarByName(uid,4,"nhapcode","")
        end
    end
end)