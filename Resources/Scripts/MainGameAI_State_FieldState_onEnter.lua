--------------------------------------------------------------------------------
--  State............ : FieldState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.FieldState_onEnter ( )
--------------------------------------------------------------------------------
    
    if this.firstRun ( ) == false and this.fromScene ( ) == 'Town' then
        this.hPlayer ( this.addPlayerModel ( 7.722, 1.154, -12.900, 0.0 ) )
        this.hPlayerCamera ( this.addPlayerCam ( ))
        application.setCurrentUserActiveCamera ( this.hPlayerCamera ( ) )
    elseif this.firstRun ( ) == true and this.fromScene ( ) == 'Start' then
        this.firstRun ( false )
    elseif this.firstRun ( ) == false and this.fromScene ( ) == 'Battle' then
        this.hPlayer ( this.addPlayerModel ( this.playerLastX ( ), this.playerLastY ( ), this.playerLastZ ( ), this.playerLastRotation ( ) ) )
        this.hPlayerCamera ( this.addPlayerCam ( ))
        application.setCurrentUserActiveCamera ( this.hPlayerCamera ( ) )
    elseif this.firstRun ( ) == false and this.fromScene ( ) == 'Forest' then
        this.hPlayer ( this.addPlayerModel ( -19.330, 1.154, -14.054, -90.0 ) )
        this.hPlayerCamera ( this.addPlayerCam  ( ))
        application.setCurrentUserActiveCamera ( this.hPlayerCamera ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
