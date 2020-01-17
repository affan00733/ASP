<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Product_desc.aspx.cs" Inherits="pages_Product_desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="ss">
        <br />
        <br />
        <br />
        <br />
        <asp:Repeater ID="d1" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="clear: both">
                    <div style="height: 565px; width: 800px; border-style: solid; border-width: 1px;">
                        <div style="height: 565px; width: 400px; float: left; border-style: solid; border-width: 1px;background-color:white;">
                            <img src='../<%#Eval("product_images") %>' height="465px" width="400px" />
                        </div>
                        <div style="height: 565px; width: 395px; float: left; border-style: solid; border-width: 1px;">
                            <h3 class="product_name">Product name :
                            <%#Eval("product_name") %></h3>
                            <br />
                            <div class="product_desc">
                                <h4>quantity :
                                <%#Eval("product_qty") %></h4>
                                <br />
                                <p>
                                    description :
                                    <li><%#Eval("product_desc") %></li>
                                </p>
                                <br />
                                <br />
                                 <p>
                                
                                    <li><%#Eval("product_category") %></li>
                                </p>
                                <strong class="product_price">Price :<%#Eval("product_price") %></strong>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="l2" runat="server" Text="Enter Qunatity :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;
                <asp:Button ID="b1" CssClass="bt2" runat="server" Text="Add to Cart" OnClick="b1_Click" Height="22px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="l1" runat="server" Text="" ForeColor="red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>

  
</asp:Content>
