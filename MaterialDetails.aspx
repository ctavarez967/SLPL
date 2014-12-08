<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div>
    
        <br />
        <br />
        <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Materials]" DeleteCommand="DELETE FROM [Project_Materials] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Project_Materials] ([Type], [Title], [Author], [Publisher], [Copyright], [ISBN], [Call_Number], [Description]) VALUES (@Type, @Title, @Author, @Publisher, @Copyright, @ISBN, @Call_Number, @Description)" UpdateCommand="UPDATE [Project_Materials] SET [Type] = @Type, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Call_Number] = @Call_Number, [Description] = @Description WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Copyright" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="Call_Number" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Copyright" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="Call_Number" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

         <asp:DataList ID="materialsPhotoDataList" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
             <image ID="Image1" runat="server" 
                 Height="150px"
                 AlternateText='<%# Eval("photoDesc")%>'
                 ImageUrl='<%# Eval("Photo", "~/images/{0}")%>' 
                 Tooltip='<%# Eval("photoDesc") %>'/>
         </ItemTemplate>
         </asp:DataList>
        <br />
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource1">
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
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <InsertItemTemplate>
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

                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
         </asp:FormView>
         <br />
         <asp:Label ID="lbl_statement" runat="server"></asp:Label>

    
    </div>

</asp:Content>

