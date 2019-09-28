using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Admin_ad_reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/admin.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd3 = new SqlCommand("select * from admin where uname ='" + txt1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd1 = new SqlCommand("insert into admin(uname,pwd,fname,lname,phone) values ('" + txt1.Text + "','" +  txt2.Text + "','" + txtFName.Text + "','" + txtLName.Text + "','" + txt6.Text + "')", con);
                int i = cmd1.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    lbl_caption.Text = "Succesfully Registerd";
                }
            }
            catch
            {
                lbl_caption.Text = "Error occured";
            }
            txt1.Text = "";
            txt2.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txt6.Text = "";

        }

        else
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Data exists";
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
}
