Imports System.Data.SqlClient

Partial Class Librarian_RentMaterial
    Inherits System.Web.UI.Page

    Protected Sub btn_Rent_Click(sender As Object, e As EventArgs) Handles btn_Rent.Click

        Dim availab As String
        Dim sqlConn1 As New SqlConnection(ConfigurationManager.ConnectionStrings("db_Project_Patron").ConnectionString)
        Dim sqlCmd1 As New SqlCommand

        Dim strMaterialId As String = tb_MaterialID.Text
        Dim strUserName As String = tb_UserName.Text
        Dim RentDate As DateTime = DateTime.Now
        Dim DateDueBack As DateTime = DateAdd("d", 30, Today)

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("db_Project_Patron").ConnectionString)
        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand
        sqlCmd1.Connection = sqlConn1
        sqlCmd1.CommandText = "SELECT [Available] FROM [Project_Materials] WHERE [ID] = " + tb_MaterialID.Text + " "
        sqlConn1.Open()
        availab = sqlCmd1.ExecuteScalar()
        sqlConn1.Close()
        If availab = "Yes" Then
            sqlCmd.Connection = sqlConn
            sqlCmd.CommandText = "sp_MR_RentMaterial"
            sqlCmd.CommandType = Data.CommandType.StoredProcedure
            sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
            sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialId))
            sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
            sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", DateDueBack))
            sqlConn.Open()
            sqlCmd.ExecuteNonQuery()
            sqlConn.Close()
            Response.Redirect("ViewAllRentals.aspx")
        Else
            Label1.Text = "This material has already been checked out!"
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_UserName.Focus()
    End Sub
End Class


