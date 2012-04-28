--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
    if (this.inBattle ( ) == false) then
        object.sendEvent ( this.hPlayer ( ), "PlayerAI", "onKeyboardKeyUp", kKeyCode )
        if ( kKeyCode == input.kKeyW ) then
            this.pMoving ( false )
        end
        if ( kKeyCode == input.kKeyS ) then
            this.pMoving ( false )
        end
        if ( kKeyCode == input.kKeyE ) then
            this.pMoving ( false )
        end
        if ( kKeyCode == input.kKeyQ ) then
            this.pMoving ( false )
        end
    elseif ( this.inBattle ( ) ) then
        if ( kKeyCode == input.kKeyZ ) then
            sfx.pauseAllParticleEmitters ( this.blueF ( ) )
        end
        if ( kKeyCode == input.kKeyX ) then
            sfx.pauseAllParticleEmitters ( this.greenF ( ) )
        end
        if ( kKeyCode == input.kKeyC ) then
            sfx.pauseAllParticleEmitters ( this.redF ( ) )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
