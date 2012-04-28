--------------------------------------------------------------------------------
--  State............ : BattleState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.BattleState_onLoop ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
    if ( hScene )
    then
        local nMusicProgress = music.getPlaybackProgress ( hScene ) 
        if ( nMusicProgress == 1 ) then
            music.stop ( hScene, 3 )
            music.play ( hScene, this.currentMusic ( ), 3 )
        elseif ( nMusicProgress == 0 ) then
            music.play ( hScene, this.currentMusic ( ), 3 )
        end
    end
	if ( this.hNumEnemies ( ) == 0 ) then
        this.endBattle ( )
    end
    if ( object.getAIVariable ( this.hPlayer ( ), "PlayerAI", "bHP" ) <= 0 ) then
        this.sendEvent ( "onPlayerDefeat" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
