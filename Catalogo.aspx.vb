Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml
Imports System.IO
Imports System.Drawing

' Imports

Public Class Catalogo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        SqlDataSource1.SelectCommand = "SELECT * FROM aProdotti"
        GridView1.DataBind()


        ' §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§


        'If Not Me.IsPostBack Then
        '    Me.BindGrid()
        'End If


        ' §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§


        ' Test precedenti da qui in giù -> Page_Load


        '############################################################################################################
        ' Fixo ORDINAMENTO salvando la grid view - data source in una Session !

        '' Creo Session
        'Session("GridView1") = GridView1



        '' Leggere session
        'GridView1 = Session("GridView1")




        'If Not Me.IsPostBack Then
        '    Me.BindGrid()
        'End If





        '##############################################################################################################



        ' Bozu asp italia fix ordinamento test      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

        'If (Not String.IsNullOrEmpty(Request.QueryString("FILTRO"))) Then
        '    SqlDataSource1.FilterExpression = Request.QueryString("FILTRO")
        'End If


        'If (IsPostBack = True) Then
        '    'If Not IsNothing(Session("Default_Filtro")) Then
        '    ' SqlDataSource1.FilterExpression = Session("Default_Filtro").ToString
        '    'End If

        'End If


        'Private
        'Private strSQLDataSource As String = ""
        'Private strSQLDataSource_Filter As String = ""


        '' Fine @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



        ' .......................


        'If (IsPostBack = True) Then

        '    Button1_Click()

        'End If



        '........................



        'GridView1.Visible = True

        '----------------------------
        ' Funzione
        ' Counter totale item nel db
        Dim con2 As SqlConnection
        Dim cmd2 As SqlCommand
        con2 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        con2.Open()
        cmd2 = New SqlCommand("SELECT COUNT(id) FROM aProdotti", con2)
        Dim dr As SqlDataReader
        dr = cmd2.ExecuteReader()
        dr.Read()
        TextBox2.Text = dr(0).ToString
        '------------------------------
        con2.Close()


        '----------------------------
        ' Funzione
        ' Counter totale cash carrello
        Dim cons As SqlConnection
        Dim cmds As SqlCommand
        cons = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        cons.Open()
        cmds = New SqlCommand("SELECT SUM(prezzofloat*quantità) FROM Carrello", cons)
        Dim drs As SqlDataReader
        drs = cmds.ExecuteReader()
        drs.Read()
        'TextBox3.Text = drs(0).ToString
        Label1.Text = drs(0).ToString
        '------------------------------
        cons.Close()





        '--------------------------------------------------------------
        ' VISUALIZZAZIONE IMMAGINI SUL DATABASE NELLA GRID VIEW


        'Dim dtX As New DataTable()
        'Dim strConnString As String = System.Configuration.ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!").ConnectionString
        'Dim strQuery As String = "select ID, Name from aProdotti order by ID"
        'Dim cmdX As New SqlCommand(strQuery)
        'Dim conX As New SqlConnection(strConnString)
        'Dim sda As New SqlDataAdapter()
        'cmdX.CommandType = CommandType.Text
        'cmdX.Connection = conX
        'Try
        '    conX.Open()
        '    sda.SelectCommand = cmdX
        '    sda.Fill(dtX)
        '    'GridView1.DataSource = dt
        '    'GridView1.DataBind()
        '    'GridView1.DataSourceID = String.Empty
        '    GridView1.DataSource = dtX
        '    GridView1.DataBind()

        'Catch ex As Exception
        '    Response.Write(ex.Message)
        'Finally
        '    conX.Close()
        '    sda.Dispose()
        '    conX.Dispose()
        '    dtX.Dispose()
        'End Try


        '-------------------------------------------------------------



    End Sub

    ' Fine Page Load



    ' Peppe dot net fix ord sort 

    'Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)


    'GridView1.PageIndex = e.NewPageIndex

    'GridView1.DataBind()

    'End Sub



    'Protected Sub GridView1_Sorting(sender As Object, e As GridViewSortEventArgs)


    '    Dim dt As DataTable = TryCast(GridView1.DataSource, DataTable)



    '    If dt IsNot Nothing Then


    '        Dim dv As New DataView(dt)

    '        dv.Sort = [String].Format("{0} {1}", e.SortExpression, ConvertSort(e.SortDirection))



    '        GridView1.DataSource = dv


    '        GridView1.DataBind()
    '    End If

    'End Sub



    'Private Function ConvertSort(sortDirection__1 As SortDirection) As String


    '    Dim m_SortDirection As String = [String].Empty

    '    Select Case sortDirection__1


    '        Case SortDirection.Ascending

    '            m_SortDirection = "ASC"

    '            Exit Select



    '        Case SortDirection.Descending

    '            m_SortDirection = "DESC"

    '            Exit Select

    '    End Select

    '    Return m_SortDirection

    'End Function


    ' ROW FORMATTING ??

    'Private Sub GridView1_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

    'End Sub


    'Private Sub GridView1_RowFormatting(sender As Object, e As System.Web.UI.WebControls.RowFormattingEventArgs) Handles GridView1.RowFormatting
    '    If e.RowElement.RowInfo.IsCurrent Then
    '        e.RowElement.GradientStyle = GradientStyles.Solid
    '        e.RowElement.BackColor = Color.Green
    '    Else
    '        e.RowElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
    '        e.RowElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
    '    End If
    'End Sub


    ' FINE TEST ROW FORMATTING



    'Protected Sub TestButton_Click(sender As Object, e As EventArgs)
    '    ' Store GridView in Session
    '    Session("Test") = GridView1
    '    GridView1 = Nothing


    '    ' Retrieve GridView from Session
    '    GridView1 = DirectCast(Session("Test"), GridView)
    'End Sub




    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        ' Torna a home page
        Response.Redirect("HomePage.aspx")



    End Sub


    '----------------------------------------------------------------------------------------------------------------------
    ' Peppe dot net fix ORDINAMENTO

    'Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)


    '    GridView1.PageIndex = e.NewPageIndex

    '    GridView1.DataBind()

    'End Sub



    'Protected Sub GridView1_Sorting(sender As Object, e As GridViewSortEventArgs)


    '    Dim dt As DataTable = TryCast(GridView1.DataSource, DataTable)



    '    If dt IsNot Nothing Then


    '        Dim dv As New DataView(dt)

    '        dv.Sort = [String].Format("{0} {1}", e.SortExpression, ConvertSort(e.SortDirection))



    '        GridView1.DataSource = dv


    '        GridView1.DataBind()
    '    End If

    'End Sub



    'Private Function ConvertSort(sortDirection__1 As SortDirection) As String


    '    Dim m_SortDirection As String = [String].Empty

    '    Select Case sortDirection__1


    '        Case SortDirection.Ascending

    '            m_SortDirection = "ASC"

    '            Exit Select



    '        Case SortDirection.Descending

    '            m_SortDirection = "DESC"

    '            Exit Select

    '    End Select

    '    Return m_SortDirection

    'End Function


    ' Peppe dot net fix ORDINAMENTO
    '----------------------------------------------------------------------------------------------------------------------



    '    ' Bozu asp italia fix Ordinamento
    '    '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If (Not String.IsNullOrEmpty(Request.QueryString("FILTRO"))) Then
    '        SqlDataSource1.FilterExpression = Request.QueryString("FILTRO")
    '    End If


    '    If (IsPostBack = True) Then
    '        'If Not IsNothing(Session("Default_Filtro")) Then
    '        ' SqlDataSource1.FilterExpression = Session("Default_Filtro").ToString
    '        'End If

    '    End If

    'End Sub


    'Protected Sub btnRicerca_Click(sender As Object, e As EventArgs) Handles btnRicerca.Click
    '    Dim strSQL As String = String.Empty


    '    Dim strSQLDataSource As String = ""
    '    Dim strSQLDataSource_Filter As String = ""



    '    'TextBox 1 = Dove inserisco la parola da cercare 
    '    TextBox1.Text = TextBox1.Text.Trim
    '    If TextBox1.Text.Length > 0 Then
    '        strSQL = strSQL + "NomeProdotto like '%" + TextBox1.Text + "%' AND "
    '    End If

    '    ' Quantità    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    '    'txtQuantita.Text = txtQuantita.Text.Trim
    '    'If txtQuantita.Text.Length > 0 Then
    '    '    strSQL = strSQL + "QuantitàOrdinata = " + txtQuantita.Text + " AND "
    '    'End If
    '    '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    '    If strSQL.EndsWith(" AND ") Then
    '        strSQL = strSQL.Substring(0, (strSQL.Length - 5))
    '    End If

    '    strSQLDataSource = SqlDataSource1.SelectCommand
    '    strSQLDataSource_Filter = strSQL

    '    SqlDataSource1.FilterExpression = strSQL
    '    'Session("Default_Filtro") = strSQL

    '    Response.Redirect("~\\Catalogo.aspx?FILTRO=" + strSQL)
    'End Sub

    ' Resetta Sessione
    'Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click
    '    TextBox1.Text = ""
    '    '.Text = ""
    '    SqlDataSource1.FilterExpression = String.Empty
    '    Response.Redirect("~\\Catalogo.aspx")
    'End Sub
    'End Class


    '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@





    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click


        Response.Redirect("Catalogo.aspx")


    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click


        Response.Redirect("UserProfile.aspx")


    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click


        Response.Redirect("SettingsVersion1.aspx")


    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click


        Response.Redirect("Vendita.aspx")

    End Sub


    '
    '' TEST GUIDA CODE PROJECT
    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '' Dim Sel As String = "Select NomeProdotto,DescrizioneProdotto,Image from aProdotti"
    '' Dim Conx As New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
    ''Dim cmd As New SqlCommand(Sel, Conx)
    '' Conx.Open()
    ''Dim dt As New DataTable()
    ''dt.Columns.Add(New DataColumn("NomeProdotto", GetType(String)))
    '' dt.Columns.Add(New DataColumn("DescrizioneProdotto", GetType(String)))
    'dt.Columns.Add(New DataColumn("Image", GetType(String)))
    'Dim reader As SqlDataReader = cmd.ExecuteReader()
    'While reader.Read()
    '    Dim dr As DataRow = dt.NewRow()
    '    dr("Image") = ResolveUrl("~/aImage/" + reader("Image"))
    '    dr("NomeProdotto") = reader("NomeProdotto")
    '    dr("DescrizioneProdotto") = reader("DescrizioneProdotto")
    '    dt.Rows.Add(dr)
    'End While
    'Conx.Close()
    'GridView1.DataSource = dt
    'GridView1.DataBind()
    ''---------------------------
    ''
    '' Settare la grid view
    'End Sub
    ' FINE TEST 
    '



    Protected Sub ImageButton7_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click

        Response.Redirect("VediCarrello.aspx")

    End Sub




    'Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click


    '    BindGrid()




    'End Sub


    'Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init



    '    Dim constr As String = ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand("SELECT ID,NomeProdotto,DescrizioneProdotto,PrezzoProdotto FROM aProdotti")
    '            Using sda As New SqlDataAdapter()
    '                cmd.Connection = con
    '                sda.SelectCommand = cmd
    '                Using dt As New DataTable()
    '                    sda.Fill(dt)
    '                    GridView1.DataSource = dt
    '                    GridView1.DataBind()
    '                End Using
    '            End Using
    '        End Using
    '    End Using



    'End Sub







    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        ' Button 1 - ORDINA RICERCA DAL PIU ECONOMICO


        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con3 As SqlConnection

        ' al momento non utilizzato
        'Dim cmd As SqlCommand

        'Dim str As String
        con3 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con3.Open()

        'cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()

        SqlDataSource1.SelectCommand = "SELECT ID, NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Data , Quantità FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ORDER BY PrezzoProdotto ASC"

        'GridView1.DataSource = cmd.ExecuteReader()

        GridView1.DataBind()


        ' Istruzione Order By

        'Select "nome_di_colonna"
        'FROM("nome_della_tabella")
        '[WHERE "condizionale"]
        'ORDER BY "nome_di_colonna" [ASC, DESC];


        ' TEST  X
        con3.Close()

        ' Altre funzioni

        'If GridView1.Visible = False Then

        'Response.Write("Nessun oggetto trovato")

        ' End If



    End Sub




    ' §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

    ' TEST ORDINAMENTO CON METODO 







    ''Metodo Bind Grid 

    'Protected Sub BindGrid()
    '    Dim constr As String = ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand("SELECT ID,NomeProdotto,DescrizioneProdotto,PrezzoProdotto FROM aProdotti ORDER BY PrezzoProdotto ASC")
    '            Using sda As New SqlDataAdapter()
    '                cmd.Connection = con
    '                sda.SelectCommand = cmd
    '                Using dt As New DataTable()
    '                    sda.Fill(dt)
    '                    GridView1.DataSource = dt
    '                    GridView1.DataBind()
    '                End Using
    '            End Using
    '        End Using
    '    End Using
    'End Sub

    '' Fine Metodo Bind Grid

    'Protected Sub OnPageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    GridView1.PageIndex = e.NewPageIndex
    '    Me.BindGrid()
    'End Sub












    ' §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§




    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        ' Button2

        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con4 As SqlConnection

        ' al momento non utilizzato
        'Dim cmd As SqlCommand

        'Dim str As String
        con4 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con4.Open()

        'cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()
        SqlDataSource1.SelectCommand = "SELECT ID, NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Data , Quantità FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ORDER BY NomeProdotto "
        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()



        ' Istruzione Order By

        'Select "nome_di_colonna"
        'FROM("nome_della_tabella")
        '[WHERE "condizionale"]
        'ORDER BY "nome_di_colonna" [ASC, DESC];




        ' TEST  X
        con4.Close()

        ' Altre funzioni

        'If GridView1.Visible = False Then

        'Response.Write("Nessun oggetto trovato")

        ' End If






    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click



        ' Button 4

        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con5 As SqlConnection

        ' al momento non utilizzato
        'Dim cmd As SqlCommand

        'Dim str As String
        con5 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con5.Open()

        'cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()
        SqlDataSource1.SelectCommand = "SELECT ID, NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Data , Quantità FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ORDER BY PrezzoProdotto DESC"
        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()



        ' Istruzione Order By

        'Select "nome_di_colonna"
        'FROM("nome_della_tabella")
        '[WHERE "condizionale"]
        'ORDER BY "nome_di_colonna" [ASC, DESC];




        ' TEST  X
        con5.Close()

        ' Altre funzioni

        'If GridView1.Visible = False Then

        'Response.Write("Nessun oggetto trovato")

        ' End If




    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click


        ' Bottone di ricerca



        ' Click button 1

        ' Cerca il prodotto dal nome

        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con As SqlConnection

        ' al momento non utilizzato
        'Dim cmd As SqlCommand

        'Dim str As String
        con = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con.Open()

        'cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()
        SqlDataSource1.SelectCommand = "SELECT ID, NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Data , Quantità FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' "
        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()


        ' TEST  X
        con.Close()

        ' Altre funzioni

        'If GridView1.Visible = False Then

        'Response.Write("Nessun oggetto trovato")

        ' End If




    End Sub




    ' Array Test 


    'Dim CartList As ArrayList()




    'Private Sub BindGrid()
    '    Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand("SELECT Id, NomeProdotto, PrezzoProdotto FROM aProdotti ORDER BY PrezzoProdotto ASC")
    '            Using sda As New SqlDataAdapter()
    '                cmd.Connection = con
    '                sda.SelectCommand = cmd
    '                Using dt As New DataTable()
    '                    sda.Fill(dt)
    '                    GridView1.DataSource = dt
    '                    GridView1.DataBind()
    '                End Using
    '            End Using
    '        End Using
    '    End Using
    'End Sub






    'Protected Sub OnPageIndexChanging(sender As Object, e As GridViewPageEventArgs)

    '    GridView1.PageIndex = e.NewPageIndex
    '    Me.BindGrid()
    'End Sub













    'Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click





    '    Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand("SELECT Id, NomeProdotto, PrezzoProdotto FROM aProdotti ORDER BY PrezzoProdotto ASC")
    '            Using sda As New SqlDataAdapter()
    '                cmd.Connection = con
    '                sda.SelectCommand = cmd
    '                Using dt As New DataTable()
    '                    sda.Fill(dt)
    '                    GridView1.DataSource = dt
    '                    GridView1.DataBind()
    '                End Using
    '            End Using
    '        End Using
    '    End Using







    'End Sub
End Class