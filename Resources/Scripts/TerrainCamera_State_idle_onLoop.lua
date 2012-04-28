--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function TerrainCamera.idle_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	
    if ( this.bMoveForward ( ) ) then
        object.translate( this.hSimpleCamera ( ), 0, 0, -.1, object.kLocalSpace )
    end
    if ( this.bMoveBackward ( ) ) then
        object.translate( this.hSimpleCamera ( ), 0, 0, .1, object.kLocalSpace )
    end
    if ( this.bRotateLeft ( ) ) then
        object.rotate( this.hSimpleCamera ( ), 0, 3, 0, object.kLocalSpace )
    end
    if ( this.bRotateRight ( ) ) then
        object.rotate( this.hSimpleCamera ( ), 0, -3, 0, object.kLocalSpace )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
