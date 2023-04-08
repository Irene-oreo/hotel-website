<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %> 
<link href="Feedback.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>意見回饋</title>
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
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookingDB %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Feedback] ([name], [phone], [email], [counter], [housekeeper], [driver], [overall], [again], [recommend]) VALUES (@name, @phone, @email, @counter, @housekeeper, @driver, @overall, @again, @recommend)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [name] = @name, [phone] = @phone, [email] = @email, [counter] = @counter, [housekeeper] = @housekeeper, [driver] = @driver, [overall] = @overall, [again] = @again, [recommend] = @recommend WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="counter" Type="Int32" />
                    <asp:Parameter Name="housekeeper" Type="Int32" />
                    <asp:Parameter Name="driver" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                    <asp:Parameter Name="again" Type="Int32" />
                    <asp:Parameter Name="recommend" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="counter" Type="Int32" />
                    <asp:Parameter Name="housekeeper" Type="Int32" />
                    <asp:Parameter Name="driver" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                    <asp:Parameter Name="again" Type="Int32" />
                    <asp:Parameter Name="recommend" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
        
            <h1 class="title"style="position:relative; top:65px; left:76.5%">住宿滿意度調查表</h1>
            <h4 class="description" style="position:relative; top:130px; left:0%;">親愛的貴賓您好：<br>
            感謝您選擇NTUT_IAE Hotel休憩，為了提供您更好的住宿品質，請您協助填寫此份住宿滿意度調查表。<br>
            填寫此表單即能參加抽獎，最大獎品為免費入住總統套房一個月哦！<br>
            NTUT_IAE Hotel希望能讓每一位貴賓的旅程更加完美，您寶貴的建議是我們成長的動力。</h4>
            <h4 class="indication" style="position:relative; top:240px; right: 100%;">01 基本住宿資訊</h4>
            <p class="baseline" style="position:relative; top:290px; right:122.5%;">姓名:
                <asp:TextBox ID="name" runat="server" OnTextChanged="TextBox1_TextChanged" Width="100px"></asp:TextBox>
            </p>
            <p class="baseline" style="position:relative; top:325px; right:144%;">手機:
                <asp:TextBox ID="phone" runat="server" OnTextChanged="TextBox2_TextChanged" Width="200px"></asp:TextBox><br/>
            </p>
            <p class="baseline" style="position:relative; top:363px; right:180.5%;">Email:
                <asp:TextBox ID="mail" runat="server" OnTextChanged="TextBox3_TextChanged" Width="200px"></asp:TextBox><br/>
            </p>
            <p class="baseline" style="position:relative; top:395px; right:218.5%;">客房號碼:
                <asp:TextBox ID="roomnumber" runat="server" OnTextChanged="TextBox4_TextChanged" Width="100px"></asp:TextBox><br/>
            </p>
            <p class="baseline" style="position:relative; top:430px; right:245%;">入住日期:
                <asp:TextBox ID="indate" runat="server" PlaceHolder="西元年/月份/日期" OnTextChanged="TextBox5_TextChanged" Width="200px"></asp:TextBox><br/>
            </p>
            <p class="baseline" style="position:relative; top:465px; right:286.9%;">退房日期:
                <asp:TextBox ID="outdate" runat="server" PlaceHolder="西元年/月份/日期" OnTextChanged="TextBox6_TextChanged" Width="200px"></asp:TextBox><br/>
            </p>
            
            <h4 class="indication" style="position:relative; top:500px; right: 328.8%;">02 各項滿意度</h4>
            <h4 class="baseline" style="position:relative; top:543px; right:348%;">人員滿意度</h4><br/>
            <h4 class="standards" style="position:relative; top:590px; right:330%; color:#8F8888;">非常滿意</h4>
            <h4 class="standards" style="position:relative; top:590px; right:320%; color:#8F8888;">滿意</h4>
            <h4 class="standards" style="position:relative; top:590px; right:310%; color:#8F8888;">普通</h4>
            <h4 class="standards" style="position:relative; top:590px; right:300%; color:#8F8888;">不滿意</h4>
            <h4 class="standards" style="position:relative; top:590px; right:290%; color:#8F8888;">非常不滿意</h4>
            <h4 class="baseline" style="position:relative; top:640px; right:399.5%; color:#8F8888;">櫃台接待</h4>
            <h4 class="baseline" style="position:relative; top:690px; right:409.3%; color:#8F8888;">房務人員</h4>
            <h4 class="baseline" style="position:relative; top:740px; right:419.1%; color:#8F8888;">司機接送</h4>
            <h4 class="baseline" style="position:relative; top:790px; right:428.9%; color:#8F8888;">整體滿意度</h4>
            
            <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="reception" style="position:relative; top:665px; right:407.5%;" />
            <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="reception" style="position:relative; top:665px; right:393.5%;" />
            <asp:RadioButton ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="reception" style="position:relative; top:665px; right:382%;" />
            <asp:RadioButton ID="RadioButton4" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="reception" style="position:relative; top:665px; right:369.5%;" />
            <asp:RadioButton ID="RadioButton5" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="reception" style="position:relative; top:665px; right:352.5%;" />
            <asp:RadioButton ID="RadioButton6" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="staff" style="position:relative; top:715px; right:423.6%;" />
            <asp:RadioButton ID="RadioButton7" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="staff" style="position:relative; top:715px; right:409.5%;" />
            <asp:RadioButton ID="RadioButton8" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="staff" style="position:relative; top:715px; right:398%;" />
            <asp:RadioButton ID="RadioButton9" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="staff" style="position:relative; top:715px; right:385.5%;" />
            <asp:RadioButton ID="RadioButton10" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="staff" style="position:relative; top:715px; right:368.5%; " />
            <asp:RadioButton ID="RadioButton11" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="driver" style="position:relative; top:765px; right:439.6%;" />
            <asp:RadioButton ID="RadioButton12" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="driver" style="position:relative; top:765px; right:425.5%;" />
            <asp:RadioButton ID="RadioButton13" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="driver" style="position:relative; top:765px; right:414%;" />
            <asp:RadioButton ID="RadioButton14" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="driver" style="position:relative; top:765px; right:401.5%;" />
            <asp:RadioButton ID="RadioButton15" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="driver" style="position:relative; top:765px; right:384.5%;" />
            <asp:RadioButton ID="RadioButton16" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="whole" style="position:relative; top:815px; right:455.7%;"/>
            <asp:RadioButton ID="RadioButton17" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="whole" style="position:relative; top:815px; right:441.5%;"/>
            <asp:RadioButton ID="RadioButton18" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="whole" style="position:relative; top:815px; right:430%;"/>
            <asp:RadioButton ID="RadioButton19" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="whole" style="position:relative; top:815px; right:417.5%;"/>
            <asp:RadioButton ID="RadioButton20" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="whole" style="position:relative; top:815px; right:400.5%;"/>
            <h4 class="inquiries" style="position:relative; top:850px; right: 505.6%;">您是否會考慮再度下榻NTUT_IAE Hotel?</h4>
            <asp:RadioButton ID="RadioButton21" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="yon1" style="position:relative; top:920px; right:560%;"/>
            <asp:RadioButton ID="RadioButton22" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="yon1" style="position:relative; top:920px; right:520%;"/>
            <h4 class="baseline" style="position:relative; top:897px; right:563%;">是</h4>
            <h4 class="baseline" style="position:relative; top:897px; right:522%;">否</h4>
            <h4 class="inquiries" style="position:relative; top:960px; right: 571.6%;">您是否有向親友推薦下榻NTUT_IAE Hotel的意願?</h4>
            <asp:RadioButton ID="RadioButton23" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="yon2" style="position:relative; top:1028px; right:638.1%;"/>
            <asp:RadioButton ID="RadioButton24" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="yon2" style="position:relative; top:1028px; right:598.1%;"/>
            <h4 class="baseline" style="position:relative; top:1005px; right:641%;">是</h4>
            <h4 class="baseline" style="position:relative; top:1005px; right:600.2%;">否</h4>
            <asp:Button ID="submit" runat="server" BackColor="#9AB8DC" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Size="20px" OnClick="submit_onClick" Text="確定送出" Width
                ="280px" Height="58.94px"/>
            
            <div class="footer" >
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
