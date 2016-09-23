using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Payment_33155 : System.Web.UI.Page
{
    private const string strconneciton = "Data Source=SQL5028.Smarterasp.net;Initial Catalog=DB_A09FBD_Intrepid;User Id=DB_A09FBD_Intrepid_admin;Password=D.t9676768131;";
    SqlConnection con = new SqlConnection(strconneciton);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into SELLERDATA values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)", con);

            cmd.Parameters.AddWithValue("a", Session["PnrNumber"]);

            cmd.Parameters.AddWithValue("b", Session["TrainNumber"]);

            cmd.Parameters.AddWithValue("c", Session["TrainName"]);
            cmd.Parameters.AddWithValue("d", Session["Class"]);
            cmd.Parameters.AddWithValue("e", Session["DateOfJourney"]);
            cmd.Parameters.AddWithValue("f", Session["BoardingFrom"]);
            cmd.Parameters.AddWithValue("g", Session["JourneyTo"]);
            cmd.Parameters.AddWithValue("h", Session["PassengerCount"]);
            cmd.Parameters.AddWithValue("i", Session["Name"]);
            cmd.Parameters.AddWithValue("j", Session["MobileNumber"]);
            cmd.Parameters.AddWithValue("k", 0);
            int count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                Response.Redirect("_ThankYou.aspx",false);
            }
            else
            {
                Response.Redirect("_Fail.aspx");
            }

        }
        catch (SqlException ex)
        {
            Response.Redirect("_Fail.aspx");
        }
        finally
        {
            con.Close();
        }
    }
}
