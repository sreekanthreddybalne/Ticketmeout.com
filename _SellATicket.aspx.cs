using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
public partial class _SellATicket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ProceedToPayButton_Click(object sender, EventArgs e)
    {
        Session["PnrNumber"] = hid0.Value.ToString();
        Session["TrainName"] = hid2.Value.ToString();
        Session["TrainNumber"] = hid1.Value.ToString();
        Session["Class"]= hid3.Value.ToString();
        Session["DateOfJourney"]= hid4.Value.ToString();
        Session["BoardingFrom"]= hid5.Value.ToString();
        Session["JourneyTo"]= hid6.Value.ToString();
        Session["PassengerCount"]= hid7.Value.ToString();
        Session["Name"] = NameTextBox.Text;
        Session["MobileNumber"] = MobileNumberTextBox.Text;
        int i=Convert.ToInt32(Session["PassengerCount"]) + 0;
       
       /* if (i==1)
        {
            Response.Redirect("https://www.payumoney.com/paybypayumoney/#/170653", false);

        }
        else if(i==2)
        {
            Response.Redirect("https://www.payumoney.com/paybypayumoney/#/170657", false);
        }
        else if(i==3)
        {
            Response.Redirect("https://www.payumoney.com/paybypayumoney/#/170661", false);
        }
        else
        {*/
            Response.Redirect("http://www.ticketmeout.com/_Payment_33155.aspx", false);
       // }
    }
}

