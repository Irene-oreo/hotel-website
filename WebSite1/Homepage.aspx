<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<link href="Homepage.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 飯店首頁</title>
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
            <div class="imformation">
                <asp:Label ID="hotelName" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="True" CssClass="hotelName" Height="300px" Text="NTUT_IAE Hotel" Width="100%" Font-Names="Arial Black" Font-Overline="False" Font-Size="96px" Font-Strikeout="False" Font-Underline="False"></asp:Label>
                <asp:Label ID="descripition" runat="server" Height="200px" Text="Some descripition of hotel " Width="880px"></asp:Label>
                <asp:Image ID="homepageImage" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/image/20220529111902_42.jpg" Width="800px" BorderStyle="None" />
            </div>
            <div class="imageButton">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="32px" ForeColor="White" Height="198px" Text="房型介紹" Width="300px" onClick="RoomIntroduce_onClick" />
                <asp:Button ID="Button2" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="32px" ForeColor="White" Height="198px" Text="飯店設施" Width="300px" onClick="Facility_onClick" />
                <asp:Button ID="Button3" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="32px" ForeColor="White" Height="198px" Text="意見回饋" Width="300px" onClick="Feedback_onClick" />
            </div>   
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
