--------------------------------------------------------------------------------
--  Function......... : parceXML
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.parceXML ( )
--------------------------------------------------------------------------------
	
	local hRootelement = xml.getRootElement ( this.hMyXML ( ) )
    if ( hRootelement )
    then
        local hXMLEntry = xml.getElementFirstChildWithName ( hRootelement, "name" )
        local playerName = xml.getElementValue ( hXMLEntry )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "race" )
        local playerRace = xml.getElementValue ( hXMLEntry )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "class" )
        local playerClass = xml.getElementValue ( hXMLEntry )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "level" )
        local playerLevel = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "gold" )
        local playerGold = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "str" )
        local playerStr = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "dex" )
        local playerDex = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "con" )
        local playerCon = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "int" )
        local playerInt = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "wis" )
        local playerWis = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "cha" )
        local playerCha = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "aRank" )
        local playerArank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "bRank" )
        local playerBrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "cRank" )
        local playerCrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "eRank" )
        local playerRrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "iRank" )
        local playerIrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "kRank" )
        local playerKrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "lRank" )
        local playerLrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "seRank" )
        local playerSErank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "spRank" )
        local playerSPrank = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "CurrEXP" )
        local playerCurrexp = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "CurrHP" )
        local playerCurrhp = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hXMLEntry = xml.getElementNextSiblingWithName ( hXMLEntry, "MaxHP" )
        local playerMaxhp = this.statDecryption( xml.getElementValue ( hXMLEntry ) )
        
        hashtable.add ( this.playerStats ( ), "Str", playerStr )
        hashtable.add ( this.playerStats ( ), "Dex", playerDex )
        hashtable.add ( this.playerStats ( ), "Con", playerCon )
        hashtable.add ( this.playerStats ( ), "Int", playerInt )
        hashtable.add ( this.playerStats ( ), "Wis", playerWis )
        hashtable.add ( this.playerStats ( ), "Cha", playerCha )
        hashtable.add ( this.playerStats ( ), "EXP", playerCurrexp )
        hashtable.add ( this.playerStats ( ), "CHP", playerCurrhp )
        hashtable.add ( this.playerStats ( ), "MHP", playerMaxhp )
        hashtable.add ( this.playerStats ( ), "Level", playerLevel )
        hashtable.add ( this.playerStats ( ), "Name", playerName )
        hashtable.add ( this.playerStats ( ), "Race", playerRace )
        hashtable.add ( this.playerStats ( ), "Class", playerClass )
        hashtable.add ( this.playerStats ( ), "AttackTime", system.getTimeOfDay ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
