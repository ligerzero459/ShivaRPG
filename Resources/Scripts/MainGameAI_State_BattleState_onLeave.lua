--------------------------------------------------------------------------------
--  State............ : BattleState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.BattleState_onLeave ( )
--------------------------------------------------------------------------------
    
    this.inBattle ( false )
    this.pMoving ( false )
    this.toScene ( this.fromScene ( ) )
    this.fromScene ( 'Battle' )
    if ( this.toScene ( ) == 'Field' ) then
        application.setCurrentUserScene ( 'Overworld' )
    elseif ( this.toScene ( ) == 'Forest' ) then
        application.setCurrentUserScene ( 'ForestRemake' )
    elseif ( this.toScene ( ) == 'Canyon' ) then
        application.setCurrentUserScene ( 'canyon' )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
