--------------------------------------------------------------------------------
--  Function......... : battleCommands
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.battleCommands ( kKeyCode )
--------------------------------------------------------------------------------
	
    local currentTime = system.getTimeOfDay ( )
    
	if ( kKeyCode == input.kKeyA ) then
            -- Grabs the AttackTime from the hash table and checks to see if it's time to attack
            local AttackTime = hashtable.get ( this.statsTable ( ), "AttackTime" )
            if ( currentTime - AttackTime > 6 ) then
                this.executeAttack (  )
            else
                log.message ( "Recharging..." .. (7 - (currentTime - AttackTime)) .. " seconds remaining"  )
            end
        end
        if (kKeyCode == input.kKeyM ) then
            this.waitingForMagic ( true )
        end
        if (kKeyCode == input.kKeyF and this.waitingForMagic ( ) == true ) then
            -- Grabs the AttackTime from the hash table and checks to see if it's time to attack
            local AttackTime = hashtable.get ( this.statsTable ( ), "AttackTime" )
            if ( currentTime - AttackTime > 6 ) then
                this.executeMagic ( "Fire" )
            else
                log.message ( "Recharging..." .. (7 - (currentTime - AttackTime)) .. " seconds remaining"  )
            end
        end
        if (kKeyCode == input.kKeyB and this.waitingForMagic ( ) == true ) then
            -- Grabs the AttackTime from the hash table and checks to see if it's time to attack
            local AttackTime = hashtable.get ( this.statsTable ( ), "AttackTime" )
            if ( currentTime - AttackTime > 6 ) then
                this.executeMagic ( "Blizzard" )
            else
                log.message ( "Recharging..." .. (7 - (currentTime - AttackTime)) .. " seconds remaining"  )
            end
        end
        if (kKeyCode == input.kKeyT and this.waitingForMagic ( ) == true ) then
            -- Grabs the AttackTime from the hash table and checks to see if it's time to attack
            local AttackTime = hashtable.get ( this.statsTable ( ), "AttackTime" )
            if ( currentTime - AttackTime > 6 ) then
                this.executeMagic ( "Thunder" )
            else
                log.message ( "Recharging..." .. (7 - (currentTime - AttackTime)) .. " seconds remaining"  )
            end
        end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
