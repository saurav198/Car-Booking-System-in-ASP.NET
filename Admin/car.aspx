<%@ Page Language="C#" AutoEventWireup="true" CodeFile="car.aspx.cs" Inherits="Admin_car" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 368px;
            border: 1px solid #808080;
            background-color: #0000FF;
        }
        .style2
        {
            width: 57px;
            height: 22px;
        }
        .style3
        {
            width: 57px;
            height: 67px;
        }
        .style7
        {
            width: 57px;
            height: 147px;
        }
        .style9
        {
            width: 57px;
            height: 51px;
        }
        .style13
        {
            height: 22px;
        }
        .style15
        {
            height: 67px;
        }
        .style18
        {
            height: 147px;
        }
        .style20
        {
            height: 51px;
        }
    </style>
</head>
<body bgcolor="#3333ff">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" 
            onclick="Button2_Click" Text="HOME" />
    
    </div>
    <table align="center" class="style1" style="background-color: #808080">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#CC0000" Text="CAR Registration"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp; </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="Car Name"></asp:Label>
                &nbsp;<br />
&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt1" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="Car Price"></asp:Label>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt2" runat="server" Width="154px"></asp:TextBox>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="100px" 
                    ImageUrl="~/images/No_image_available.jpg" Width="100px" />
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    onclick="Button1_Click" Text="SUBMIT" />
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_caption" runat="server" ForeColor="Maroon"></asp:Label>
            </td>
            <td class="style20">
                </td>
        </tr>
        </table>
    </form>
    </body>
</html>
