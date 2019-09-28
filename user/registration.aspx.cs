using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from usr_tbl where  email='" + txtEmail.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd = new SqlCommand("insert into usr_tbl(email,pwd,fname,lname,dob,phone) values ('" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtFName.Text + "','" + txtLName.Text + "','" + txtDob.Text + "','" + txtPhone.Text + "')", con);
                int i = cmd.ExecuteNonQuery();
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
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtPhone.Text = "";
            txtDob.Text = "";

        }
        else
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Data exists";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/login.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/Home.aspx");
    }
}