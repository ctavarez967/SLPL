Imports System.Data.SqlClient
Imports System.Data
Partial Class BookTableWithoutMaster
    Inherits System.Web.UI.Page
    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    GetRecordCount()
    'End Sub
    'Public Function GetConnectionString() As String
    '    Return ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString()
    'End Function

    'Sub GetRecordCount()
    '    Dim sStatement As String = "SELECT COUNT(*) FROM Project_Books WHERE ISBN = @ISBN"

    '    Using con As New SqlConnection(GetConnectionString())
    '        con.Open()

    '        Dim cmd As New SqlCommand(sStatement, con)
    '        cmd.Parameters.AddWithValue("@ISBN", "MISC")


    '        Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
    '        lbl_count.text = count.ToString()
    '    End Using
    'End Sub

End Class