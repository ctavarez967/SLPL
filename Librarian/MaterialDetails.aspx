<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
     <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" 
            SelectCommand="SELECT [ID], [Type], [Title], [Author], [Publisher], [Copyright], [ISBN], [Call_Number], [Description], [Photo], [photoDesc] 
            FROM [Project_Materials] WHERE ([ID] = @ID)" 
            DeleteCommand="DELETE FROM [Project_Materials] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Project_Materials] ([Type], [Call_Number], [Title], [Author], [Publisher], [Copyright], [ISBN]) 
            VALUES (@Type, @Call_Number, @Title, @Author, @Publisher, @Copyright, @ISBN)" 
            UpdateCommand="UPDATE [Project_Materials] 
            SET [Type] = @Type, [Call_Number] =@Call_Number, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copywrite] = @Copywrite, [ISBN] = @ISBN WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" />
                <asp:Parameter Name="Type" />
                <asp:Parameter Name="Call_Number" />
                <asp:Parameter Name="Title" />
                <asp:Parameter Name="Author" />
                <asp:Parameter Name="Publisher" />
                <asp:Parameter Name="Copyright" />
                <asp:Parameter Name="ISBN" />
                
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Type" />
                <asp:Parameter Name="Call_Number" />
                <asp:Parameter Name="Title" />
                <asp:Parameter Name="Author" />
                <asp:Parameter Name="Publisher" />
                <asp:Parameter Name="Copywrite" />
                <asp:Parameter Name="ISBN" />
                
                <asp:Parameter Name="ID" />
            </UpdateParameters>
        </asp:SqlDataSource>

                 <br />

        <br />
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
             
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
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <InsertItemTemplate>
                 Type:
                 <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                 <br />
                 Title:
                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                 <asp:RequiredFieldValidator ID="rfv_Title" runat="server" ErrorMessage="Please enter the Title" CssClass="validationError" ControlToValidate="TitleTextBox"></asp:RequiredFieldValidator>
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
                 <asp:RequiredFieldValidator ID="rfv_ISBN" runat="server" ErrorMessage="Please enter the ISBN" CssClass="validationError" ControlToValidate="ISBNTextBox"></asp:RequiredFieldValidator>
                 <br />
                 Call_Number:
                 <asp:TextBox ID="Call_NumberTextBox" runat="server" Text='<%# Bind("Call_Number") %>' />
                 <asp:RequiredFieldValidator ID="rfv_Call_Number" runat="server" ErrorMessage="Please enter the material's Call Number" CssClass="validationError" ControlToValidate="Call_NumberTextBox"></asp:RequiredFieldValidator>
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
                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </InsertItemTemplate>
             <ItemTemplate>
                 <asp:Image Height="150px" ID="Image1" runat="server" ImageUrl='<%# Eval("Photo", "~/images/{0}")%>' /> <br />
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
                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             </asp:FormView>

         
         <br />
         <asp:Label ID="lbl_statement" runat="server"></asp:Label>

    
    </div>

</asp:Content>

