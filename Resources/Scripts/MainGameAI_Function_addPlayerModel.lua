--------------------------------------------------------------------------------
--  Function......... : addPlayerModel
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.addPlayerModel ( x, y, z, rY )
--------------------------------------------------------------------------------
	
	local hScene = application.getCurrentUserScene ( )
    
	local player = scene.createRuntimeObject ( hScene, 'kaiV2' )
    
    scene.setObjectTag ( hScene, player, 'player' )
    
    if ( player ~= nil ) then
        -- Create player
        object.addAIModel ( player, "PlayerAI" )
        object.setTranslation ( player, x, y, z, object.kGlobalSpace )
        object.setRotation ( player, 0, rY, 0, object.kGlobalSpace )
        
        if (this.toScene ( ) == 'Town') then
            object.setAIVariable ( player, "PlayerAI", "hPlayerSpeed", 0.50 )
        else
            object.setAIVariable ( player, "PlayerAI", "hPlayerSpeed", 0.80 )
        end
        
        object.setAIVariable ( player, "PlayerAI", "statsTable", this.playerStats ( ) )
        
        dynamics.createCompositeBody ( player )
        dynamics.addCompositeBodyBoxGeometry ( player, 0.50, 2.00, 1.0, 0, 0, 0 )
        dynamics.enableDynamics ( player, true )
        dynamics.enableCollisions ( player, true )
        dynamics.enableGravity ( player, true )
        dynamics.setMass ( player, 150 )
        dynamics.setFriction ( player, 2.5 )
        dynamics.setLinearSpeedLimit ( player, 50.0 )
        dynamics.setLinearDampingEx ( player, 1, 1, 1 )
        dynamics.setAngularDampingEx ( player, 100, 100, 100 )
        dynamics.finalizeCompositeBody ( player )
        dynamics.setIdle ( player, true )
        
        sensor.add ( player, sensor.kShapeTypeBox )
        sensor.setIDAt ( player, 0, 99 )
    end
    
    return player
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

