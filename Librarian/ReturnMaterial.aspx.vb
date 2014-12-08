Imports System.Data.SqlClient

﻿Imports System.Data.SqlClient

Partial Class Librarian_ReturnMaterial
    Inherits System.Web.UI.Page
    Protected Sub btn_Return_Click(sender As Object, e As EventArgs) Handles btn_Return.Click
        Dim strMaterialId As String = tb_MaterialID.Text
        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("Project_Patrons").ConnectionString)
        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand
        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_MR_MaterialReturn"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure
        sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialId))
        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
        Response.Redirect("ViewAllRentals.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_MaterialID.Focus()
    End Sub
End Class



