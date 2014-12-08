<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="RentMaterial.aspx.vb" Inherits="Librarian_RentMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
        Username:
        <asp:TextBox ID="tb_UserName" runat="server"></asp:TextBox>
    </p>
    <p>
        Material ID:&nbsp;
        <asp:TextBox ID="tb_MaterialID" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btn_Rent" runat="server" Text="Rent" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

