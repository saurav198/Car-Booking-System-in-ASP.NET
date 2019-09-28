<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driver.aspx.cs" Inherits="Admin_driver" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 500px;
            background-color: #000000;
        }
        .style3
        {
            height: 94px;
        }
        .style4
        {
            height: 101px;
        }
        .style5
        {
            height: 105px;
        }
        .style6
        {
            height: 99px;
        }
        .style7
        {
            width: 350px;
            height: 300px;
        }
    </style>
</head>
<body bgcolor="#9966ff">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" 
            onclick="Button2_Click" Text="Home" />
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="#CC0000" 
                    Text="Driver Registration"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label2" runat="server" BackColor="#CC0000" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="White" Text="Name"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt1" runat="server" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="#CC0000" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="White" Text="Phone No"></asp:Label>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt2" runat="server" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" BackColor="#CC0000" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="White" Text="CAR"></asp:Label>
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_user" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    onclick="Button1_Click" Text="SUBMIT" />
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_caption" runat="server" ForeColor="#CC0000"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table align="center" class="style7">
        <tr>
            <td>
    <asp:GridView ID="dgv1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="driver_id" onrowcancelingedit="dgv1_RowCancelingEdit" 
                    onrowdeleting="dgv1_RowDeleting" onrowediting="dgv1_RowEditing" 
                    onrowupdating="dgv1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Driver Name">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("driver_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Driver contact no">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPhone" runat="server" Text='<%# Eval("driver_phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("driver_phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">Update</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" 
                        Height="15px" ImageUrl="~/images/NEW EDIT.jpg" Width="15px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" 
                        Height="15px" ImageUrl="~/images/NEW_DELETE.png" Width="15px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
