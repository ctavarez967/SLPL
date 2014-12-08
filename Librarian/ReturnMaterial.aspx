<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="ReturnMaterial.aspx.vb" Inherits="Librarian_ReturnMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
    </p>
    <p>
        Returned Material ID: <asp:TextBox ID="tb_MaterialID" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btn_Return" runat="server" Text="Return" />
    </p>
</asp:Content>

