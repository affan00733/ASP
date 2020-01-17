<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="add_category.aspx.cs" Inherits="pages_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
            <h4>Enter Category</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="t1" runat="server"></asp:TextBox>
            </td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="empty" ControlToValidate="t1"></asp:RequiredFieldValidator></td>
            
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" CssClass="bt4" Text="Submit" OnClick="b1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
