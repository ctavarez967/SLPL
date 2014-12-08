
Partial Class SLPLMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_Date.Text = System.DateTime.Now



        'If Not Roles.IsUserInRole("r_administrator") Then
        '    Dim menuItems As MenuItemCollection = Menu2.Items
        '    Dim adminItem As New MenuItem()
        '    For Each menuItem As MenuItem In menuItems
        '        If menuItem.Text = "Admin" Then
        '            adminItem = menuItem
        '        End If
        '    Next
        '    menuItems.Remove(adminItem)
        'End If

        'If Not Roles.IsUserInRole("r_Librarian") Then
        '    Dim menuItems As MenuItemCollection = Menu1.Items
        '    Dim adminItem As New MenuItem()
        '    For Each menuItem As MenuItem In menuItems
        '        If menuItem.Text = "Librarian" Then
        '            adminItem = menuItem
        '        End If
        '    Next
        '    menuItems.Remove(adminItem)
        'End If

        'If Not Roles.IsUserInRole("r_patron") Then
        '    Dim Hyperlink1 As HyperLinkField = Hyperlink1
        '    Dim adminItem As New HyperLink()
        '    For Each menuItem As HyperLink In Hyperlink1
        '        If menuItem.Text = "My Account" Then
        '            adminItem = menuItem
        '        End If
        '    Next
        '    Hyperlink1.Remove(adminItem)
        'End If

    End Sub



    Protected Sub LoginStatus1_LoggedOut(sender As Object, e As EventArgs) Handles LoginStatus1.LoggedOut

        Response.Redirect("~/Default.aspx")

    End Sub



End Class

