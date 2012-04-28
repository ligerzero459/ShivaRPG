--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.onInit (  )
--------------------------------------------------------------------------------
	
	application.setCurrentUserScene ( 'Overworld' )
    
    hashtable.add ( this.enemy ( ), 'Model', '' )
    hashtable.add ( this.enemy ( ), 'X', '' )
    hashtable.add ( this.enemy ( ), 'Y', '' )
    hashtable.add ( this.enemy ( ), 'Z', '' )
    hashtable.add ( this.enemy ( ), 'HP', '' )
    hashtable.add ( this.enemy ( ), 'Str', '' )
    hashtable.add ( this.enemy ( ), 'Dex', '' )
    hashtable.add ( this.enemy ( ), 'Con', '' )
    hashtable.add ( this.enemy ( ), 'Int', '' )
    hashtable.add ( this.enemy ( ), 'Wiz', '' )
    hashtable.add ( this.enemy ( ), 'Cha', '' )
    hashtable.add ( this.enemy ( ), 'Rolls', '' )
    hashtable.add ( this.enemy ( ), 'Sides', '' )
    hashtable.add ( this.enemy ( ), 'EXP', '' )
	
    this.playerStats ( hashtable.newInstance ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
