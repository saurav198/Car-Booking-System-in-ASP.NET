using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_location : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from location where location ='" + txt1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//activation of connection of object
                SqlCommand cmd = new SqlCommand("insert into location(location) values('" + txt1.Text + "')", con);
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    lbl_caption.Text = "Successfully registered";
                }
            }
            catch
            {
                lbl_caption.Text = "Error occured";

            }
            
            txt1.Text = " ";

            
        }
        else
        {
            lbl_caption.Text = "data exists";
        }
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/home_ad.aspx");
    }
}