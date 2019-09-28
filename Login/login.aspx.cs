using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from usr_tbl where  email='" + txtEmail.Text + "'and pwd='" + txtPassword.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        if (dt.Rows.Count == 1)
        {
            Session["email"] = txtEmail.Text;
            
            lbl_caption.Text = "Login Successful";
            Response.Redirect("~/user/booking.aspx");
        }
        else
        {
            lbl_caption.Text = "Invalid username or password";
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/registration.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
}