<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="MaterialDueToday.aspx.vb" Inherits="Librarian_MaterialDueToday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RentalID" HeaderText="Rental ID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
                <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
                <asp:BoundField DataField="MaterialID" HeaderText="Material ID" SortExpression="MaterialID" />
                <asp:BoundField DataField="RentDate" HeaderText="Rent Date" SortExpression="RentDate" />
                <asp:BoundField DataField="DateDueBack" HeaderText="Date Due Back" SortExpression="DateDueBack" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

