<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<link href="Analysis.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 飯店首頁</title>
</head>
<body style="background-color: #D3E7FF; position:absolute;top:0px !important; margin:0px; width:100%;" >
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="title"style="position:relative; top:15px;">住宿滿意度分析</h1>
             <asp:Label ID="Label1" runat="server" Text="問卷總數"></asp:Label>
             <asp:Label ID="Label2" runat="server" Text="20"></asp:Label>
            <h4 class="baseline" style="position:relative; top:40px; left:0%;">人員滿意度</h4><br/>
             <asp:Label ID="Label3" runat="server" Text="櫃台接待"></asp:Label>
             <asp:Label ID="Label4" runat="server" Text="4.5"></asp:Label>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="points" YValueMembers="counter">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <br />
             <asp:Label ID="Label5" runat="server" Text="房務人員"></asp:Label>
             <asp:Label ID="Label6" runat="server" Text="4.5"></asp:Label>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="points" YValueMembers="housekeeper">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <br />
             <asp:Label ID="Label7" runat="server" Text="司機接送"></asp:Label>&nbsp;
            <asp:Label ID="Label8" runat="server" Text="4.5"></asp:Label>
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="points" YValueMembers="driver">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <br />
             <asp:Label ID="Label9" runat="server" Text="整體滿意度"></asp:Label>
             <asp:Label ID="Label10" runat="server" Text="4.5"></asp:Label>
            <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="points" YValueMembers="overall">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <br />
             <asp:Label ID="Label11" runat="server" Text="回訪意願"></asp:Label>
             <asp:Label ID="Label12" runat="server" Text="0.7"></asp:Label>
            <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource2">
            <series>
                <asp:Series Name="Series1" XValueMember="YN" YValueMembers="again">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <br />
             <asp:Label ID="Label13" runat="server" Text="推薦指數"></asp:Label>
             <asp:Label ID="Label14" runat="server" Text="0.7"></asp:Label>
            <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource2">
            <series>
                <asp:Series Name="Series1" XValueMember="YN" YValueMembers="recommend">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookingDB %>" DeleteCommand="DELETE FROM [Points] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Points] ([points], [counter], [housekeeper], [driver], [overall]) VALUES (@points, @counter, @housekeeper, @driver, @overall)" SelectCommand="SELECT * FROM [Points]" UpdateCommand="UPDATE [Points] SET [points] = @points, [counter] = @counter, [housekeeper] = @housekeeper, [driver] = @driver, [overall] = @overall WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="points" Type="Int32" />
                    <asp:Parameter Name="counter" Type="Int32" />
                    <asp:Parameter Name="housekeeper" Type="Int32" />
                    <asp:Parameter Name="driver" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="points" Type="Int32" />
                    <asp:Parameter Name="counter" Type="Int32" />
                    <asp:Parameter Name="housekeeper" Type="Int32" />
                    <asp:Parameter Name="driver" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bookingDB %>" DeleteCommand="DELETE FROM [YN] WHERE [Id] = @Id" InsertCommand="INSERT INTO [YN] ([Id], [YN], [again], [recommend]) VALUES (@Id, @YN, @again, @recommend)" SelectCommand="SELECT * FROM [YN]" UpdateCommand="UPDATE [YN] SET [YN] = @YN, [again] = @again, [recommend] = @recommend WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="YN" Type="String" />
                    <asp:Parameter Name="again" Type="Int32" />
                    <asp:Parameter Name="recommend" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="YN" Type="String" />
                    <asp:Parameter Name="again" Type="Int32" />
                    <asp:Parameter Name="recommend" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
