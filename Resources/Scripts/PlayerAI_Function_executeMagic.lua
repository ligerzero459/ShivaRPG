--------------------------------------------------------------------------------
--  Function......... : executeMagic
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.executeMagic ( spell )
--------------------------------------------------------------------------------
	
	-- Grab target arrow
    local hTargetArrow = application.getCurrentUserSceneTaggedObject ( 'TargetArrow' )
    local currentTarget = object.getAIVariable ( hTargetArrow, "TargetAI", "currentTarget" )
    -- Create the tag to reference the true target
    local targetTag = 'Enemy'..math.roundToNearestInteger ( currentTarget )
    -- Grab the current target
    local hTarget = application.getCurrentUserSceneTaggedObject ( targetTag )
    
    
    
    -- Int stat
    local magicStrength = hashtable.get( this.statsTable ( ), "Int" )
    
    -- Calculations for intellegence modifier goes here
    local intModifier = 0
    local damage = 0
    
    -- Rolls for spell damage
    if spell == 'Fire' then
        damage = this.diceRoll ( 1, 6 ) + intModifier
    elseif spell == 'Blizzard' then
        damage = this.diceRoll ( 1, 6 ) + intModifier
    elseif spell == 'Thunder' then
        damage = this.diceRoll ( 1, 6 ) + intModifier
    end
    
    local hitPercentage = math.roundToNearestInteger ( math.random ( 0, 100 ) )
    
    if ( hitPercentage > 50 ) then
        object.sendEventImmediate ( hTarget, "EnemyAI", "onAttacked", damage, targetTag )
        log.message ( "Successful " .. spell .. " attack!" )
    else
        log.message ( spell .. " spell missed!" )
    end
    
    hashtable.set ( this.statsTable ( ), "AttackTime", system.getTimeOfDay ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
