
Partial Class PatronSearch
    Inherits System.Web.UI.Page

    Protected Sub tb_LName_TextChanged(sender As Object, e As EventArgs) Handles tb_LName.TextChanged
        Dim searchword As String

        searchword = "Select * From Project_Patron where (PatronLast Like '%" + tb_LName.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        tb_LName.Focus()
    End Sub
End Class
