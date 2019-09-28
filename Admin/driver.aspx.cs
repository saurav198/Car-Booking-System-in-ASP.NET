using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_driver : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Show_Car();
            Show_User();
        }
    }
    public void Show_User()
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from driver order by driver_name", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dgv1.DataSource = dt;
        dgv1.DataBind();
        con.Close();
    }
    public void Show_Car()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from car order by car_name", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        DataRow dr = dt.NewRow();
        dr["car_id"] = "-1";
        dr["car_name"] = "[Select One]";
        dt.Rows.InsertAt(dr, 0);
        ddl_user.DataSource = dt;

        ddl_user.DataValueField = "car_id";
        ddl_user.DataTextField = "car_name";
        ddl_user.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from driver where  driver_name='" + txt1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
    

    if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd = new SqlCommand("insert into driver(driver_name,driver_phone,car_id) values ('" + txt1.Text + "','" + txt2.Text + "','" + ddl_user.SelectedValue + "')", con);
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
            txt1.Text = "";
            txt2.Text = "";
            Show_Car();
            Show_User();
            
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
    protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Code = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value);
        TextBox txtPhone = (TextBox)dgv1.Rows[e.RowIndex].FindControl("txtPhone");

        con.Open();

        SqlCommand cmd = new SqlCommand("update driver set driver_phone= '" + txtPhone.Text + "' where driver_id='" + Code + "'", con);

        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            dgv1.EditIndex = -1;
            Show_User();
        }
    }
    protected void dgv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        dgv1.EditIndex = -1;
        Show_User();
    }
    protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int Code = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value);
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from driver  where driver_id='" + Code + "'", con);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                //dgvCategory.EditIndex = -1;
                Show_User();
            }
        }
        catch (Exception ex)
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Can not delete.First delete the Name";
        }
    }
    protected void dgv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dgv1.EditIndex = e.NewEditIndex;
        Show_User();
    }
}