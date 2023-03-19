Imports System.Data.OleDb

Partial Class login
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\main\App_Data\Database1.mdb;Persist Security Info=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim user = TextBox1.Text
            Dim pass = TextBox2.Text

            If (user = "admin" And pass = "admin") Then
                Response.Redirect("admin.aspx")
            End If
            Dim cmd As New OleDbCommand("select * from login where username=@a1 AND password=@a2", cn)
            cmd.Parameters.AddWithValue("a1", TextBox1.Text)
            cmd.Parameters.AddWithValue("a2", TextBox2.Text)
            cn.Open()
            Dim c = cmd.ExecuteScalar()
            If (c > 0) Then
                Label1.Text = "success"
                Response.Redirect("menuredirect.aspx")
                'MsgBox("Login Success", MsgBoxStyle.Information, "Cofecafe")

            Else
                Label1.Text = "Login Fail"
                'MsgBox("Login Fail", MsgBoxStyle.Exclamation, "Cofecafe")
            End If
        Catch ex As Exception
            Label1.Text = ex.Message
            'MsgBox("Login fail", MsgBoxStyle.Information, "Cofecafe")
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Visible = False
    End Sub
End Class
