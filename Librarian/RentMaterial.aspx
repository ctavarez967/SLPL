﻿<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="RentMaterial.aspx.vb" Inherits="Librarian_RentMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
    </p>
    <p>
        Username:
        <asp:TextBox ID="tb_Username" runat="server"></asp:TextBox>
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
