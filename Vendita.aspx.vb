Imports System.Data
Imports System.Data.SqlClient
Imports System.Web
Imports System.Web.UI
Imports System.Xml
Imports System.IO


Public Class Vendita
    Inherits System.Web.UI.Page

    Protected Sub PageLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ' PAGE  LOAD

        Dim DataCorrenteLoad As String = DateTime.Now.ToString("dd/MM/yyyy")
        TextBox4.Text = DataCorrenteLoad



        'RequiredFieldValidator1.Enabled = False
        'RequiredFieldValidator2.Enabled = False
        'RequiredFieldValidator3.Enabled = False
        'RequiredFieldValidator1.

    End Sub


    'Sub ShowMessageBox(ByVal message As String)
    'ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType, _
    'Guid.NewGuid().ToString(), _
    'String.Format("alert('{0}'); ", message), True)
    'End Sub



    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click

        '----------------------

        ' Vendi button (final)

        '----------------------

        'RequiredFieldValidator1.Enabled = True
        'RequiredFieldValidator2.Enabled = True
        'RequiredFieldValidator3.Enabled = True


        ' Provo set nel page load la data di inserimento = data corrente
        'Dim DataCorrente As String = DateTime.Now.ToString("dd/MM/yyyy")

        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim conx As SqlConnection

        Dim cmdx As SqlCommand
        'Dim str As String

        conx = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '------- -- --------------------------------Reader + Comando Sql------------------------------------------------------
        'Dim dataOggi As String = System.DateTime.Now.Date
        conx.Open()

        ' Query ok

        'cmdx = New SqlCommand("INSERT INTO aProdotti (NomeProdotto, DescrizioneProdotto, PrezzoProdotto, DataInserimento, DataScadenza) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + DataCorrente + "', '" + TextBox5.Text + "' )", conx)

        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        'dr.Read()
        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox2.Text = dr(1).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview


        'RequiredFieldValidator1.Enabled = True
        'RequiredFieldValidator2.Enabled = True
        'RequiredFieldValidator3.Enabled = True


        'cmd.ExecuteNonQuery()

        ' Ok
        'GridView1.DataSource = cmdx.ExecuteReader()
        GridView1.DataBind()

        ' Esegue query
        'cmd.ExecuteNonQuery()

        ' TEST  X

        conx.Close()

        ' Validate

        ' Messaggio item inserito (?)


        ' Popolamento text box "hai messo in vendita"



        'Msgbox

        'MsgBox("Hai messo in vendita un oggetto")
        'MsgBoxStyle.Critical.ToString()




        'OnClientClick = "return confirm('Sto per eliminare i dati... Confermi?')"

        'MsgBoxResult.Ok.ToString()



        ' Funzione "hai messo in vendita ....." visualizza in text box
        ' txt6

        'TextBox6.Text = TextBox1.Text
        Label1.Text = TextBox1.Text

        '------------------------------------------------------------------------------------------------------------------------

        ' Upload immagine da file upload control


        ' Read the file and convert it to Byte Array
        Dim filePath As String = FileUpload1.PostedFile.FileName
        Dim filename As String = Path.GetFileName(filePath)
        Dim ext As String = Path.GetExtension(filename)
        Dim contenttype As String = String.Empty

        'Set the contenttype based on File Extension
        Select Case ext
            'Case ".doc"
            'contenttype = "application/vnd.ms-word"
            'Exit Select
            'Case ".docx"
            'contenttype = "application/vnd.ms-word"
            'Exit Select
            'Case ".xls"
            'contenttype = "application/vnd.ms-excel"
            'Exit Select
            'Case ".xlsx"
            'contenttype = "application/vnd.ms-excel"
            'Exit Select
            Case ".jpg"
                contenttype = "image/jpg"
                Exit Select
            Case ".png"
                contenttype = "image/png"
                Exit Select
            Case ".gif"
                contenttype = "image/gif"
                Exit Select
                'Case ".pdf"
                'contenttype = "application/pdf"
                'Exit Select
        End Select
        If contenttype <> String.Empty Then
            Dim fs As Stream = FileUpload1.PostedFile.InputStream
            Dim br As New BinaryReader(fs)
            Dim bytes As Byte() = br.ReadBytes(fs.Length)

            'insert the file into database
            ' Query funzionante aggiunge immagine ma record con solo i campi del immagine

            'Dim strQuery As String = "insert into aProdotti" _
            '& "(Name, ContentType, Data)" _
            '& " values (@Name, @ContentType, @Data)"


            ' Test query completa inserimento oggetto con immagine

            Dim strQuery As String = "insert into aProdotti" _
            & "(Quantità, NomeProdotto, DescrizioneProdotto, PrezzoProdotto, DataInserimento, DataScadenza, Name, ContentType, Data)" _
            & " values (@Quantità, @NomeProdotto, @DescrizioneProdotto, @PrezzoProdotto, @DataInserimento, @DataScadenza, @Name, @ContentType, @Data)"

            '& "(NomeProdotto, DescrizioneProdotto, PrezzoProdotto, DataInserimento, DataScadenza) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + DataCorrente + "', '" + TextBox5.Text + " ' )" _

            Dim cmd As New SqlCommand(strQuery)

            ' Test
            'cmd.Parameters.Add("@NomeProdotto", SqlDbType.VarChar).Value = SqlDataReader("SELECT NomeProdotto FROM aProdotti WHERE ID=1")



            ' Corrette
            cmd.Parameters.Add("@Quantità", SqlDbType.Int).Value = TextBox6.Text
            cmd.Parameters.Add("@NomeProdotto", SqlDbType.VarChar).Value = TextBox1.Text
            cmd.Parameters.Add("@DescrizioneProdotto", SqlDbType.VarChar).Value = TextBox2.Text
            cmd.Parameters.Add("@PrezzoProdotto", SqlDbType.Float).Value = TextBox3.Text
            cmd.Parameters.Add("@DataInserimento", SqlDbType.Date).Value = TextBox4.Text
            cmd.Parameters.Add("@DataScadenza", SqlDbType.Date).Value = TextBox5.Text
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
            cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value _
            = contenttype
            cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
            InsertUpdateData(cmd)
            lblMessage.ForeColor = System.Drawing.Color.Green
            lblMessage.Text = "File Caricato Con Successo!"
        Else
            lblMessage.ForeColor = System.Drawing.Color.Red
            lblMessage.Text = "Formato del file non riconosciuto." _
            & " Upload Image/Word/PDF/Excel formats"
        End If



        '--------------------------------------------


        ' Funzione
        '




        '''''''''' Fine pulsante vendita

        'OK
        ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert(' Hai messo in vendita un oggetto ');", True)
        'Response.Write("<script>alert('Successfully added')</script>")
        'System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=""JavaScript"">alert("Hello this is an Alert")</SCRIPT>")
        'System.Web.HttpContext.Current.Response.Write("<script language=""JavaScript"">alert(""write here what you want"")</script>")




        ' Pulizia web form - text box   

        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        'TextBox4.Text = ""         LA DATA INSERIMENTO RIMANE LA DATA CORRENTE
        TextBox5.Text = ""


        '---------- FINE BOTTONE !VENDI!




    End Sub
    Public Function InsertUpdateData(ByVal cmd As SqlCommand) As Boolean
        Dim strConnString As String = System.Configuration.ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!").ConnectionString
        Dim con As New SqlConnection(strConnString)
        cmd.CommandType = CommandType.Text
        cmd.Connection = con
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Response.Write(ex.Message)
            Return False
        Finally
            con.Close()
            con.Dispose()
        End Try
    End Function




    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Response.Redirect("Catalogo.aspx")
    End Sub


    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub



    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click


        Response.Redirect("HomePage.aspx")



    End Sub
End Class