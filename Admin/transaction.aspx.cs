using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_transaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (Int16.Parse(TextBox1.Text) != 0)
        {
            TextBox1.Text = "";
            Label4.Visible = false;
            Label5.Visible = true;
        }

        else
        {
            Label4.Visible = true;
           
        }
        if (Label5.Visible)
        {
            RequiredFieldValidator1.Enabled = false;
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/booking.aspx");
    }
}