<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facility.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<link href="Facility.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>飯店設施</title>
</head>
<body style="background-color: #D3E7FF; position:absolute;top:0px !important; margin:0px" >
    <form id="form1" runat="server">
        <div class="navbar" style="margin: 0px; color: #9AB8DC; width: 100%; height: 54px; position: fixed; background-color: #9AB8DC; ">
            <asp:Button ID="HomepageButton" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="22px" Height="54px" onClick="HomepageButton_onClick" Text="NTUT_IAE Hotel" Width="214px" Font-Names="Arial Black"  />
            <asp:Button ID="RoomIntroduce" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="RoomIntroduce_onClick" Text="房型介紹" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Facility" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Facility_onClick" Text="飯店設施" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Booking" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking_onClick" Text="我要訂房" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Feedback" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Feedback_onClick" Text="意見回饋" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="English" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="English_onClick" Text="English" Width="110px" CssClass="navbarButton"  />
        </div>
        <div class="container">
               <asp:Image ID="Image1" runat="server" ImageUrl="~/image/飯店設施.PNG" Width="800px" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/飯店設施1.jpg" Width="700px" />
        </div>
         
        
         
        <div class="footer">
            <div class="contact">
                <asp:Label ID="adress" runat="server" Text="Address：忠孝東路三段1號" BorderStyle="None" Font-Bold="True" Font-Size="20px" ForeColor="#D3E7FF" Font-Names="Arial"></asp:Label>
                <asp:Label ID="telephone" runat="server" Text="Telephone：(02)2771-2171" Font-Bold="True" Font-Size="20px" ForeColor="#D3E7FF" Font-Names="Arial"></asp:Label>
                <asp:Label ID="email" runat="server" Text="Email：ntut_iae_hotel@gmail.com" BorderStyle="None" Font-Bold="True" Font-Size="20px" ForeColor="#D3E7FF" Font-Names="Arial"></asp:Label>
            </div>
            <asp:Label ID="footerHotelName" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="20px" ForeColor="#D3E7FF" Text="- NTUT_IAE Hotel -"></asp:Label>

        </div>
            
    </form>
</body>
</html>
