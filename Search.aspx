<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Materials]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Call_Number" HeaderText="Call Number" SortExpression="Call_Number" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="MaterialDetails.aspx?ID={0}" Text="View" />
            </Columns>
        </asp:GridView>
        <%End If%>
        <br />
        <br />
    
    </div>

</asp:Content>

