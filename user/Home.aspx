<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            height: 24px;
        }
       
        .style5
        {
            width: 100%;
            background-color: #C0C0C0;
        }
        .style6
        {
            height: 43px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            
            <td class="style4">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton7" runat="server" BackColor="#9966FF" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000" onclick="LinkButton7_Click">HOME</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#CCFFCC" 
                    Font-Bold="True" Font-Size="X-Large" ForeColor="Red" 
                    onclick="LinkButton2_Click">Registration</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#CCFFFF" 
                    Font-Bold="True" Font-Size="X-Large" ForeColor="Red" 
                    onclick="LinkButton3_Click">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    Font-Italic="False" Font-Size="X-Large" ForeColor="#CC0000" 
                    onclick="LinkButton4_Click">HELP</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#CC0000" onclick="LinkButton5_Click">DEVELOPERS</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#CC0000" onclick="LinkButton6_Click">ABOUT US</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <img src="../images/Screenshot%20(14).png" 
        style="height: 711px; width: 1359px" />

    <div>
    
        <table class="style5">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Red" Text="Contact Us:-"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/images/download.png" Width="20px" />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#000066" 
                        Text="+917903332829"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                        ImageUrl="~/images/download (1).png" Width="20px" />
&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" 
                        Text="sauravkumar198@gmail.com"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                        ImageUrl="~/images/icons8-address-64.png" Width="20px" />
&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#000066" 
                        Text="1/6,Girish Ghosh Road,Liluah,Howrah-711202"></asp:Label>
                </td>
                <td class="style6">
                </td>
                <td class="style6">
                </td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Follow On:-"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="25px" 
                        ImageUrl="~/images/twitter.png" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="25px" 
                        ImageUrl="~/images/fb.png" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="25px" 
                        ImageUrl="~/images/insta.jpg" Width="25px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
