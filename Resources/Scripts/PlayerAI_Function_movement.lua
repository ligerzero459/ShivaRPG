--------------------------------------------------------------------------------
--  Function......... : movement
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlayerAI.movement ( kKeyCode )
--------------------------------------------------------------------------------
	
	if ( kKeyCode == input.kKeyD ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pRotateRight ( true )
    end
    if ( kKeyCode == input.kKeyA ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pRotateLeft ( true )
    end
    if ( kKeyCode == input.kKeyW ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pMoveForward ( true )
    end
    if ( kKeyCode == input.kKeyS ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pMoveBack ( true )
    end
    if ( kKeyCode == input.kKeyE ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pMoveRight ( true )
    end
    if ( kKeyCode == input.kKeyQ ) then
        dynamics.setIdle ( this.hPlayer ( ), false )
        this.pMoveLeft ( true )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
