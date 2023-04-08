using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookingDB"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Thanks.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void HomepageButton_onClick(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void RoomIntroduce_onClick(object sender, EventArgs e)
    {
        Response.Redirect("Room.aspx");
    }

    protected void Facility_onClick(object sender, EventArgs e)
    {
        Response.Redirect("Facility.aspx");
    }

    protected void Booking_onClick(object sender, EventArgs e)
    {
        Response.Redirect("Booking.aspx");
    }

    protected void Feedback_onClick(object sender, EventArgs e)
    {
        Response.Redirect("Feedback.aspx");
    }

    protected void English_onClick(object sender, EventArgs e)
    {

    }

    protected void submit_onClick(object sender, EventArgs e)
    {
        string cust_name = name.Text;
        string cust_phone = phone.Text;
        string email = mail.Text;

        int counter, housekeeper, driver, overall, again, recommend = 0;
        List<string> checked_rdb = new List<string>();
        List<int> points = new List<int>();

        foreach (var rdb in form1.Controls.OfType<RadioButton>())
        {
            string id = rdb.ID;
            if (rdb.Checked) checked_rdb.Add(id.Remove(0, 11));
        }

        foreach (var rdb in checked_rdb)
        {
            int rdb_id = Convert.ToInt32(rdb);

            if (rdb_id <= 20)
                points.Add(5 - (rdb_id - 1) % 5);
            else if (rdb_id % 2 == 1)
                points.Add(1);
            else
                points.Add(0);
        }

        counter = points[0];
        housekeeper = points[1];
        driver = points[2];
        overall = points[3];
        again = points[4];
        recommend = points[5];

        SqlCommand cmd = new SqlCommand("insert into feedback values(N'" + cust_name + "','" + cust_phone + "','" + email + "','" + counter + "','" + housekeeper + "','" + driver + "','" + overall + "','" + again + "','" + recommend + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Thanks.aspx");
    }
}