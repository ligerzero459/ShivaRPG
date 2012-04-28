--------------------------------------------------------------------------------
--  State............ : ForestState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.ForestState_onEnter ( )
--------------------------------------------------------------------------------
	
	if this.fromScene ( ) == 'Field' then
        this.hPlayer ( this.addPlayerModel ( -11.523, 8.274, -10.957, -88.254 ) )
        this.hPlayerCamera ( this.addPlayerCam (  ))
        application.setCurrentUserActiveCamera ( this.hPlayerCamera ( ) )
    elseif this.fromScene ( ) == 'Battle' then
        this.hPlayer ( this.addPlayerModel ( this.playerLastX ( ), this.playerLastY ( ), this.playerLastZ ( ), this.playerLastRotation ( ) ) )
        this.hPlayerCamera ( this.addPlayerCam (  ))
        application.setCurrentUserActiveCamera ( this.hPlayerCamera ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
