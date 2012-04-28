--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function TargetAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
	if ( kKeyCode == input.kKey1 ) then
        if ( this.targets ( ) > 1 ) then
            object.setTranslation ( this.targetArrow ( ), 8.6, 7, -3.203, object.kGlobalSpace )
            this.currentTarget ( 1 )
        end
    elseif ( kKeyCode == input.kKey2 ) then
        object.setTranslation ( this.targetArrow ( ), 8.6, 7, -0.198, object.kGlobalSpace )
        this.currentTarget ( 2 )
    elseif ( kKeyCode == input.kKey3 ) then
        if ( this.targets ( ) > 2 ) then
            object.setTranslation ( this.targetArrow ( ), 8.6, 7, 3.36, object.kGlobalSpace )
            this.currentTarget ( 3 )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
