
Partial Class BookDetails
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedTool As String = e.Values("Title").ToString()
        lbl_statement.Text = "The Record <span class = deletedrecordhighlight> " & deletedTool & "</span> has been deleted "

        Response.AddHeader("REFRESH", "3;URL=ViewAllMaterial.aspx")
    End Sub


    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("ViewAllMaterial.aspx")
    End Sub
End Class

