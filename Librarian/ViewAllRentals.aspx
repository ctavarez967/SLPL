<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="ViewAllRentals.aspx.vb" Inherits="Librarian_ViewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="">
        <p>Current Rentals</p>
    </div>
    <br />
    <p>No. of Items Being Rented:&nbsp;&nbsp;<asp:Label ID="lbl_count" runat="server"></asp:Label>
        
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" cssclass="cssgridview" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="RentalID" HeaderText="Rental ID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
        <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
        <asp:BoundField DataField="MaterialID" HeaderText="Material ID" SortExpression="MaterialID" />
        <asp:BoundField DataField="RentDate" HeaderText="Rental Date" SortExpression="RentDate" />
        <asp:BoundField DataField="DateDueBack" HeaderText="Due Date" SortExpression="DateDueBack" />
    </Columns>
</asp:GridView>




</asp:Content>

