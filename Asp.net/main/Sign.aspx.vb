Imports System.Data.OleDb

Partial Class Sign
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\main\App_Data\Database1.mdb;Persist Security Info=True")
   
    Protected Sub subtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles subtn.Click
        
        Dim con As OleDbConnection
        Dim str As String
        Dim cmdinsert As OleDbCommand

        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\main\App_Data\Database1.mdb;Persist Security Info=True")
        con.Open()
        str = "insert into login values (1,'" + txtuser.Text + "','" + txtpass.Text + "','" + txtmo.Text + "','" + txtemail.Text + "')"
        cmdinsert = New OleDbCommand(str, con)

        Response.Redirect("menu.aspx")
        cmdinsert.ExecuteNonQuery()
        con.Close()
    End Sub
End Class
