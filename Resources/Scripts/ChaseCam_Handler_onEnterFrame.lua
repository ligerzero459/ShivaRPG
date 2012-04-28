--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ChaseCam.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    object.matchRotation ( this.hCam ( ), this.hTarget ( ), object.kGlobalSpace )
    object.setRotation ( this.hCam ( ), 0, 0, 0, object.kLocalSpace )
    object.matchTranslation ( this.hCam ( ), this.hTarget ( ), object.kGlobalSpace )
    object.translate ( this.hCam ( ), 0, 1.5, 5, object.kLocalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
