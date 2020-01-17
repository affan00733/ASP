<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="admin_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>First Name</td>
<td>
    <asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Last Name</td>
<td>
    <asp:TextBox ID="t2" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td> Address</td>
<td>
    <asp:TextBox ID="t3" runat="server" Height="86px" TextMode="MultiLine" 
        Width="256px"></asp:TextBox></td>
</tr>

<tr>
<td>City</td>
<td>
    <asp:TextBox ID="t4" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>State</td>
<td>
    <asp:TextBox ID="t5" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>Mobile</td>
<td>
    <asp:TextBox ID="t6" runat="server"></asp:TextBox>
    <br />
    </td>
</tr>
    <br />
    <br />
<tr>

<td colspan="2" align="center">
    <br />
    <br />
    <asp:Button ID="b1" CssClass="bt6" runat="server" Text="Update and Continue" 
        onclick="b1_Click" />
   </td>
   </tr>
</table>
</asp:Content>

