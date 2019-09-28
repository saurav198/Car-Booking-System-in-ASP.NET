<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ad_reg.aspx.cs" Inherits="Admin_ad_reg" %>

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

             if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById('txt1').value)) {
                 alert("You have entered an invalid email address!")
                 return (false)
             }
             else if (!document.getElementById('txt1').value.trim().length) {
                 alert("Please enter the email");
                 return false;
             }
             else if (!document.getElementById('txt2').value.trim().length) {
                 alert("Please enter the password");
                 return false;
             }
             else if (!document.getElementById('txt3').value.trim().length) {
                 alert("Please enter the confirm password");
                 return false;
             }
             else if (document.getElementById('txt2').value != document.getElementById('txt3').value) {
                 alert('Password not matched');
                 document.getElementById('txt2').focus();
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
             else if (!/^[789]\d{9}$/.test(document.getElementById('txt6').value)) {
                 alert("You have entered an invalid Phone!")
                 return (false)
             }
         }
    </script>
    <style type="text/css">
        .style1
        {
            width: 350px;
            height: 218px;
            background-color: #808080;
        }
        .style4
        {
            height: 51px;
            width: 344px;
        }
        .style7
        {
            height: 67px;
            width: 344px;
        }
        .style8
        {
            height: 56px;
            width: 344px;
        }
        .style9
        {
            height: 19px;
            width: 344px;
        }
    </style>
</head>
<body bgcolor="#454455">
    <form id="form1" runat="server">
    <div style="background-color: #454455">
    
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#CC0000" onclick="Button2_Click" Text="HOME" />
    
        <br />
        <br />
        <br />
        <br />
    
        <table align="center" class="style1" 
            style="background-image: none; background-position: center center; background-repeat: repeat-x; background-color: #000000;">
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Font-Underline="True" ForeColor="#CC0000" Text="ADMIN REGISTRATION"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Uname"></asp:Label>
                    &nbsp;<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="txt1" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Password"></asp:Label>
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt2" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="confirm Password"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt3" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="First Name"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtFName" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Last Name"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLName" runat="server" Width="150px"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Phone Number"></asp:Label>
                    &nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt6" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                        onclick="Button1_Click1" Text="SUBMIT" 
                        OnClientClick="return validateForm();" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                        ForeColor="#CC0000" onclick="LinkButton1_Click">LOGIN</asp:LinkButton>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="lbl_caption" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
        </table>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
