--//
--// Clear all skills and xp
--// Author: Colin J.D. Stewart | Updated: 15.08.2022
--// 
local function clearSkills(player)
	local pl = PerkFactory.PerkList;
	local xp = player:getXp();
	
	for i = 0, pl:size()-1 do
		local pk = pl:get(i):getType();		
		
		player:level0(pk);	--// Thanks Hugo Qwerty		
		xp:setXPToLevel(pk, player:getPerkLevel(pk));
		
		--//Thanks Tchernobill
		xp:setPerkBoost(pk, 0);
		xp:getMultiplierMap():remove(pk);
	end;
end;
