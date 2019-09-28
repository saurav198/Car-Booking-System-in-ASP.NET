<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 350px;
            height: 500px;
        }
        .style3
        {
            height: 81px;
        }
        .style4
        {
            height: 66px;
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
        .style7
        {
            height: 98px;
        }
        .style8
        {
            height: 84px;
        }
    </style>
</head>
<body style="height: 711px; width: 1359px; margin-left: 0px;" bgcolor="#6600ff">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#66FFFF" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" 
            onclick="LinkButton1_Click">HOME</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99CCFF" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" 
            onclick="LinkButton2_Click">CLICK HERE TO REGISTER</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#99CCFF" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" 
            onclick="LinkButton3_Click">ABOUT</asp:LinkButton>
    
    </div>
    <table align="center" class="style1" 
        style="background-image: url('../images/car.png'); background-position: 300px 500px">
        <tr>
            <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BackColor="#99CCFF" Font-Bold="True" 
                    Font-Size="XX-Large" Font-Underline="True" ForeColor="#CC0000" 
                    Text="MEMBER LOGIN"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="Maroon" Text="USER NAME"></asp:Label>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" Height="29px" TextMode="Email" 
                    Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="Maroon" Text="PASSWORD"></asp:Label>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" runat="server" Height="29px" TextMode="Password" 
                    Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="LOGIN" onclick="Button1_Click" />
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_caption" runat="server" Font-Bold="False" 
                    ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
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
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
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
&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#000066" 
                    Text="+917903332829"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                    ImageUrl="~/images/download (1).png" Width="20px" />
&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#000066" Text="sauravkumar198@gmail.com"></asp:Label>
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
    </form>
</body>
</html>
