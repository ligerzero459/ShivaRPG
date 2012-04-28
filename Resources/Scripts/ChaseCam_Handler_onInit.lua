--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ChaseCam.onInit (  )
--------------------------------------------------------------------------------
	
	this.hCam ( this.getObject ( ) )
    this.hTarget ( application.getCurrentUserSceneTaggedObject ( 'player' ))
    
    object.matchRotation ( this.hCam ( ), this.hTarget ( ), object.kGlobalSpace )
    object.setRotation ( this.hCam ( ), 0, 0, 0, object.kLocalSpace )
    object.matchTranslation ( this.hCam ( ), this.hTarget ( ), object.kGlobalSpace )
    object.translate ( this.hCam ( ), 0, 1.5, 5, object.kLocalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
