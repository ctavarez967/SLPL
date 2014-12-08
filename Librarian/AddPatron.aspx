<%@ Page Title="" Language="VB" MasterPageFile="~/SLPLMasterPage.master" AutoEventWireup="false" CodeFile="AddPatron.aspx.vb" Inherits="Librarian_AddPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" class="table3">
          <EditItemTemplate>
              PatronID:
              <asp:TextBox ID="PatronIDTextBox" runat="server" Text='<%# Bind("PatronID") %>' />
              <br />
              PatronLast:
              <asp:TextBox ID="PatronLastTextBox" runat="server" Text='<%# Bind("PatronLast") %>' />
              <br />
              PatronFirst:
              <asp:TextBox ID="PatronFirstTextBox" runat="server" Text='<%# Bind("PatronFirst") %>' />
              <br />
              DateAdded:
              <asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded") %>' />
              <br />
              CheckedOut:
              <asp:TextBox ID="CheckedOutTextBox" runat="server" Text='<%# Bind("CheckedOut") %>' />
              <br />
              OverdueCharge:
              <asp:TextBox ID="OverdueChargeTextBox" runat="server" Text='<%# Bind("OverdueCharge") %>' />
              <br />
              Address:
              <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
              <br />
              DateOfBirth:
              <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
              <br />
              City:
              <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
              <br />
              State:
              <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
              <br />
              Zip:
              <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
              <br />
              PhoneNumber:
              <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
              <br />
              Email:
              <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
              <br />
              OverdueCharges:
              <asp:TextBox ID="OverdueChargesTextBox" runat="server" Text='<%# Bind("OverdueCharges") %>' />
              <br />
              <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
              &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </EditItemTemplate>
          <InsertItemTemplate>
            <table>
              <tr><td style="text-align:right;">PatronID:</td>
            <td style="text-align:left;"><asp:TextBox ID="PatronIDTextBox" runat="server" Text='<%# Bind("PatronID") %>' /></td>
            </tr>
                  <br />
            <tr><td style="text-align:right;">PatronLast:</td>
            <td style="text-align:left;"><asp:TextBox ID="PatronLastTextBox" runat="server" Text='<%# Bind("PatronLast") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="rfv_Last" runat="server" ErrorMessage="Please enter the Patron's Last Name" CssClass="validationError" ControlToValidate="PatronLastTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">PatronFirst:</td>
            <td style="text-align:left;"><asp:TextBox ID="PatronFirstTextBox" runat="server" Text='<%# Bind("PatronFirst") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Patron's First Name" CssClass="validationError" ControlToValidate="PatronFirstTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">DateAdded:</td>
            <td style="text-align:left;"><asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter today's date" CssClass="validationError" ControlToValidate="DateAddedTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">CheckedOut:</td>
            <td style="text-align:left;"><asp:TextBox ID="CheckedOutTextBox" runat="server" Text='<%# Bind("CheckedOut") %>' /></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">OverdueCharges:</td>
            <td style="text-align:left;"><asp:TextBox ID="OverdueChargesTextBox" runat="server" Text='<%# Bind("OverdueCharges") %>' /></td>
            <br />
            <tr><td style="text-align:right;">Address:</td>
            <td style="text-align:left;"><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the Patron's Address" CssClass="validationError" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">DateOfBirth:</td>
            <td style="text-align:left;"><asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the Patron's Date of Birth" CssClass="validationError" ControlToValidate="DateOfBirthTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">City:</td>
            <td style="text-align:left;"><asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the Patron's hometown" CssClass="validationError" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">State:</td>
            <td style="text-align:left;"><asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the Patron's Home State" CssClass="validationError" ControlToValidate="StateTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">Zip:</td>
            <td style="text-align:left;"><asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' /></td>
            <td style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter the Patron's ZIP Code" CssClass="validationError" ControlToValidate="ZipTextBox"></asp:RequiredFieldValidator></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">PhoneNumber:</td>
            <td style="text-align:left;"><asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' /></td>
            </tr>
                <br />
            <tr><td style="text-align:right;">Email:</td>
            <td style="text-align:left;"><asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' /></td>
            <br />
            </tr>
                </table>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </InsertItemTemplate>
          <ItemTemplate>
              <table>
                  <tr><td style="text-align:right;"> PatronID:</td>
                <td style="text-align:left;"><asp:Label ID="PatronIDLabel" runat="server" Text='<%# Bind("PatronID") %>' /></td>
                  </tr>
 
              <br />
              
              <tr><td style="text-align:right;">PatronLast:</td>
              <td style="text-align:left;"><asp:Label ID="PatronLastLabel" runat="server" Text='<%# Bind("PatronLast") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">PatronFirst:</td>
              <td style="text-align:left;"><asp:Label ID="PatronFirstLabel" runat="server" Text='<%# Bind("PatronFirst") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">DateAdded:</td>
              <td style="text-align:left;"><asp:Label ID="DateAddedLabel" runat="server" Text='<%# Bind("DateAdded") %>' /></td>
                </tr>
                  <br />
              <br />
              <br />
              <tr><td style="text-align:right;">Address:</td>
              <td style="text-align:left;"><asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">DateOfBirth:</td>
              <td style="text-align:left;"><asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Bind("DateOfBirth") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">City:</td>
              <td style="text-align:left;"><asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' /></td>
                </tr>
                   <br />
              <tr><td style="text-align:right;">State:</td>
              <td style="text-align:left;"><asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">Zip:</td>
              <td style="text-align:left;"><asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' /></td>
                </tr>
                  <br />
              <tr><td style="text-align:right;">PhoneNumber:</td>
              <td style="text-align:left;"><asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' /></td>
                </tr>
                 <br />
              <tr><td style="text-align:right;">Email:</td>
              <td style="text-align:left;"><asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' /></td>
              <br />
            </table>

          </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Project_Patron %>" SelectCommand="SELECT * FROM [Project_Patron]"></asp:SqlDataSource>
        <br />
  
    <br />
     <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
     Iowa 2014, All rights Reserved.
    </div>

</asp:Content>



