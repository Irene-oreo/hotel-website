using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Room : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
        Response.Redirect("Booking.aspx");
    }

    protected void English_onClick(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Booking1_onClick(object sender, EventArgs e)
    {
        Response.Cookies["room"].Value = HttpUtility.UrlEncode("標準雙人房");
        Response.Redirect("Booking.aspx");
    }
    protected void Booking2_onClick(object sender, EventArgs e)
    {
        Response.Cookies["room"].Value = HttpUtility.UrlEncode("家庭四人房");
        Response.Redirect("Booking.aspx");
    }
    protected void Booking3_onClick(object sender, EventArgs e)
    {
        Response.Cookies["room"].Value = HttpUtility.UrlEncode("水漾套房");
        Response.Redirect("Booking.aspx");
    }
    protected void Booking4_onClick(object sender, EventArgs e)
    {
        Response.Cookies["room"].Value = HttpUtility.UrlEncode("皇家套房");
        Response.Redirect("Booking.aspx");
    }
}