<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upcoming_display.aspx.cs" Inherits="pages_upcoming_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>
        </HeaderTemplate>

        <ItemTemplate>
                         
            <div id="container" class="body">
                <div>
                    <ul class="product_gallery">
                        <li>
                            <img src="../<%#Eval("product_images") %>" alt="" id="img1" />


                            <div class="product_information">
                                <h3 class="product_name"><%#Eval("product_name") %></h3>
                                  <strong class="product_price"><%#Eval("product_price") %></strong>
                            </div>
                                                        
                            </td>
                       
                        </li>
                    </ul>
                </div>
            </div>

        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

