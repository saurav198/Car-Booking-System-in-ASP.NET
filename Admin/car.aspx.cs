using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_car : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string dirname = "upload";
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((this.FileUpload1.PostedFile != null) && (this.FileUpload1.PostedFile.ContentLength > 0))
        {
            string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (ext.ToUpper() == ".JPG" || ext.ToUpper() == ".GIF" || ext.ToUpper() == ".PNG" || ext.ToUpper() == ".JPEG" || ext.ToUpper() == ".BMP")
            {
                string dirN = Server.MapPath(dirname);
                string file = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string savloc = dirN + "\\" + file;
                this.FileUpload1.PostedFile.SaveAs(savloc);
                string image = dirname + "/" + file;
                Image1.ImageUrl = image;
                lbl_caption.Text = file;
                //string image = "~/Admin/" + dirname + "/" + file;
            }
            else
                lbl_caption.Text = "Invalid File Format";
        }
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select * from car where car_name ='" + txt1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd1 = new SqlCommand("insert into car(car_name,car_price,car_image) values ('" + txt1.Text + "','" + txt2.Text + "','"+Image1.ImageUrl+"')", con);
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
            

        }

        else
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Data exists";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/home_ad.aspx");
    }
}