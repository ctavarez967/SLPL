
Partial Class SearchWithoutMaster
    Inherits System.Web.UI.Page


    Protected Sub tb_Title_TextChanged(sender As Object, e As EventArgs) Handles tb_Title.TextChanged
        Dim searchword As String

        searchword = "Select * From Project_Books where (Title Like '%" + tb_Title.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub tb_Author_TextChanged(sender As Object, e As EventArgs) Handles tb_Author.TextChanged
        Dim searchword As String

        searchword = "Select * From Project_Books where (Author Like '%" + tb_Author.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_Title.Focus()
    End Sub
End Class
