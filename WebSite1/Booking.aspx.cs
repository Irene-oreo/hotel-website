using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookingDB"].ConnectionString);

    protected void Button1_Click1(object sender, EventArgs e)
    {

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string startdate = Label8.Text;
        string enddate = Label7.Text;
        string roomtype = DropDownList1.Text;
        string name = TextBox3.Text;
        string email = TextBox2.Text;
        string phone = TextBox4.Text;
        int price = Convert.ToInt32(Label9.Text);

        SqlCommand cmd = new SqlCommand("insert into booking values('"+startdate+"','"+enddate+"',N'"+roomtype+"',N'"+name+"','"+email+"','"+phone+"','"+price+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        Button1.Visible = false;
        Label10.Visible = true;
    }

    //建立型別為DateTime的陣列dates
    System.Collections.Generic.List<DateTime> dates;

    //在PageLoad中初始化dates，如果有ViewState["dates"]就用，沒有就new
    protected void Page_Load(object sender, EventArgs e)

    {
        con.Open();

        if (ViewState["dates"] != null)

            dates = (System.Collections.Generic.List<DateTime>)ViewState["dates"];

        else

            dates = new System.Collections.Generic.List<DateTime>();

        if (Request.Cookies["room"] != null)
        {
            string cookie = HttpUtility.UrlDecode(Request.Cookies["room"].Value);
            DropDownList1.Items.FindByText(cookie).Selected = true;
            Response.Cookies["room"].Expires = DateTime.Now.AddDays(-1);
        }

        string startdate = Label8.Text;
        string enddate = Label7.Text;

        DateTime sdt = DateTime.ParseExact(startdate, "MM/dd/yyyy", CultureInfo.InvariantCulture);
        DateTime edt = DateTime.ParseExact(enddate, "MM/dd/yyyy", CultureInfo.InvariantCulture);
        int days = Convert.ToInt32(edt.Subtract(sdt).TotalDays);


        if (DropDownList1.Text == "標準雙人房")
            Label9.Text = Convert.ToString(1000*days);
        else if (DropDownList1.Text == "家庭四人房")
            Label9.Text = Convert.ToString(2500 * days);
        else if (DropDownList1.Text == "水漾套房")
            Label9.Text = Convert.ToString(3000 * days);
        else if (DropDownList1.Text == "皇家套房")
            Label9.Text = Convert.ToString(5000 * days);
    }

    //日期控制項改變選取日時，就寫入dates中，
    //然後將選取日改為Datetime的最小值(配合畫面用)
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)

    {
        
        foreach (DateTime dt in Calendar1.SelectedDates)

        {
            
            if (dates.Contains(dt))

                dates.Remove(dt);

            else

                dates.Add(dt);

        }
        if (dates.Count > 1)
        {
            if (dates[0] > dates[1])
            {
                Label7.Text = String.Format("{0:MM/dd/yyyy}", dates[0]);
                Label8.Text = String.Format("{0:MM/dd/yyyy}", dates[1]);
            }
            else
            {
                Label7.Text = String.Format("{0:MM/dd/yyyy}", dates[1]);
                Label8.Text = String.Format("{0:MM/dd/yyyy}", dates[0]);
            }

            string startdate = Label8.Text;
            string enddate = Label7.Text;

            DateTime sdt = DateTime.ParseExact(startdate, "MM/dd/yyyy", CultureInfo.InvariantCulture);
            DateTime edt = DateTime.ParseExact(enddate, "MM/dd/yyyy", CultureInfo.InvariantCulture);
            int days = Convert.ToInt32(edt.Subtract(sdt).TotalDays);


            if (DropDownList1.Text == "標準雙人房")
                Label9.Text = Convert.ToString(1000 * days);
            else if (DropDownList1.Text == "家庭四人房")
                Label9.Text = Convert.ToString(2500 * days);
            else if (DropDownList1.Text == "水漾套房")
                Label9.Text = Convert.ToString(3000 * days);
            else if (DropDownList1.Text == "皇家套房")
                Label9.Text = Convert.ToString(5000 * days);
        }
        Calendar1.SelectedDate = DateTime.MinValue;
    }



    //日期控制項繪製時，如為非本月，清除。
    //如為今日，設成跟日期控制項的預設底色。(分成周未跟平日)
    //如有出現在dates中，設為淺灰色
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)

    {

        if (e.Day.IsOtherMonth)

        {

            e.Cell.Controls.Clear();

        }

        else

        {

            if (e.Day.Date == DateTime.Today)

                if (e.Day.IsWeekend)

                    e.Cell.BackColor = Calendar1.WeekendDayStyle.BackColor;

                else

                    e.Cell.BackColor = Calendar1.DayStyle.BackColor;



            if (dates.Contains(e.Day.Date))

                e.Cell.BackColor = System.Drawing.Color.LightGray;

        }

    }



    //在Page_PreRender中，將dates存入ViewState["dates"]
    protected void Page_PreRender(object sender, EventArgs e)

    {

        ViewState["dates"] = dates;

    }



    //設定唯讀的屬性，回傳 日期陣列，接受 日期陣列
    public System.Collections.Generic.List<DateTime> SelectDates

    {

        get

        {

            if (ViewState["dates"] != null)

                dates = (System.Collections.Generic.List<DateTime>)ViewState["dates"];

            else

                dates = new System.Collections.Generic.List<DateTime>();

            dates.Sort();

            return dates;

        }


        set

        {

            ViewState["dates"] = value;

        }

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
}