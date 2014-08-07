﻿<%@ Application Language="C#" %>
<%@ Import Namespace = "IndiaDeals2Day.BusinessLogicComponents" %>
<%@ Import Namespace = "IndiaDeals2Day.SharedComponents" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {        

    }
    
    void Application_End(object sender, EventArgs e) 
    {        

    }
        
    void Application_Error(object sender, EventArgs e) 
    {
        Exception ex = Server.GetLastError();
        LogBal lBal = new LogBal();
        lBal.LogMessage(ex.Message, LogMessageTypes.Error);
        Response.Redirect("~/Error.aspx");
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        if (Session["AUser"] != null)
        {
        }
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>