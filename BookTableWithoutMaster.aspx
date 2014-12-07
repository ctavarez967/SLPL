<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BookTableWithoutMaster.aspx.vb" Inherits="BookTableWithoutMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Books %>" SelectCommand="SELECT [ISBN], [Title], [Author], [Keyword] FROM [Project_Books]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Keyword" HeaderText="Keyword" SortExpression="Keyword" />
                <asp:HyperLinkField DataNavigateUrlFields="ISBN" DataNavigateUrlFormatString="BookDetailsWithoutMaster.aspx?ISBN={0}" Text="View" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        No. of Items in this Database:<br />
        <asp:Label ID="lbl_count" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
