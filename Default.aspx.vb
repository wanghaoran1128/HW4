
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnCal_Click(sender As Object, e As EventArgs) Handles btnCal.Click
        Dim wage As Double = CDbl(tbwage.Text)
        Dim hours As Double = CDbl(tbnum.Text)
        Dim pre As Double = CDbl(tbpre.Text)
        Dim after As Double = CDbl(tbafter.Text)
        Dim grosspay As Double
        Dim taxpay As Double
        Dim tax As Double
        Dim pay As Double
        Dim result As Double

        grosspay = hours * wage
        taxpay = grosspay - pre

        If grosspay < 500 Then
            tax = taxpay * 0.18
        Else
            tax = taxpay * 0.22
        End If

        pay = taxpay - tax
        result = pay - after
        lblresult.Text = String.Format("{0:C2}", result)

    End Sub

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click
        tbwage.Text = ""
        tbnum.Text = ""
        tbpre.Text = ""
        tbafter.Text = ""
        lblresult.Text = ""
    End Sub
End Class
