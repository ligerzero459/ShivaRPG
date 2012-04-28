--------------------------------------------------------------------------------
--  State............ : Battle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.Battle_onLoop ( )
--------------------------------------------------------------------------------
	
    local currentTime = system.getTimeOfDay ( )
    local hScene = application.getCurrentUserScene ( )
    
	if ( currentTime - this.bAttackTime ( ) > 10 ) then
        local randomNum = math.random ( 0, 1000 )
        if (randomNum >= 54 and randomNum <= 57) then
            log.message ( scene.getObjectTag ( hScene, this.hEnemy ( ) ).." attacking!" )
            this.executeAttack ( )
            this.bAttackTime ( system.getTimeOfDay ( ) )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
