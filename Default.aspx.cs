using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
    }
protected void Sellaticket_Click(object sender, EventArgs e)
    {
        Response.Redirect("_SellATicket.aspx");
    }

    protected void Buyaticket_Click(object sender, EventArgs e)
    {
        Response.Redirect("_BuyATicket.aspx");
    }
    
}



