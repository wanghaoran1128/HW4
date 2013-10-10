<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Net Pay Calculator</title>
	<link rel="stylesheet" type="text/css" href="./wang.css" />
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            width: 298px;
        }
        .auto-style3 {
            height: 30px;
            width: 298px;
        }
        </style>
</head>
<body>
	<div id="header">
		<h1 class="title"> Salary Calculator </h1>
		<br />
	</div>
	<div id="main">
    <form id="form1" runat="server">
    <div style="width: 564px">
        <table>
                <tr>
                    <td align="center">Hourly wage:</td> <td align="left" class="auto-style2"> 
                    <br />
                    <asp:TextBox ID="tbwage" runat="server" TabIndex="1"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvwage" runat="server" ControlToValidate="tbwage" ErrorMessage="**Please enter your wages." EnableViewState="False" SetFocusOnError="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="center">Hours Worked This Week:</td> <td align="left" class="auto-style2"> 
                    <br />
                    <asp:TextBox ID="tbnum" runat="server" TabIndex="2"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvhours" runat="server" ControlToValidate="tbnum" ErrorMessage="**Please enter your working hours." SetFocusOnError="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="center">Pre-Tax Deductions:</td> <td align="left" class="auto-style2"> 
                    <br />
                    <asp:TextBox ID="tbpre" runat="server" TabIndex="3"></asp:TextBox>
                         <br />
                         <asp:RequiredFieldValidator ID="rfvpre" runat="server" ControlToValidate="tbpre" ErrorMessage="**Please enter your pre-tax deductions." SetFocusOnError="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td align="center">After-Tax Deductions:</td> <td align="left" class="auto-style2"> 
                    <br />
                    <asp:TextBox ID="tbafter" runat="server" TabIndex="4"></asp:TextBox>
                         <br />
                         <asp:RequiredFieldValidator ID="rfvafter" runat="server" ControlToValidate="tbafter" ErrorMessage="**Please enter your after-tax deductions." SetFocusOnError="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
           
                 <tr>
                    <td align="center" class="auto-style1"> <asp:Button ID="btnCal" runat="server" TabIndex="5" Text="Calculate" Width="82px" />
                     </td> 
                     <td align="left" class="auto-style3"> &nbsp;<asp:Button ID="btnclear" runat="server" TabIndex="5" Text="Clear" Width="82px" />
                         <br />
                    </td>
                </tr>

                <tr>
                    <td align="center">Net Pay:</td> <td align="left" class="auto-style2"> 
                    <asp:Label ID="lblresult" runat="server"></asp:Label>
                    </td>
                </tr>
         </table>            

    
        <br />

    </div>
    </div>
    </form>
</body>
</html>
