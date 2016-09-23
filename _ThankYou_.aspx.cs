using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _ThankYou_ : System.Web.UI.Page
{
    private const string strconneciton = "Data Source=SQL5028.Smarterasp.net;Initial Catalog=DB_A09FBD_Intrepid;User Id=DB_A09FBD_Intrepid_admin;Password=D.t9676768131;";
    SqlConnection con = new SqlConnection(strconneciton);
    protected void Page_Load(object sender, EventArgs e)
    {
        using (var cmd = con.CreateCommand())
        {
            con.Open();
            cmd.CommandText = "SELECT MOBILENUMBERSELLER FROM SELLERDATA WHERE PNRNUMBER = @a";
            cmd.Parameters.AddWithValue("@a", Session["BuyPnr"].ToString());
            using (var reader = cmd.ExecuteReader())
            {
                while(reader.Read())
                {
                    ThankYouBuy.Text = reader[0].ToString();
                    Session.Clear();
                }
            }
            con.Close();
        }
    }
}
