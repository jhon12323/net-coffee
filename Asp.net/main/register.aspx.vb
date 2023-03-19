Imports System.Data.OleDb
Partial Class register
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\Database1.mdb")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cmd As New OleDbCommand("insert into register(fname,lname,mo_number,email)values(@a1,@a2,@a3,@a4)", cn)
            cmd.Parameters.AddWithValue("a1", txtfname.Text)
            cmd.Parameters.AddWithValue("a2", txtlname.Text)
            cmd.Parameters.AddWithValue("a3", txtmob.Text)
            cmd.Parameters.AddWithValue("a4", txtemail.Text)
            'cmd.Parameters.AddWithValue("a5", txtpass.Text)
            'cmd.Parameters.AddWithValue("a6", txtcpass.Text)
            'cmd.Parameters.AddWithValue("a5", DropDownList1.SelectedItem)

            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            MsgBox("Register successfully", MsgBoxStyle.Information, "Coffecafe")
            Response.Redirect("menu.aspx")

            txtfname.Text = ""
            txtlname.Text = ""
            txtmob.Text = ""
            txtemail.Text = ""
            'txtcpass.Text = ""
            'txtcpass.Text = ""
        Catch ex As Exception
            cn.Close()
            MsgBox("sign up fail", MsgBoxStyle.Information, "Coffecafe")

        End Try
    End Sub
End Class
