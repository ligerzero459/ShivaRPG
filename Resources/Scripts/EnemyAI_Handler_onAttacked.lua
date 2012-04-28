--------------------------------------------------------------------------------
--  Handler.......... : onAttacked
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.onAttacked ( hDamage, tag )
--------------------------------------------------------------------------------
	
	this.battleHP ( this.battleHP ( ) - hDamage )
    
    if ( this.battleHP ( ) <= 0 ) then
        local hScene = application.getCurrentUserScene ( )
        local hUser = application.getCurrentUser ( )
        scene.destroyRuntimeObject ( hScene, this.hEnemy ( ) )
        user.sendEvent ( hUser, "MainGameAI", "onEnemyDefeat", tag, this.EXP ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
