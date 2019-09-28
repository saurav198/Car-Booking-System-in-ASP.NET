using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_booking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            lbl_caption.Text = "Welcome To Booking A Car";
            show_car();
            show_location();
            
        }
       
    }
    public void show_car()
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
        ddl_car.DataSource = dt;

        ddl_car.DataValueField = "car_id";
        ddl_car.DataTextField = "car_name";
        ddl_car.DataBind();
    }
    public void show_location()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from location order by location", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        DataRow dr = dt.NewRow();
        dr["locid"] = "-1";
        dr["location"] = "[Select One]";
        dt.Rows.InsertAt(dr, 0);
        ddl_source.DataSource = dt;
        ddl_destination.DataSource = dt;

        ddl_source.DataValueField = "locid";
        ddl_source.DataTextField = "location";
        ddl_source.DataBind();
        ddl_destination.DataValueField = "locid";
        ddl_destination.DataTextField = "location";
        ddl_destination.DataBind();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        int car_id = Convert.ToInt32(ddl_car.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from driver where car_id='" + car_id + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        lbl_caption1.Text = "your car is book  "  ;
        lbl_caption3.Text = "driver details: " 
                             + "name: " 
                             +" "
                             + reader["driver_name"].ToString() 
                             +"      "
                             + "phone: " +" "
                             + reader["driver_phone"].ToString();
        con.Close(); 
     }
    protected void  Button1_Click(object sender, EventArgs e)
{
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("~/Login/login.aspx");
   }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int car_id = Convert.ToInt32(ddl_car.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from car where car_id='" + car_id + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        lbl_caption2.Text = "your trip is ended....................    " +"Your bill is RS."+ reader["car_price"].ToString();
        con.Close(); 
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/transaction.aspx");
    }
}
        
    