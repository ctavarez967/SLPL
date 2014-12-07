<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchWithoutMaster.aspx.vb" Inherits="SearchWithoutMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <% If Not IsPostBack Then%>


        Search by Title:<br />
        <asp:TextBox ID="tb_Title" runat="server"></asp:TextBox>
        <br />
        <br />
        <% Else%>
        Search by Author:<br />
        <asp:TextBox ID="tb_Author" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Books %>" SelectCommand="SELECT * FROM [Project_Books]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Keyword" HeaderText="Keyword" SortExpression="Keyword" />
                <asp:BoundField DataField="CheckedIn" HeaderText="CheckedIn" SortExpression="CheckedIn" />
                <asp:BoundField DataField="CheckedOut" HeaderText="CheckedOut" SortExpression="CheckedOut" />
            </Columns>
        </asp:GridView>
        <%End If%>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
