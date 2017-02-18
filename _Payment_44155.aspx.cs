using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Payment_44155 : System.Web.UI.Page
{
    private const string strconneciton = "Data Source=SQL5028.Smarterasp.net;Initial Catalog=DB_A09FBD_Intrepid;User Id=DB_A09FBD_Intrepid_admin;Password=D.t9676768131;";
    SqlConnection con = new SqlConnection(strconneciton);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string sss = "UPDATE SELLERDATA SET MOBILENUMBERBUYER = @l WHERE (PNRNUMBER = @p) AND (MOBILENUMBERBUYER = 0)";

        
        try
        {
            SqlCommand cmd = new SqlCommand(sss, con);
            cmd.Parameters.AddWithValue("@l", Session["MobileNumberBuyer"].ToString());
            cmd.Parameters.AddWithValue("@p", Session["BuyPnr"].ToString());
            //count will be the number of rows updated. will be zero if no rows updated.
            int count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                Response.Redirect("_ThankYou_.aspx");
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
