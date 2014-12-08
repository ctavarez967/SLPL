<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT [ID], [Author], [Title], [Publisher], [Copyright], [ISBN], [Call_Number], [Type], [Description], [Photo], [photoDesc] FROM [Project_Materials]">
        </asp:SqlDataSource>

                 <br />

        <br />
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource1">
             
             <EditItemTemplate>
   
                 ID:
                 <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                 <br />
                 Author:
                 <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                 <br />
                 Title:
                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
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
                 Type:
                 <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
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
             <InsertItemTemplate>
                 Author:
                 <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                 <br />
                 Title:
                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
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
                 Type:
                 <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
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
                
                 
                 ID:
                 <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                 <br />
                 Author:
                 <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
                 <br />
                 Title:
                 <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
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
                 Type:
                 <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
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
             </ItemTemplate>
             </asp:FormView>
             <asp:DataList ID="photoDataList" runat="server" DataSourceID="SQLDataSource1">
                 <ItemTemplate>
                     <a href='<%# Eval("Photo", "~/images/{0}")%>' target="_blank">
                         <asp:Image ID="Image1" runat="server"
                             Height="150px"
                             AlternateText='<%# Eval("photoDesc")%>'
                             ImageUrl='<%# Eval("Photo", "~/images/{0}")%>'
                             Tooltip='<%# Eval("photoDesc")%>' />
                     </a>
                 </ItemTemplate>
             </asp:DataList>
         
         <br />
         <asp:Label ID="lbl_statement" runat="server"></asp:Label>

    
    </div>

</asp:Content>

