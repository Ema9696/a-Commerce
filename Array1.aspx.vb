Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient




Public Class Array1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'Multi-Dimensional Array

        'Dim arrMultiD As String(,) = {{"Giacobbe", "21", "Berlin", "Germany"}, _
        '                              {"Gesu", "33", "London", "UK"}, _
        '                              {"Giuseph", "15", "Sydney", "Australia"}, _
        '                              {"Lady Marie", "18", "Tokyo", "Japan"}, _
        '                              {"Arcangelo", "34", "Mumbai", "India"} _
        '                             }
        'Dim dt As New DataTable()
        'dt.Columns.Add("Nome", Type.GetType("System.String"))
        'dt.Columns.Add("Età", Type.GetType("System.String"))
        'dt.Columns.Add("City", Type.GetType("System.String"))
        'dt.Columns.Add("Country", Type.GetType("System.String"))
        'For i As Integer = 0 To 4
        '    dt.Rows.Add()
        '    dt.Rows(dt.Rows.Count - 1)("Nome") = arrMultiD(i, 0)
        '    dt.Rows(dt.Rows.Count - 1)("Età") = arrMultiD(i, 1)
        '    dt.Rows(dt.Rows.Count - 1)("City") = arrMultiD(i, 2)
        '    dt.Rows(dt.Rows.Count - 1)("Country") = arrMultiD(i, 3)
        'Next
        'GridMultiD.DataSource = dt
        'GridMultiD.DataBind()

        ' Fine Multi-Dimensional Array




        ' Populate






        ' Tolta come test - Ultima modifica
        'If Not Me.IsPostBack Then



        ' Stringa di connessione
        Dim constr As String = ConfigurationManager.ConnectionStrings("!aCommerce-ConnectionString!").ConnectionString
        Using con As New SqlConnection(constr)
            ' End Stringa

            '...................................................................................................................................................................
            ' Comando sql finale per data table "Carrello"

            ' Appunti :  WHERE ID IN (2,3) or ------------- WHERE ID = 2 OR ID = 3
            ' Non specificare un solo id 

            'Using cmd As New SqlCommand("SELECT Id,NomeProdotto, PrezzoProdotto, Quantità FROM aProdotti WHERE ID='" + Request.QueryString("ID").ToString + "' OR ID='" + Request.QueryString("ID").ToString + "'")


            ' Test session

            'If Session("YourDataSet") Is Nothing Then
            '    Session("YourDataSet") = dt
            'End If

            'GridView1.DataSource = DirectCast(Session("YourDataSet"), DataSet)
            'GridView1.DataBind()

            '...................................................................................................................................................................
            ' Cosi inserisce un item nel data table e se provo ad inserirne un altro, lo rimpiazza.
            'Using cmd As New SqlCommand("SELECT * FROM Carrello")


            ' Query SQL 
            Using cmd As New SqlCommand("SELECT Id,NomeProdotto, PrezzoProdotto, Quantità FROM aProdotti WHERE ID='" + Request.QueryString("ID").ToString + "' OR ID='" + Request.QueryString("ID").ToString + "'")


                'Using cmd As New SqlCommand("SELECT Id,NomeProdotto, PrezzoProdotto, Quantità FROM aProdotti WHERE ID='" + Request.QueryString("ID").ToString + "'")
                ' Uso solo la select per popolare la data table

                'Using cmd As New SqlCommand("INSERT INTO Carrello (ID,Nome,PrezzoFloat, Quantità) SELECT Id,NomeProdotto, PrezzoProdotto, Quantità FROM aProdotti WHERE ID='2'")
                cmd.Connection = con
                Using sda As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable()



                    ' Session 
                    Session("dt") = dt





                    'Dim dt As DataTable = DirectCast(Session("dt"), DataTable)
                    'Dim dt As New DataTable()
                    sda.Fill(dt)

                    GridView1.DataSource = dt
                    GridView1.DataBind()


                    'Session("Data Table") = dt

                    ' Stack overflow ...
                    'If Session("YourDataSet") Is Nothing Then
                    '    Session("YourDataSet") = dt
                    'End If

                    'GridView1.DataSource = DirectCast(Session("dt"), DataTable)
                    'GridView1.DataBind()
                    ' ...... end



                End Using
            End Using
        End Using


        'End If





        ' Session  -test-


        ' Putting DataTable in Session
        'Dim dt As DataTable = DirectCast(Session("dt"), DataTable)
        'Retrieving DataTable from Session





        ' Populate array with sql 
        'Public Class ConnInfo
        '    Public Property ServerAddress() As String
        '        Get
        '            Return m_ServerAddress
        '        End Get
        '        Set(value As String)
        '            m_ServerAddress = value
        '        End Set
        '    End Property
        '    Private m_ServerAddress As String
        '    Public Property DatabaseName() As String
        '        Get
        '            Return m_DatabaseName
        '        End Get
        '        Set(value As String)
        '            m_DatabaseName = value
        '        End Set
        '    End Property
        '    Private m_DatabaseName As String
        '    Public Property UserId() As String
        '        Get
        '            Return m_UserId
        '        End Get
        '        Set(value As String)
        '            m_UserId = value
        '        End Set
        '    End Property
        '    Private m_UserId As String
        '    Public Property Password() As String
        '        Get
        '            Return m_Password
        '        End Get
        '        Set(value As String)
        '            m_Password = value
        '        End Set
        '    End Property
        '    Private m_Password As String
        'End Class
        ' Fine ....



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Response.Redirect("Catalogo.aspx")


    End Sub




    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        ' Button conferma e paga -> Checkout 










    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        ' Funzione svuota cestino








    End Sub
End Class