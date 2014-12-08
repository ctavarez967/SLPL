<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="PatronSearch.aspx.vb" Inherits="PatronSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Search by Last Name: <br />
    <asp:TextBox ID="tb_LName" runat="server"></asp:TextBox><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Patron]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="PatronID" DataNavigateUrlFormatString="PatronDetails.aspx?PatronID={0}" Text="Select" />
        </Columns>
    </asp:GridView>








</asp:Content>

