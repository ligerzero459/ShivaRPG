--------------------------------------------------------------------------------
--  Function......... : addPlayerCam
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.addPlayerCam ( )
--------------------------------------------------------------------------------
	
	local hScene = application.getCurrentUserScene ( )
    
    local chaseCamera = scene.createRuntimeObject ( hScene, 'playerCam' )
    scene.setObjectTag ( hScene, chaseCamera, 'camera' )
    
    if (chaseCamera ~= nil) then
        local Ex, Ey, Ez = object.getTranslation ( this.hPlayer ( ), object.kGlobalSpace )
        
    end
    
    object.addAIModel ( chaseCamera, 'ChaseCam' )
    
    return chaseCamera
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
