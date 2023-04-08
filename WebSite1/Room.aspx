<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="Room" %>

<!DOCTYPE html>

<link href="Room.css" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Inter' rel='stylesheet'>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>房型介紹</title>
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
            <div class="roomcontainer" style="text-align: left;">
                <img src="image/room1.jpg" style="width: 500px; height: 334px; margin-right: 40px;" />
                <div class="info">
                    <h1 class="roomtype">標準雙人房</h1>
                    <h3 class="price">定價：NT$1000/晚</h3>
                    <h3 class="description">房型敘述：</h3>
                    <asp:Button ID="booking_btn1" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking1_onClick" Text="我要訂房" Width="128px" CssClass="navbarButton"  />
                </div>
            </div>
            <div class="roomcontainer" style="text-align: right;">
                <div class="info">
                    <h1 class="roomtype">家庭四人房</h1>
                    <h3 class="price">定價：NT$2500/晚</h3>
                    <h3 class="description">房型敘述：</h3>
                    <asp:Button ID="booking_btn2" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking2_onClick" Text="我要訂房" Width="128px" CssClass="navbarButton"  />
                </div>
                <img src="image/room2.jpg" style="width: 500px; height: 334px; margin-left: 40px;" />
            </div>
            <div class="roomcontainer" style="text-align: left;">
                <img src="image/room1.jpg" style="width: 500px; height: 334px; margin-right: 40px;" />
                <div class="info">
                    <h1 class="roomtype">水漾套房</h1>
                    <h3 class="price">定價：NT$3000/晚</h3>
                    <h3 class="description">房型敘述：</h3>
                    <asp:Button ID="booking_btn3" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking3_onClick" Text="我要訂房" Width="128px" CssClass="navbarButton"  />
                </div>
            </div>
            <div class="roomcontainer" style="text-align: right;">
                <div class="info">
                    <h1 class="roomtype">皇家套房</h1>
                    <h3 class="price">定價：NT$5000/晚</h3>
                    <h3 class="description">房型敘述：</h3>
                    <asp:Button ID="booking_btn4" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking4_onClick" Text="我要訂房" Width="128px" CssClass="navbarButton"  />
                </div>
                <img src="image/room2.jpg" style="width: 500px; height: 334px; margin-left: 40px;" />
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
