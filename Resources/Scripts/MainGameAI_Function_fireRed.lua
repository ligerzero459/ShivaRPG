--------------------------------------------------------------------------------
--  Function......... : fireRed
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.fireRed ( )
--------------------------------------------------------------------------------
	
	sfx.startAllParticleEmitters ( this.redF ( ) )
    this.delay_s ( 1.5 )
    sfx.pauseAllParticleEmitters ( this.redF ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
