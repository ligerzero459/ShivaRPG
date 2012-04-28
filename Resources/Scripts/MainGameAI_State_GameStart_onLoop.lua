--------------------------------------------------------------------------------
--  State............ : GameStart
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainGameAI.GameStart_onLoop ( )
--------------------------------------------------------------------------------
	
	local nXMLStatus = xml.getReceiveStatus ( this.hMyXML ( ) )
    if ( nXMLStatus == -3 )
    then
        log.warning ( "XML parse failed." )

        --Leave GetXML state for another state
        this.FieldState ( )

    elseif ( nXMLStatus == -2 )
    then
        log.warning ( "XML not found." )

        --Leave GetXML state for another state
        this.FieldState ( )
        
    elseif ( nXMLStatus == -1)
    then
        log.warning ( "XML not in cache." )
        
        this.hMyXML( xml.receive ( this.hMyXML ( ), "file://temp.xml" ) )
        
    elseif ( nXMLStatus == 1 )
    then
        log.message ( "XML completed." )
        log.message (  xml.toString ( xml.getRootElement ( this.hMyXML ( ) ) )  )

        --Process XML
        this.parceXML ( )
        
        --Leave GetXML state for another state
        this.FieldState ( )
    end

	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
