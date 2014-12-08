<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="OverdueReport.aspx.vb" Inherits="Librarian_OverdueReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    <div class="">
        <p>Materials Over Due Report</p>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT [RentalID], [UserID], [MaterialID], [RentDate], [DateDueBack] FROM [Project_Rentals]"></asp:SqlDataSource>
  
    <asp:GridView ID="GridView1" runat="server" CssClass="cssgridview" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1" AllowSorting="True" Width="950px">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="Rental ID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
            <asp:BoundField DataField="MaterialID" HeaderText="Material ID" SortExpression="MaterialID" />
            <asp:BoundField DataField="RentDate" HeaderText="Rental Date" SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="Material Return Date" SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>
   

</asp:Content>

