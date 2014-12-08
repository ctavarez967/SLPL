
Partial Class Librarian_ViewAllRentals
    Inherits System.Web.UI.Page
    Protected Sub lbl_count_Load(sender As Object, e As EventArgs) Handles lbl_count.Load
        Dim totalRowsCount As Integer = GridView1.Rows.Count
        lbl_count.Text = totalRowsCount
    End Sub
End Class
