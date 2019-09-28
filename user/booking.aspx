<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="user_booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100px;
            background-color: #008080;
        }
        .style3
        {
            width: 469px;
            height: 443px;
            background-image: url('../images/porsc.jpg');
        }
        .style4
        {
            height: 87px;
        }
        .style6
        {
            height: 69px;
        }
        .style7
        {
            height: 65px;
        }
        .style8
        {
            height: 77px;
        }
           
        .style5
        {
            width: 103.5%;
            background-color: #C0C0C0;
        }
        .style9
        {
            height: 87px;
            width: 106px;
        }
        .style10
        {
            height: 65px;
            width: 106px;
        }
        .style11
        {
            height: 69px;
            width: 106px;
        }
        .style12
        {
            height: 77px;
            width: 106px;
        }
        .style13
        {
            width: 106px;
        }
        .style14
        {
            height: 87px;
            width: 204px;
        }
        .style15
        {
            height: 65px;
            width: 204px;
        }
        .style16
        {
            height: 69px;
            width: 204px;
        }
        .style17
        {
            height: 77px;
            width: 204px;
        }
        .style18
        {
            width: 204px;
        }
        </style>
</head>
<body bgcolor="#6666ff">
    <form id="form1" runat="server">
    <div>
    
        <table class="style2">
            <tr>
                <td>
&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/images/car.png" 
                        Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Log Out" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_caption" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCFF" 
                        BorderColor="Black" BorderStyle="Dashed" Font-Bold="True" Font-Italic="True" 
                        Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#CC0000" Height="49px" 
                        Width="294px">BOOK YOUR CAR</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    <table align="center" class="style3" 
        style="background-image: url('../images/porsc.jpg'); background-position: -335px -220px; background-repeat: no-repeat">
        <tr>
            <td class="style4">
            </td>
            <td class="style9">
            </td>
            <td class="style14">
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#CC0000" Text="CAR BOOKING"></asp:Label>
            &nbsp;</td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style10">
                </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" 
                    BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" 
                    Text="Select Car"></asp:Label>
&nbsp;<asp:DropDownList ID="ddl_car" runat="server" Width="183px" 
                    Font-Bold="True" Font-Size="Large" AutoPostBack="True"> 
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddl_car" ErrorMessage="Select Car"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000" Text="Pick Up"></asp:Label>
&nbsp;<asp:DropDownList ID="ddl_source" placeholder="Select Car" runat="server" Width="183px" 
                    Font-Bold="True" Font-Size="Large"> 
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddl_source" ErrorMessage="select Pickup"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style12">
                </td>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000" Text="Destination"></asp:Label>
&nbsp;
                <asp:DropDownList ID="ddl_destination" placeholder="Select Car" runat="server" 
                    Width="183px" Font-Bold="True" Font-Size="Large"> 
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddl_destination" ErrorMessage="Select Destination"></asp:RequiredFieldValidator>
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000" onclick="Button2_Click" Text="Booked" />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_caption1" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="lbl_caption3" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    onclick="Button3_Click" Text="End Trip" />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    onclick="Button4_Click" Text="Pay your Bill" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_caption2" runat="server" BackColor="White" Font-Bold="True" 
        Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    <br />
    
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
&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" 
                        Text="sauravkumar198@gmail.com"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                        ImageUrl="~/images/icons8-address-64.png" Width="20px" />
&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#000066" 
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
