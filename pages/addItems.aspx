<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="addItems.aspx.cs" Inherits="admin_addItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>
        Add product Page</h3>
    <table>
        <tr>
            <td>
                Product name
            </td>
            <td>
                <asp:TextBox ID="t1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product description
            </td>
            <td>
                <asp:TextBox ID="t2" runat="server" Height="23px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product price
            </td>
            <td>
                <asp:TextBox ID="t3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product qty
            </td>
            <td>
                <asp:TextBox ID="t4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product image
            </td>
            <td>
                <asp:FileUpload ID="f1" runat="server" />
            </td>
        </tr>
     <tr>
            <td>
                Product category
            </td>
            <td>
                <asp:TextBox ID="t5" runat="server"></asp:TextBox>
            </td>
        </tr>
  <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" CssClass="bt4" Text="upload" OnClick="b1_Click" />
              
            </td>
        </tr>
    </table>
</asp:Content>
