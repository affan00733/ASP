<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table>
<tr>
<td>Enter emailID :</td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Enter Password :</td>
<td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>    
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" CssClass="bt4" Text="Login" onclick="Button1_Click" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</td>
</tr>

</table>
</asp:Content>

