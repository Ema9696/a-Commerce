Imports System.Data
Imports System.Data.SqlClient




Public Class ImageVB
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("ImageID") IsNot Nothing Then
            Dim strConnString As String = System.Configuration. _
                ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!") _
                .ConnectionString
            Dim strQuery As String = "select Name, ContentType," _
               & " Data from aProdotti where id=@id"
            Dim cmd As SqlCommand = New SqlCommand(strQuery)
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = _
                Convert.ToInt32(Request.QueryString("ImageID"))
            Dim con As New SqlConnection(strConnString)
            Dim sda As New SqlDataAdapter
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim dt As New DataTable
            Try
                con.Open()
                sda.SelectCommand = cmd
                sda.Fill(dt)
            Catch ex As Exception
                dt = Nothing
            Finally
                con.Close()
                sda.Dispose()
                con.Dispose()
            End Try
            If dt IsNot Nothing Then
                Dim bytes() As Byte = CType(dt.Rows(0)("Data"), Byte())
                Response.Buffer = True
                Response.Charset = ""
                Response.Cache.SetCacheability(HttpCacheability.NoCache)
                Response.ContentType = dt.Rows(0)("ContentType").ToString()
                Response.AddHeader("content-disposition", _
                    "attachment;filename=" _
                  & dt.Rows(0)("Name").ToString())
                Response.BinaryWrite(bytes)
                Response.Flush()
                Response.End()
            End If
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class