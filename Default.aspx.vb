Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()

        Dim lang As String = Request("drpLang")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
        End If
    End Sub 'InitalizeCulture

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        'Declare variable
        Dim salary, name As String
        Dim calDate As Date
        'get user input
        pb.Style.Add("display", "block")
        If btnMale.Checked = True Then
            lblTitle.Text = "Mr. "
        ElseIf btnFemale.Checked = True Then
            lblTitle.Text = "Ms. "
        Else
            MsgBox("Gender Required")
        End If

        salary = txtSalary.Text.ToString
        name = txtName.Text
        calDate = cal.SelectedDate

        lblDateOutput.Text = calDate
        lblNameOutput.Text = name
        lblMoneyVar.Text = FormatCurrency(salary)
        maindisplay.Style.Add("display", "none")
    End Sub 'btnSubmit_Click
End Class
