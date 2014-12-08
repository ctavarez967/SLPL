
Partial Class Librarian_OverdueReport
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim materialsDueToday As String
        materialsDueToday = "SELECT * FROM Project_Rentals WHERE DateDueBack <= CONVERT(dateTime, CONVERT(varchar(10),GetDate(),112))"
        SqlDataSource1.SelectCommand = materialsDueToday
    End Sub
End Class
