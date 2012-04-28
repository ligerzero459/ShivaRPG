--------------------------------------------------------------------------------
--  State............ : TownState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.TownState_onLoop ( )
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
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
