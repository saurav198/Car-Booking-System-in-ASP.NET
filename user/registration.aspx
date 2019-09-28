<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validateForm() {
            //alert("hi");
            //function validateForm() {
            var fname = document.getElementById('txtFName').value;
            var lname = document.getElementById('txtLName').value;

            if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById('txtEmail').value)) {
                alert("You have entered an invalid email address!")
                return (false)
            }
            else if (!document.getElementById('txtEmail').value.trim().length) {
                alert("Please enter the email");
                return false;
            }
            else if (!document.getElementById('txtPassword').value.trim().length) {
                alert("Please enter the password");
                return false;
            }
            else if (!document.getElementById('txtCPassword').value.trim().length) {
                alert("Please enter the confirm password");
                return false;
            }
            else if (document.getElementById('txtPassword').value != document.getElementById('txtCPassword').value) {
                alert('Password not matched');
                document.getElementById('txtPassword').focus();
                return false;
            }
            else if (!document.getElementById('txtFName').value.trim().length) {
                alert("Please enter the First Name");
                return false;
            }
            else if (!fname.match(/^[a-zA-Z]+$/)) {
                alert('Only alphabets are allowed in First Name');
                return false;
            }
            else if (!document.getElementById('txtLName').value.trim().length) {
                alert("Please enter the Last Name");
                return false;
            }
            else if (!lname.match(/^[a-zA-Z]+$/)) {
                alert('Only alphabets are allowed in Last Name');
                return false;
            }
            else if (!/^[789]\d{9}$/.test(document.getElementById('txtPhone').value)) {
                alert("You have entered an invalid Phone!")
                return (false)
            }
        }
    </script>
    <style type="text/css">
        .style8
        {
            width: 300px;
            height: 700px;
            
        }
        .style10
        {
            height: 69px;
        }
        .style11
        {
            height: 74px;
        }
        .style12
        {
            height: 52px;
        }
        .style13
        {
            height: 62px;
        }
        .style14
        {
            height: 65px;
        }
        .style15
        {
            height: 68px;
        }
        .style16
        {
            height: 53px;
        }
        .style17
        {
            height: 107px;
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
        .style18
        {
            width: 100%;
        }
    </style>
</head>
<body  style="height: 711px; width: 1359px" bgcolor="#454455">
    <form id="form1" runat="server">
    <table class="style18">
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CC0000" onclick="LinkButton1_Click">HOME</asp:LinkButton>
&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table align="center" class="style8" 
        
        
        style="background-position: -418px -675px; background-image: url('../images/audi-audi-car-automobile-168938.jpg')">
        <tr>
            <td class="style17">
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Font-Underline="True" ForeColor="#CC0000" Text="REGISTER YOURSELF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="E-MAIL"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" Font-Size="Medium" 
                    style="margin-left: 0px" Width="216px" TextMode="Email" placeholder="Enter E-mail"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="PASSWORD"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" runat="server" Font-Size="Medium" 
                    TextMode="Password" placeholder="Enter Password" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="CONFIRM PASSWORD"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCPassword" runat="server" Font-Size="Medium" TextMode="Password" placeholder="Same Password"
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="First Name"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtFName" runat="server" placeholder="Enter ur 1st Name" Font-Size="Medium" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="Last Name"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtLName" runat="server" placeholder="Enter ur surname" Font-Size="Medium" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="DATE OF BIRTH"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDob" runat="server" Font-Size="Medium" TextMode="Date" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="PHONE NUMBER"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter Mobile Number" Font-Size="Medium" TextMode="Number" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Font-Bold="True" 
                     Text="SUBMIT" onclick="Button1_Click" OnClientClick="return validateForm();"/>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="#CC0000" onclick="LinkButton2_Click">Click Here To Login</asp:LinkButton>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_caption" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
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
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
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
&nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#000066" 
                    Text="+917903332829"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                    ImageUrl="~/images/download (1).png" Width="20px" />
&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#000066" Text="sauravkumar198@gmail.com"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                    ImageUrl="~/images/icons8-address-64.png" Width="20px" />
&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#000066" 
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
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC0000" Text="Follow On:-"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="25px" 
                    ImageUrl="~/images/twitter.png" Width="25px" 
                    PostBackUrl="https://twitter.com/PRAKASH70177461" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" Height="25px" 
                    ImageUrl="~/images/fb.png" Width="25px" 
                    PostBackUrl="https://www.facebook.com/prakash.bharadwaj.547" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" Height="25px" 
                    ImageUrl="~/images/insta.jpg" Width="25px" 
                    PostBackUrl="https://www.instagram.com/prakash_jha__/" />
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
