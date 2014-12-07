<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BookDetailsWithoutMaster.aspx.vb" Inherits="BookDetailsWithoutMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Books %>" SelectCommand="SELECT * FROM [Project_Books] WHERE ([ISBN] = @ISBN)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ISBN" QueryStringField="ISBN" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Keyword" HeaderText="Keyword" SortExpression="Keyword" />
                <asp:BoundField DataField="CheckedIn" HeaderText="CheckedIn" SortExpression="CheckedIn" />
                <asp:BoundField DataField="CheckedOut" HeaderText="CheckedOut" SortExpression="CheckedOut" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
