--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    if (this.inBattle ( ) == false) then
        object.sendEvent ( this.hPlayer ( ), "PlayerAI", "onKeyboardKeyDown", kKeyCode )
        if ( kKeyCode == input.kKeyW ) then
            this.pMoving ( true )
        end
        if ( kKeyCode == input.kKeyS ) then
            this.pMoving ( true )
        end
        if ( kKeyCode == input.kKeyE ) then
            this.pMoving ( true )
        end
        if ( kKeyCode == input.kKeyQ ) then
            this.pMoving ( true )
        end
        if ( kKeyCode == input.kKey1 ) then
            this.pEncounter ( 0 )
            this.inBattle ( true )
            this.toScene ( 'Battle' )
            this.fromScene ( 'Field' )
            this.chosenEnemy ( 1 )
            this.BattleStateForced ( )
        elseif ( kKeyCode == input.kKey2 ) then
            this.pEncounter ( 0 )
            this.inBattle ( true )
            this.toScene ( 'Battle' )
            this.fromScene ( 'Field' )
            this.chosenEnemy ( 2 )
            this.BattleStateForced ( )
        elseif ( kKeyCode == input.kKey3 ) then
            this.pEncounter ( 0 )
            this.inBattle ( true )
            this.toScene ( 'Battle' )
            this.fromScene ( 'Field' )
            this.chosenEnemy ( 3 )
            this.BattleStateForced ( )
        elseif ( kKeyCode == input.kKey4 ) then
            this.pEncounter ( 0 )
            this.inBattle ( true )
            this.toScene ( 'Battle' )
            this.fromScene ( 'Field' )
            this.chosenEnemy ( 4 )
            this.BattleStateForced ( )
        end
    elseif ( this.inBattle ( ) == true ) then
        if ( kKeyCode == input.kKeySpace ) then
            this.fireBlue (  )
            this.fireRed (  )
            this.fireGreen (  )
            this.delay_s ( 2 )
            this.endBattle (  )
        end
        if ( kKeyCode == input.kKey1 or kKeyCode == input.kKey2 or kKeyCode == input.kKey3 ) then
            object.sendEvent ( this.hTarget ( ), "TargetAI", "onKeyboardKeyDown", kKeyCode )
        else
            object.sendEvent ( this.hPlayer ( ), "PlayerAI", "onKeyboardKeyDown", kKeyCode )
        end
        if ( kKeyCode == input.kKeyZ ) then
            sfx.startAllParticleEmitters ( this.blueF ( ) )
        end
        if ( kKeyCode == input.kKeyX ) then
            sfx.startAllParticleEmitters ( this.greenF ( ) )
        end
        if ( kKeyCode == input.kKeyC ) then
            sfx.startAllParticleEmitters ( this.redF ( ) )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
