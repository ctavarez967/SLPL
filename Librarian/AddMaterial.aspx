<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="AddMaterial.aspx.vb" Inherits="Librarian_AddMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
      <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" class="table3" DataKeyNames="ID">
          <EditItemTemplate>
              ID:
              <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
              <br />
              Type:
              <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
              <br />
              Title:
              <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
              <br />
              Author:
              <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
              <br />
              Publisher:
              <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
              <br />
              Copyright:
              <asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' />
              <br />
              ISBN:
              <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
              <br />
              Call_Number:
              <asp:TextBox ID="Call_NumberTextBox" runat="server" Text='<%# Bind("Call_Number") %>' />
              <br />
              Description:
              <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
              <br />
              Photo:
              <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>' />
              <br />
              photoDesc:
              <asp:TextBox ID="photoDescTextBox" runat="server" Text='<%# Bind("photoDesc") %>' />
              <br />
              Available:
              <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
              <br />
              <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
              &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </EditItemTemplate>
          <InsertItemTemplate>
              Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            <br />
              Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
             <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="Please enter the Title of the material" CssClass="validationError" ControlToValidate="TitleTextBox"></asp:RequiredFieldValidator>
            <br />
              Author:
            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
            <br />
              Publisher:
            <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
            <br />
              Copyright:
            <asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' />
            <br />
              ISBN:
            <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the material's ISBN" CssClass="validationError" ControlToValidate="ISBNTextBox"></asp:RequiredFieldValidator>
            <br />
              Call_Number:
            <asp:TextBox ID="Call_NumberTextBox" runat="server" Text='<%# Bind("Call_Number") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the material's Call Number" CssClass="validationError" ControlToValidate="Call_NumberTextBox"></asp:RequiredFieldValidator>
              <br />
              Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
              Photo:
            <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>' />
            <br />
              photoDesc:
            <asp:TextBox ID="photoDescTextBox" runat="server" Text='<%# Bind("photoDesc") %>' />
            <br />
              Available:
            <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </InsertItemTemplate>
          <ItemTemplate>
              ID:
              <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
              <br />
              Type:
              <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
              <br />
              Title:
              <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
              <br />
              Author:
              <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
              <br />
              Publisher:
              <asp:Label ID="PublisherLabel" runat="server" Text='<%# Bind("Publisher") %>' />
              <br />
              Copyright:
              <asp:Label ID="CopyrightLabel" runat="server" Text='<%# Bind("Copyright") %>' />
              <br />
              ISBN:
              <asp:Label ID="ISBNLabel" runat="server" Text='<%# Bind("ISBN") %>' />
              <br />
              Call_Number:
              <asp:Label ID="Call_NumberLabel" runat="server" Text='<%# Bind("Call_Number") %>' />
              <br />
              Description:
              <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
              <br />
              Photo:
              <asp:Label ID="PhotoLabel" runat="server" Text='<%# Bind("Photo") %>' />
              <br />
              photoDesc:
              <asp:Label ID="photoDescLabel" runat="server" Text='<%# Bind("photoDesc") %>' />
              <br />
              Available:
              <asp:Label ID="AvailableLabel" runat="server" Text='<%# Bind("Available") %>' />
              <br />


          </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Materials]"></asp:SqlDataSource>
        <br />
    </>
    <br />
     <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
     Iowa 2014, All rights Reserved.
    </div>


</asp:Content>

