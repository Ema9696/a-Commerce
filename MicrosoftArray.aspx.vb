Imports System.Array
Imports System.Web

Public Class MicrosoftArray
    Inherits System.Web.UI.Page

    Private Function theCart() As ArrayList

        Dim list As New ArrayList()
        list.Add(New shoppingcart("Diamond", 3))
        list.Add(New shoppingcart("Ruby", 2))
        list.Add(New shoppingcart("Sapphire", 1))
        'list.Insert(New shoppingcart("12", 4))
        Return (list)

    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs)

        Dim list As ArrayList = theCart()

        GridView1.DataSource = list
        GridView1.DataBind()

    End Sub


End Class
Public Class shoppingcart
    Private m_item As String
    Private m_quantity As Integer

    Public Sub New(item__1 As String, quantity__2 As Integer)
        Item = item__1
        Quantity = quantity__2
    End Sub

    Public Property Item() As String
        Get
            Return m_item
        End Get
        Set(value As String)
            m_item = value
        End Set
    End Property
    Public Property Quantity() As Integer
        Get
            Return m_quantity
        End Get
        Set(value As Integer)
            m_quantity = value
        End Set
    End Property
End Class
