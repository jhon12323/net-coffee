Imports System.Data.OleDb
Partial Class stock
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\main\App_Data\Database1.mdb;Persist Security Info=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            'Dim user = TextBox1.Text
            Dim pass = TextBox2.Text

            Dim cmd As New OleDbCommand("insert into stock (Cname,Price,Qty)values(@a1,@a2,@a3)", cn)
            cmd.Parameters.AddWithValue("a1", TextBox2.Text)
            cmd.Parameters.AddWithValue("a2", TextBox3.Text)
            cmd.Parameters.AddWithValue("a3", TextBox4.Text)

            cn.Open()
            cmd.ExecuteScalar()
            'If (c > 0) Then
            '    ' Label1.Text = "success"
            '    Response.Redirect("Menu.aspx")
            '    MsgBox("Login Success", MsgBoxStyle.Information, "Coffecafe")
            'Else
            '    'Label1.Text = "Login Fail"
            '    ' Response.Redirect("Menu.aspx")
            '    MsgBox("Login Fail", MsgBoxStyle.Exclamation, "Coffecafe")
            'End If
        Catch ex As Exception
            'Label1.Text = ex.Message
            MsgBox("Login fail", MsgBoxStyle.Information, "Coffecafe")
        End Try

    End Sub
End Class
