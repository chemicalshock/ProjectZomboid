--//
--// Clear all skills and xp
--// Author: Colin J.D. Stewart | Updated: 14.08.2022
--// 
local function clearSkills(player)
	local pl = PerkFactory.PerkList;
	local xp = player:getXp();
	
	for i = 0, pl:size()-1 do
		local info = pl:get(i);
		local pk = info:getType();		
		local curLevel = player:getPerkLevel(pk);
		
		if curLevel > 0 then
			player:level0(pk);
		end;
		
		xp:setXPToLevel(pk, player:getPerkLevel(pk));
	end;
end;
