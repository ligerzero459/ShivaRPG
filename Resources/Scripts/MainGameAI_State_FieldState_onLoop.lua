--------------------------------------------------------------------------------
--  State............ : FieldState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.FieldState_onLoop ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    if ( hScene )
    then
        local nMusicProgress = music.getPlaybackProgress ( hScene ) 
        if ( nMusicProgress == 1 )
        then
            music.stop ( hScene, 3 )
            music.play ( hScene, 0, 3 )
        else
            music.play ( hScene, 0, 3 )
        end
    end
    if ( this.pMoving ( ) ) then
        this.RandomEncounter ( )
    end
    if ( this.debugMode ( ) == false ) then
        if ( this.pEncounter ( ) > 680 ) then
            this.pEncounter ( 0 )
            this.toScene ( 'Battle' )
            this.fromScene ( 'Field' )
            this.postStateChange ( 0, 'BattleState' )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
