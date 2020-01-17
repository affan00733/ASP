<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="pages_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .bt5 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="add category " CssClass="bt5" PostBackUrl="~/pages/add_category.aspx" Height="59px" Width="139px" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Add Items" CssClass="bt5" PostBackUrl="~/pages/addItems.aspx" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="Edit Items" CssClass="bt5" PostBackUrl="~/pages/Edit _item.aspx" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" Text="add items of uppcoming products" CssClass="bt5" PostBackUrl="~/pages/upcoming.aspx" Width="250px" />
</asp:Content>

