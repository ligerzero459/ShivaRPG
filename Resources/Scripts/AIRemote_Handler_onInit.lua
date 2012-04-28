--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AIRemote.onInit (  )
--------------------------------------------------------------------------------
	
    -----------------------------------------------------------------
    -- Start Installation
    -----------------------------------------------------------------
    
    -- Step 1 : Change Remote Controller Server IP
    
        this.sServerIP ( "192.168.1.83")
    
    -- Step 2 : Change your Input AI User
    
        this.sAIModelInput ( "S3D_Main" )
        
    -- Step 3 (optionnal) : Active or Desactive the HUD infobar
    
        this.bEnableHUD ( true )
    
    -- Step 4 : save All and Compil All ( F7 )
    
    
    -----------------------------------------------------------------
    -- End Installation
    -----------------------------------------------------------------
    
    
    
    if ( system.getOSType ( ) == system.kOSTypeIPhone )
    then
        application.setOption ( application.kOptionViewportRotation, 3 )
        input.enableMultiTouch  ( this.getUser ( ), true )
    end
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
