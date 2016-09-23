<%@ Application Language="C#" %>
<%@ Import Namespace="Sree_ASP_NET" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
Application["NoOfVisitors"] = 0;
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }
void Session_Start(object sender, EventArgs e)
{
// Code that runs when a new session is started
Application.Lock();
Application["NoOfVisitors"] = (int)Application["NoOfVisitors"] + 1;
Application.UnLock();
}
</script>

