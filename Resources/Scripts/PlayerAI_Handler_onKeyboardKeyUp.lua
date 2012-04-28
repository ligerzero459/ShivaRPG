--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
    if ( kKeyCode == input.kKeyD ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pRotateRight ( false )
    end
    if ( kKeyCode == input.kKeyA ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pRotateLeft ( false )
    end
	if ( kKeyCode == input.kKeyW ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pMoveForward ( false )
    end
    if ( kKeyCode == input.kKeyS ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pMoveBack ( false )
    end
    if ( kKeyCode == input.kKeyE ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pMoveRight ( false )
    end
    if ( kKeyCode == input.kKeyQ ) then
        dynamics.setIdle ( this.hPlayer ( ), true )
        this.pMoveLeft ( false )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
