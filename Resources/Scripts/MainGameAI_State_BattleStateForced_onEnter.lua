--------------------------------------------------------------------------------
--  State............ : BattleStateForced
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.BattleStateForced_onEnter ( )
--------------------------------------------------------------------------------
	
    this.inBattle ( true )
	local x, y, z, hp, model, str, dex, con, intel, wiz, cha, rolls, sides, exp
    this.currentMusic ( math.floor( math.random ( 0, 4 ) + 0.5 ) )
    
    this.blueF ( application.getCurrentUserSceneTaggedObject ( 'blueFirework' ) )
    this.redF ( application.getCurrentUserSceneTaggedObject ( 'redFirework' ) )
    this.greenF ( application.getCurrentUserSceneTaggedObject ( 'greenFirework' ) )
    
    application.forceModelToStayLoaded ( 'spider', true )
    application.forceModelToStayLoaded ( 'bus', true )
    application.forceModelToStayLoaded ( 'silver_night', true )
    application.forceModelToStayLoaded ( 'Dragon', true )
    
    local hScene = application.getCurrentUserScene ( )
    local hUser = application.getCurrentUser ( )
    local bCamera = application.getCurrentUserSceneTaggedObject ( 'behindCamera' )
    application.setCurrentUserActiveCamera ( bCamera )
    
    this.hNumEnemies ( 1 )
    
    if ( hScene ~= nil )
    then
    
        if ( this.hNumEnemies ( ) == 1 ) then
            -- Enemy 1
            this.chooseEnemy ( this.chosenEnemy ( ) )
            model = hashtable.get ( this.enemy ( ), 'Model' )
            x = hashtable.get ( this.enemy ( ), 'X')
            y = hashtable.get ( this.enemy ( ), 'Y' )
            z = hashtable.get ( this.enemy ( ), 'Z' )
            hp = hashtable.get ( this.enemy ( ), 'HP' )
            str = hashtable.get ( this.enemy ( ), 'Str' )
            dex = hashtable.get ( this.enemy ( ), 'Dex' )
            con = hashtable.get ( this.enemy ( ), 'Con' )
            intel = hashtable.get ( this.enemy ( ), 'Int' )
            wiz = hashtable.get ( this.enemy ( ), 'Wiz' )
            cha = hashtable.get ( this.enemy ( ), 'Cha' )
            rolls = hashtable.get ( this.enemy ( ), 'Rolls' )
            sides = hashtable.get ( this.enemy ( ), 'Sides' )
            exp = hashtable.get ( this.enemy ( ), 'EXP' )
            this.hEnemy2 ( this.addEnemy ( 'Enemy2', x, y, z, hp, str, dex, con, intel, wiz, cha, rolls, sides, exp, model ) )
            -- Set first target
            -- Set first target
            this.hTarget ( scene.createRuntimeObject ( hScene, "TargetArrow" ) )
            object.addAIModel ( this.hTarget ( ), "TargetAI" )
            scene.setObjectTag ( hScene, this.hTarget ( ), 'TargetArrow' )
            object.setTranslation ( this.hTarget ( ), x, 7, z, object.kGlobalSpace )
            object.setAIVariable ( this.hTarget ( ), "TargetAI", "currentTarget", 2 )
            object.setAIVariable ( this.hTarget ( ), "TargetAI", "targets", 1 )
            
            -- Tells Main AI the number of targets
            this.sendEvent ( "onBattleStart", 1 )
        end
        
    end
    
    application.forceModelToStayLoaded ( 'spider', false )
    application.forceModelToStayLoaded ( 'bus', false )
    application.forceModelToStayLoaded ( 'silver_night', false )
    application.forceModelToStayLoaded ( 'Dragon', false )
    
    this.addPlayerModel ( -8.347, 1.154, 0.0, -90, 200, 10, 12)
    this.hPlayer ( application.getCurrentUserSceneTaggedObject ( 'player' ) )
    object.sendEvent ( this.hPlayer ( ), "PlayerAI", "onBattleStart" )
    
    sfx.pauseAllParticleEmitters ( this.blueF ( ) )
    sfx.pauseAllParticleEmitters ( this.greenF ( ) )
    sfx.pauseAllParticleEmitters ( this.redF ( ) )
    
    sfx.setParticleEmitterLifeTimeFactorAt ( this.blueF ( ), 0, 0.4 )
    sfx.setParticleEmitterLifeTimeFactorAt ( this.greenF ( ), 0, 0.4 )
    sfx.setParticleEmitterLifeTimeFactorAt ( this.redF ( ), 0, 0.4 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
