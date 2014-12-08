
Partial Class Search
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_Title.Focus()
    End Sub

    Protected Sub btn_tSearch_Click(sender As Object, e As EventArgs) Handles btn_tSearch.Click
        Dim searchword As String

        searchword = "Select * From Project_Materials where (Title Like '%" + tb_Title.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub btn_aSearch_Click(sender As Object, e As EventArgs) Handles btn_aSearch.Click
        Dim searchword As String

        searchword = "Select * From Project_Materials where (Author Like '%" + tb_Author.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
