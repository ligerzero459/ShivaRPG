--------------------------------------------------------------------------------
--  Function......... : executeAttack
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.executeAttack ( )
--------------------------------------------------------------------------------
	
	-- Grab target arrow
    local hTargetArrow = application.getCurrentUserSceneTaggedObject ( 'TargetArrow' )
    local currentTarget = object.getAIVariable ( hTargetArrow, "TargetAI", "currentTarget" )
    -- Create the tag to reference the true target
    local targetTag = 'Enemy'..math.roundToNearestInteger ( currentTarget )
    -- Grab the current target
    local hTarget = application.getCurrentUserSceneTaggedObject ( targetTag )
    
    
    -- Str stat
    local attackStrength = hashtable.get( this.statsTable ( ), "Str" )
    -- calculatons to calculate strengthModifier on the next line
    local strengthModifier = 0
    
    -- Dice roll + modifier to determine damage
    local damage = this.diceRoll ( 2, 10 ) + strengthModifier
    
    -- hitPercentage
    -- Can be modified to take Dex into account
    local hitPercentage = math.roundToNearestInteger ( math.random ( 0, 100 ) )
    
    if ( hitPercentage > 50 ) then
        object.sendEventImmediate ( hTarget, "EnemyAI", "onAttacked", damage, targetTag )
        log.message ( "Successful attack!" )
    else
        log.message ( "You missed!" )
    end
    
    hashtable.set ( this.statsTable ( ), "AttackTime", system.getTimeOfDay ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
