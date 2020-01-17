<%@ Page Title="" Language="C#" MasterPageFile="../MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="pages_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <div class="image" style="width:100px;">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
<br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick" >
                    </asp:Timer>
                    <br />
                    <asp:Image CssClass="image" ID="Image2" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>

            </div>

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
     <br />
    <br />
    <br />
     <br />
    <br />
    <br />

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
                        <div class="product_description">
                          
                            <br />
                            <br />
                            <a href="Product_desc.aspx?id=<%#Eval("id") %>" class="buy_now">BUY NOW</a>
                        </div>
                        </li>
                    </ul>
                </div>
            </div>

        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>
