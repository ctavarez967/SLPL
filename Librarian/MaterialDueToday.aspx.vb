
Partial Class Librarian_MaterialDueToday
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ' Declare a variable
        Dim MaterialsDueToday As String

        ' Set the variable equal to the SQL statement to perform the search
        MaterialsDueToday = "SELECT * FROM Project_Rentals WHERE DateDueBack >= CONVERT(datetime, CONVERT(varchar(10),GetDate(),112))"

        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = MaterialsDueToday

    End Sub
End Class


