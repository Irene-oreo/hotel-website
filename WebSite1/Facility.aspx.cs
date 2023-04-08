using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        Response.Redirect("Feedback.aspx");
    }

    protected void English_onClick(object sender, EventArgs e)
    {

    }
}