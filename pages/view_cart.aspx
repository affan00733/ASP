<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="view_cart.aspx.cs" Inherits="pages_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="B1" runat="server" CssClass="bt3" Text="view cart" OnClick="B1_Click" />
    <br />
    <br />
    <asp:DataList ID="d1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background: silver; color: White; font-weight: bold;">
                    <td>
                        product image
                    </td>
                    <td>
                        product name
                    </td>
                    <td>
                        product description
                    </td>
                    <td>
                        product price
                    </td>
                    <td>
                        product qty
                    </td>
                    <td>
                        delete
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <img src="../<%#Eval("product_images") %>" height="100" width="100" />
                </td>
                <td>
                    <%#Eval("product_name") %>
                </td>
                <td>
                    <%#Eval("product_desc") %>
                </td>
                <td>
                    <%#Eval("product_price") %>
                </td>
                <td>
                    <%#Eval("product_qty") %>
                </td>
                <td>
                    <a href="delete_cart.aspx?id=<%#Eval("id") %>">delete</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
    <p align="center">
        <asp:Label ID="l1" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="b2" runat="server" CssClass="bt3" Text="Checkout" OnClick="b2_Click" />
    </p>
</asp:Content>
