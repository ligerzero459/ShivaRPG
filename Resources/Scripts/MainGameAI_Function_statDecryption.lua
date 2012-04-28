--------------------------------------------------------------------------------
--  Function......... : statDecryption
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.statDecryption ( stat )
--------------------------------------------------------------------------------
    
	for i = 0, 49, 1 do
        local numStat = stat + 0
        local prime = math.roundToNearestInteger(table.getAt ( this.Primes ( ), i ))
        local modulus = math.mod( numStat, prime )
        if modulus == 0 then
            numStat = numStat / table.getAt ( this.Primes ( ), i )
            return numStat
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
