--------------------------------------------------------------------------------
--  State............ : connection
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AIRemote.connection_onLoop ( )
--------------------------------------------------------------------------------
    
	local hCurrentServer = network.getCurrentServer ( )
    if ( hCurrentServer == nil )
    then
        if ( string.isEmpty ( this.sServerIP ( ) ) )
        then

            if ( network.getStatus ( ) == network.kStatusNone )
            then
                log.message ( "Search ShiVa remote failed." )
                this.idle ( )        
            elseif ( network.getStatus ( ) == network.kStatusSearchFinished )
            then
                if ( network.getServerCount ( ) > 0 ) 
                then 
                    log.message ( "ShiVa remote found." )
                    network.setCurrentServer ( network.getServerNameAt ( 0 ) )
                else
                    log.message ( "no ShiVa remote found." )
                    this.idle ( )
                end
            end
        else
            network.setCurrentServer ( this.sServerIP ( ) )        
        end
    else        
        if ( server.getStatus ( hCurrentServer ) == server.kStatusNone )
        then
            this.idle ( )
     
        elseif ( server.getStatus ( hCurrentServer ) == server.kStatusConnected )
        then
            local hCurrentSession = server.getCurrentSession ( hCurrentServer )
            if ( hCurrentSession == nil )
            then
                server.setCurrentSession ( hCurrentServer, "Default" )
                
            elseif ( session.getStatus ( hCurrentSession ) == session.kStatusNone )
            then
                server.setCurrentSession ( hCurrentServer, "Default" )
             
            elseif ( session.getStatus ( hCurrentSession ) == session.kStatusConnected )
            then
                this.connected ( )   
            end
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
