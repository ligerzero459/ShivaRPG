--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function TransportToTownAI.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    user.sendEvent ( hUser, "MainGameAI", "onSensorCollisionBegin", nSensorID, hTargetObject, nTargetSensorID )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
