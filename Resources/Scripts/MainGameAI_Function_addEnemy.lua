--------------------------------------------------------------------------------
--  Function......... : addEnemy
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.addEnemy ( tag, x, y, z, hp, str, dex, con, intel, wiz, cha, rolls, sides, exp, model )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
	local eName = scene.createRuntimeObject ( hScene, model )
    scene.setObjectTag ( hScene, eName, tag )
    if ( eName ~= nil ) then
        object.addAIModel ( eName, "EnemyAI" )
        object.setTranslation ( eName, x, y, z, object.kGlobalSpace )
        object.setRotation ( eName, 0, 0, 0, object.kGlobalSpace )
        
        --
        -- Setting eName Stats
        -- 
        object.setAIVariable ( eName, "EnemyAI", "battleHP", hp )
        object.setAIVariable ( eName, "EnemyAI", "bStr", str )
        object.setAIVariable ( eName, "EnemyAI", "bDex", dex )
        object.setAIVariable ( eName, "EnemyAI", "bCon", con )
        object.setAIVariable ( eName, "EnemyAI", "bInt", intel )
        object.setAIVariable ( eName, "EnemyAI", "bWiz", wiz )
        object.setAIVariable ( eName, "EnemyAI", "bCha", cha )
        object.setAIVariable ( eName, "EnemyAI", "bRolls", rolls )
        object.setAIVariable ( eName, "EnemyAI", "bSides", sides )
        object.setAIVariable ( eName, "EnemyAI", "EXP", exp )
    end
    
    return eName
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
