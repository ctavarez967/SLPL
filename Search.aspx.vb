
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tb_Title_TextChanged(sender As Object, e As EventArgs) Handles tb_Title.TextChanged
        Dim searchword As String

        searchword = "Select * From Project_Materials where (Title Like '%" + tb_Title.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub tb_Author_TextChanged(sender As Object, e As EventArgs) Handles tb_Author.TextChanged
        Dim searchword As String

        searchword = "Select * From Project_Materials where (Author Like '%" + tb_Author.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
