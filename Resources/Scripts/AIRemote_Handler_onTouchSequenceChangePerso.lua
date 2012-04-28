--------------------------------------------------------------------------------
--  Handler.......... : onTouchSequenceChangePerso
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AIRemote.onTouchSequenceChangePerso ( nTaps0, nX0, nY0, nTaps1, nX1, nY1, nTaps2, nX2, nY2, nTaps3, nX3, nY3, nTaps4, nX4, nY4 )
--------------------------------------------------------------------------------
	
	user.postEvent ( this.getUser ( ), 0, this.sAIModelInput ( ), "onTouchSequenceChange", nTaps0, nX0, nY0, nTaps1, nX1, nY1, nTaps2, nX2, nY2, nTaps3, nX3, nY3, nTaps4, nX4, nY4 )
    
    if this.bEnableHUD ( )
    then
	
        local hUser = this.getUser ( )
        local hDot0 = hud.getComponent ( hUser, "AIRemote.Touch1" )
        local hDot1 = hud.getComponent ( hUser, "AIRemote.Touch2" )
        local hDot2 = hud.getComponent ( hUser, "AIRemote.Touch3" )
        local hDot3 = hud.getComponent ( hUser, "AIRemote.Touch4" )
        local hDot4 = hud.getComponent ( hUser, "AIRemote.Touch5" )
            
        if ( hDot0 ) then hud.setComponentVisible ( hDot0, nTaps0 > 0 ) hud.setComponentPosition ( hDot0, 50 * ( nX0 + 1 ), 50 * ( nY0 + 1 ) ) end 
        if ( hDot1 ) then hud.setComponentVisible ( hDot1, nTaps1 > 0 ) hud.setComponentPosition ( hDot1, 50 * ( nX1 + 1 ), 50 * ( nY1 + 1 ) ) end 
        if ( hDot2 ) then hud.setComponentVisible ( hDot2, nTaps2 > 0 ) hud.setComponentPosition ( hDot2, 50 * ( nX2 + 1 ), 50 * ( nY2 + 1 ) ) end 
        if ( hDot3 ) then hud.setComponentVisible ( hDot3, nTaps3 > 0 ) hud.setComponentPosition ( hDot3, 50 * ( nX3 + 1 ), 50 * ( nY3 + 1 ) ) end 
        if ( hDot4 ) then hud.setComponentVisible ( hDot4, nTaps4 > 0 ) hud.setComponentPosition ( hDot4, 50 * ( nX4 + 1 ), 50 * ( nY4 + 1 ) ) end 
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
