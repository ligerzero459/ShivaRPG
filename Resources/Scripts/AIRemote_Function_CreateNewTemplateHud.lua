--------------------------------------------------------------------------------
--  Function......... : CreateNewTemplateHud
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AIRemote.CreateNewTemplateHud ( )
--------------------------------------------------------------------------------
	
    local hRoot   = hud.newComponent ( this.getUser ( ), hud.kComponentTypeContainer, "AIRemote.Root" )
	local hTouch1 = hud.newComponent ( this.getUser ( ), hud.kComponentTypeLabel    , "AIRemote.Touch1" )
    local hTouch2 = hud.newComponent ( this.getUser ( ), hud.kComponentTypeLabel    , "AIRemote.Touch2" )
    local hTouch3 = hud.newComponent ( this.getUser ( ), hud.kComponentTypeLabel    , "AIRemote.Touch3" )
    local hTouch4 = hud.newComponent ( this.getUser ( ), hud.kComponentTypeLabel    , "AIRemote.Touch4" )
    local hTouch5 = hud.newComponent ( this.getUser ( ), hud.kComponentTypeLabel    , "AIRemote.Touch5" )
    
    hud.setComponentIgnoredByMouse ( hRoot, true )
    hud.setComponentIgnoredByMouse ( hTouch1, true )
    hud.setComponentIgnoredByMouse ( hTouch2, true )
    hud.setComponentIgnoredByMouse ( hTouch3, true )
    hud.setComponentIgnoredByMouse ( hTouch4, true )
    hud.setComponentIgnoredByMouse ( hTouch5, true )
                                 
    --Build hud hierarchy
    --
    if ( hTouch1 and hRoot ) then hud.setComponentContainer ( hTouch1, hRoot ) end
    if ( hTouch2 and hRoot ) then hud.setComponentContainer ( hTouch2, hRoot ) end
    if ( hTouch3 and hRoot ) then hud.setComponentContainer ( hTouch3, hRoot ) end
    if ( hTouch4 and hRoot ) then hud.setComponentContainer ( hTouch4, hRoot ) end
    if ( hTouch5 and hRoot ) then hud.setComponentContainer ( hTouch5, hRoot ) end
    
    --Setup component properties
    --
    if ( hRoot ) then 
        hud.setComponentBackgroundColor ( hRoot, 0 , 0 , 0 , 0 ) 
        hud.setComponentSize            ( hRoot, 100, 100 )           
        hud.setComponentZOrder          ( hRoot, 255 )                
        hud.setComponentOpacity         ( hRoot, 127 )                
    end    
    
    if ( hTouch1 ) then 
        hud.setComponentBackgroundColor ( hTouch1, 127, 127, 127, 255 )       
        hud.setComponentForegroundColor ( hTouch1, 127, 127, 127, 0   )       
        hud.setComponentBorderColor     ( hTouch1, 127, 127, 127, 0   )       
        hud.setComponentOpacity         ( hTouch1, 255                )       
        hud.setComponentSize            ( hTouch1, 15 , 15            )       
        hud.setComponentShapeType       ( hTouch1, hud.kShapeTypeEllipsoid )  
        hud.setComponentAspectInvariant ( hTouch1, true  )                    
        hud.setComponentVisible         ( hTouch1, false )                    
    end
    
    if ( hTouch2 ) then 
        hud.setComponentBackgroundColor ( hTouch2, 100, 0  , 0  , 255 )       
        hud.setComponentForegroundColor ( hTouch2, 127, 127, 127, 0   )       
        hud.setComponentBorderColor     ( hTouch2, 127, 127, 127, 0   )       
        hud.setComponentOpacity         ( hTouch2, 255                )       
        hud.setComponentSize            ( hTouch2, 15 , 15            )       
        hud.setComponentShapeType       ( hTouch2, hud.kShapeTypeEllipsoid )  
        hud.setComponentAspectInvariant ( hTouch2, true  )                    
        hud.setComponentVisible         ( hTouch2, false )                    
    end
    
    if ( hTouch3 ) then 
        hud.setComponentBackgroundColor ( hTouch3, 100, 100, 0  , 255 )       
        hud.setComponentForegroundColor ( hTouch3, 127, 127, 127, 0   )       
        hud.setComponentBorderColor     ( hTouch3, 127, 127, 127, 0   )       
        hud.setComponentOpacity         ( hTouch3, 255                )       
        hud.setComponentSize            ( hTouch3, 15 , 15            )       
        hud.setComponentShapeType       ( hTouch3, hud.kShapeTypeEllipsoid )  
        hud.setComponentAspectInvariant ( hTouch3, true  )                    
        hud.setComponentVisible         ( hTouch3, false )                    
    end
              
    if ( hTouch4 ) then 
        hud.setComponentBackgroundColor ( hTouch4, 0  , 100, 0  , 255 )       
        hud.setComponentForegroundColor ( hTouch4, 127, 127, 127, 0   )       
        hud.setComponentBorderColor     ( hTouch4, 127, 127, 127, 0   )       
        hud.setComponentOpacity         ( hTouch4, 255                )       
        hud.setComponentSize            ( hTouch4, 15 , 15            )       
        hud.setComponentShapeType       ( hTouch4, hud.kShapeTypeEllipsoid )  
        hud.setComponentAspectInvariant ( hTouch4, true  )                    
        hud.setComponentVisible         ( hTouch4, false )                    
    end
              
    if ( hTouch5 ) then 
        hud.setComponentBackgroundColor ( hTouch5, 0  , 0  , 100, 255 )       
        hud.setComponentForegroundColor ( hTouch5, 127, 127, 127, 0   )       
        hud.setComponentBorderColor     ( hTouch5, 127, 127, 127, 0   )       
        hud.setComponentOpacity         ( hTouch5, 255                )       
        hud.setComponentSize            ( hTouch5, 15 , 15            )       
        hud.setComponentShapeType       ( hTouch5, hud.kShapeTypeEllipsoid )  
        hud.setComponentAspectInvariant ( hTouch5, true  )                    
        hud.setComponentVisible         ( hTouch5, false )                    
    end
   
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
