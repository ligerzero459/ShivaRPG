--------------------------------------------------------------------------------
--  Handler.......... : onAttacked
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.onAttacked ( hDamage )
--------------------------------------------------------------------------------
    
    local newHP = hashtable.get ( this.statsTable ( ), "CHP" ) - math.roundToNearestInteger ( hDamage )
    hashtable.set ( this.statsTable ( ), "CHP", newHP )
    
    if newHP < 0 then
        newHP = 0
    end
    
    log.message ( "HP Remaining: " .. math.roundToNearestInteger ( newHP ) )
    
    this.bHP ( newHP )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
