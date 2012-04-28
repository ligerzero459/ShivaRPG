--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    if nSensorID == 0 then
        this.toScene ( 'Town' )
        this.postStateChange ( 0, "TownState" )
    elseif nSensorID == 2 then
        this.toScene ( 'Field' )
        this.postStateChange ( 0, "FieldState" )
    elseif nSensorID == 6 then
        this.toScene ( 'Forest' )
        this.postStateChange ( 0, "ForestState" )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
