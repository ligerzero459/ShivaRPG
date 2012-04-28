--------------------------------------------------------------------------------
--  State............ : CanyonState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.CanyonState_onLeave ( )
--------------------------------------------------------------------------------
	
	if ( this.toScene ( ) == 'Battle' ) then
        local x, y, z = object.getTranslation ( this.hPlayer ( ), object.kGlobalSpace )
        local rotationX, rotationY, rotationZ = object.getRotation ( this.hPlayer ( ), object.kGlobalSpace )
        this.playerLastX ( x )
        this.playerLastY ( y )
        this.playerLastZ ( z )
        this.playerLastRotation ( rotationY )
        application.setCurrentUserScene ( this.chooseBattleScene ( ) )
    elseif (this.toScene ( ) == 'Field' ) then
        application.setCurrentUserScene ( 'Overworld' )
    end
	
    this.fromScene ( 'Canyon' )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
