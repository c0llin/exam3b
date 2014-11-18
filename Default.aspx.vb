Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()
        MyBase.InitializeCulture()
        Dim lang As String = Request("Language")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture =  CultureInfo .CreateSpecificCulture(lang)
        End If
    End Sub
End Class
