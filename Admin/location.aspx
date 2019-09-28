<%@ Page Language="C#" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="Admin_location" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 247px;
            background-color: #0000FF;
        }
    </style>
</head>
<body bgcolor="#6666ff">
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" 
            onclick="Button2_Click" Text="Home" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Font-Underline="True" ForeColor="#CC0000" Text="Add Location"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red" Text="Location Name"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt1" runat="server" Width="144px"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" ForeColor="Red" onclick="Button1_Click" 
                        Text="SUBMIT" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_caption" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
