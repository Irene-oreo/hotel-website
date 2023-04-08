<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<link href="Booking.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 飯店首頁</title>
</head>
<body style="background-color: #D3E7FF; position:absolute;top:0px !important; margin:0px" >
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookingDB %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Booking] ([Id], [startdate], [enddate], [roomtype], [name], [email], [phone], [price]) VALUES (@Id, @startdate, @enddate, @roomtype, @name, @email, @phone, @price)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [startdate] = @startdate, [enddate] = @enddate, [roomtype] = @roomtype, [name] = @name, [email] = @email, [phone] = @phone, [price] = @price WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="startdate" Type="String" />
                <asp:Parameter Name="enddate" Type="String" />
                <asp:Parameter Name="roomtype" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="startdate" Type="String" />
                <asp:Parameter Name="enddate" Type="String" />
                <asp:Parameter Name="roomtype" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="navbar" style="margin: 0px; color: #9AB8DC; width: 100%; height: 54px; position: fixed; background-color: #9AB8DC; ">
            <asp:Button ID="HomepageButton" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="22px" Height="54px" onClick="HomepageButton_onClick" Text="NTUT_IAE Hotel" Width="214px" Font-Names="Arial Black"  />
            <asp:Button ID="RoomIntroduce" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="RoomIntroduce_onClick" Text="房型介紹" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Facility" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Facility_onClick" Text="飯店設施" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Booking" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Booking_onClick" Text="我要訂房" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="Feedback" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="Feedback_onClick" Text="意見回饋" Width="110px" CssClass="navbarButton"  />
            <asp:Button ID="English" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="16px" Height="54px" onClick="English_onClick" Text="English" Width="110px" CssClass="navbarButton"  />
        </div>
        <div class="container">
            <div class="Calendar">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar1_SelectionChanged" SelectionMode="DayWeekMonth" OnDayRender="Calendar1_DayRender">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </div>
            <div class="content">
                <asp:Label ID="Label1" runat="server" Text="入住日期："></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="退房日期："></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="房型"></asp:Label>
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>標準雙人房</asp:ListItem>
                    <asp:ListItem>家庭四人房</asp:ListItem>
                    <asp:ListItem>水漾套房</asp:ListItem>
                    <asp:ListItem>皇家套房</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" Text="優惠代碼"></asp:Label>
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
                <asp:Label ID="Label5" runat="server" Text="價格"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="1000"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="訂購人訊息"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="12/16/2022"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="12/15/2022"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Email" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="確定訂房" OnClick="Button1_Click" />
                <asp:TextBox ID="TextBox3" runat="server" Placeholder="姓名"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" Placeholder="電話"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="訂房成功！可關閉此頁面" Visible="false"></asp:Label>
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
