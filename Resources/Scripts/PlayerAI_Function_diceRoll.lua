--------------------------------------------------------------------------------
--  Function......... : diceRoll
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.diceRoll ( rolls, sides )
--------------------------------------------------------------------------------
	
	local roll = 0
    
    for i = 1, rolls, 1 do
        roll = roll + math.roundToNearestInteger ( math.random ( 1, sides ) )
    end
    
    return roll
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
