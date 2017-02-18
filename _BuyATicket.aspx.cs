using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _BuyATicket : System.Web.UI.Page
{
    private const string strconneciton = "Data Source=SQL5028.Smarterasp.net;Initial Catalog=DB_A09FBD_Intrepid;User Id=DB_A09FBD_Intrepid_admin;Password=D.t9676768131;";
    SqlConnection con = new SqlConnection(strconneciton);
    protected void Page_Load(object sender, EventArgs e)
    {
        //  TextBoxx.Attributes.Add("onclick", "SearchTrainNumberfun('sre');");
        Session.Clear();
    }
    protected void BuyHid1_TextChanged(object sender, EventArgs e)
    {
        Session["BuyPnr"]= BuyHid1.Text.ToString();
        Session["MobileNumberBuyer"] = BuyHid3.Text.ToString();
        int co = Convert.ToInt32(BuyHid2.Text);
        //if (co == 1) { Response.Redirect("https://www.payumoney.com/paybypayumoney/#/160369", false); }
        //else if (co == 2) { Response.Redirect("https://www.payumoney.com/paybypayumoney/#/0CEE09F54ACA09F11A0BA4F01811D7DB", false); }
        //else if (co == 3) { Response.Redirect("https://www.payumoney.com/paybypayumoney/#/FC82F551BD481497C50F7E89911AF4CB", false); }
        //else { 
		Response.Redirect("https://www.payumoney.com/paybypayumoney/#/AD91DF106F5536193D6AC8C9ACEA9E4D", false); //}

    }

    protected void GoButton_Click(object sender, EventArgs e)
    {
        using (var cmd = con.CreateCommand())
        {
           string s,s1, s2, s3;
            s = txtDate1.Text;
            s1 = s.Substring(3, 1);
            if (s1 == "0")
            {
                s2 = s.Substring(0, 3);
                s3 = s.Substring(4, 6);
                s2 += s3;
                s = s2;
            }
            
            con.Open();
            cmd.CommandText = "SELECT * FROM SELLERDATA WHERE TRAINNUMBER = @a AND (MOBILENUMBERBUYER = '0' AND DATEOFJOURNEY = @d)"; 
            cmd.Parameters.AddWithValue("@a", SearchTrainNumber.Text);
            cmd.Parameters.AddWithValue("@d", s);
            using (var reader = cmd.ExecuteReader())
            {
                string tablestring = "<input class='w3-input w3-border w3-round w3-hover-light-grey w3-center' placeholder='Mobile Number' id='MobTextBox' required type='text' pattern='(7|8|9)\\d{9}'  title='Please Enter Mobile Number' min='10' max='10' /><table id='tblDisplay' class='w3-table w3-striped w3-bordered'> <thead><tr class='w3-cyan'><th class='w3-cyan w3-border'>TrainNumber</th><th class='w3-cyan w3-border'>TrainName</th><th class='w3-cyan w3-border'>From</th><th>To</th><th class='w3-cyan w3-border'>Class</th><th class='w3-cyan w3-border'>Passengers</th><th class='w3-cyan w3-border'>Proceed</th></tr></thead><tbody>";
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        tablestring = tablestring + "<tr><td class='w3-border'>" + reader[1].ToString() + "</td><td class='w3-border'>" + reader[2].ToString() + "</td><td class='w3-border'>" + reader[5].ToString() + "</td><td class='w3-border'>" + reader[6].ToString() + "</td><td class='w3-border'>" + reader[3].ToString() + "</td><td class='w3-border'>" + reader[7].ToString() + "</td><td class='w3-border' style='display:none;'>" + reader[0].ToString() + "</td><td class='w3-border'><button class='w3-btn w3-blue' onclick='Main_Book(" + reader[0].ToString() + "," + reader[7].ToString() + ")'>Buy</button></td></tr>";
                          
                    }
                    tablestring = tablestring + "</tbody></table>";
                    TableDiv.InnerHtml = "";
                    TableDiv.InnerHtml = tablestring;
                }
                else
                {
                    TableDiv.InnerHtml = "";
                    TableDiv.InnerHtml = "<p class='w3-text-red'>Presently there are no Ticket_Sellers for Train <b class='w3-text-brown'>" + SearchTrainNumber.Text + "</b>.Try after some time.</p>";
                }
                
            }
            con.Close();
        }

    }

    
}




