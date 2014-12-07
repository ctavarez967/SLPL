<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

<table class="table">   
    
       <tr> 
           <td><asp:Panel ID="panelLogin" runat="server" DefaultButton="Login1$LoginButton"> 
            <asp:Login ID="Login1" runat="server" Height="238px" Width="494px" margin="auto"></asp:Login></asp:Panel>
            </td>      
       </tr>
   
</table>

                    <!-- jQuery -->
        <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</asp:Content>