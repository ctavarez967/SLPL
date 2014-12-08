<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="ViewAllRentals.aspx.vb" Inherits="Librarian_ViewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <!-- jQuery -->
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    
    <div class="">
        <p>Current Rentals</p>
    </div>
    <br />
    <p>No. of Items Being Rented:&nbsp;&nbsp;<asp:Label ID="lbl_count" runat="server"></asp:Label>
        
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Rentals]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" cssclass="cssgridview" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" SortExpression="MaterialID" />
        <asp:BoundField DataField="RentDate" HeaderText="RentDate" SortExpression="RentDate" />
        <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
</asp:Content>

