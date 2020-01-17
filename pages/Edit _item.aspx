<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit _item.aspx.cs" Inherits="admin_Edit__item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 40px" >
        <ul  class="product_gallery">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource2" Width="648px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            <asp:BoundField DataField="product_desc" HeaderText="product_desc" SortExpression="product_desc" />
            <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
            <asp:BoundField DataField="product_qty" HeaderText="product_qty" SortExpression="product_qty" />
            <asp:BoundField DataField="product_images" HeaderText="product_images" SortExpression="product_images" />
            <asp:BoundField DataField="product_category" HeaderText="product_category" 
                SortExpression="product_category" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDFConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([product_name], [product_desc], [product_price], [product_qty], [product_images], [product_category]) VALUES (@product_name, @product_desc, @product_price, @product_qty, @product_images, @product_category)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [product_name] = @product_name, [product_desc] = @product_desc, [product_price] = @product_price, [product_qty] = @product_qty, [product_images] = @product_images, [product_category] = @product_category WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="product_desc" Type="String" />
            <asp:Parameter Name="product_price" Type="Int32" />
            <asp:Parameter Name="product_qty" Type="Int32" />
            <asp:Parameter Name="product_images" Type="String" />
            <asp:Parameter Name="product_category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="product_desc" Type="String" />
            <asp:Parameter Name="product_price" Type="Int32" />
            <asp:Parameter Name="product_qty" Type="Int32" />
            <asp:Parameter Name="product_images" Type="String" />
            <asp:Parameter Name="product_category" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" AllowSorting="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="product_category" HeaderText="product_category" 
                SortExpression="product_category" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDFConnectionString %>" DeleteCommand="DELETE FROM [product_category] WHERE [id] = @id" InsertCommand="INSERT INTO [product_category] ([product_category]) VALUES (@product_category)" SelectCommand="SELECT * FROM [product_category]" UpdateCommand="UPDATE [product_category] SET [product_category] = @product_category WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="product_category" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </ul>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDFConnectionString %>" DeleteCommand="DELETE FROM [rsgistration] WHERE [id] = @id" InsertCommand="INSERT INTO [rsgistration] ([firstname], [lastname], [email], [password], [address], [city], [state], [pincode], [mobile]) VALUES (@firstname, @lastname, @email, @password, @address, @city, @state, @pincode, @mobile)" SelectCommand="SELECT * FROM [rsgistration]" UpdateCommand="UPDATE [rsgistration] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [password] = @password, [address] = @address, [city] = @city, [state] = @state, [pincode] = @pincode, [mobile] = @mobile WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource4" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="product_desc" HeaderText="product_desc" SortExpression="product_desc" />
                <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                <asp:BoundField DataField="product_qty" HeaderText="product_qty" SortExpression="product_qty" />
                <asp:BoundField DataField="product_images" HeaderText="product_images" SortExpression="product_images" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDFConnectionString %>" DeleteCommand="DELETE FROM [item] WHERE [id] = @id" InsertCommand="INSERT INTO [item] ([product_name], [product_desc], [product_price], [product_qty], [product_images]) VALUES (@product_name, @product_desc, @product_price, @product_qty, @product_images)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [product_name] = @product_name, [product_desc] = @product_desc, [product_price] = @product_price, [product_qty] = @product_qty, [product_images] = @product_images WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="product_desc" Type="String" />
                <asp:Parameter Name="product_price" Type="Int32" />
                <asp:Parameter Name="product_qty" Type="Int32" />
                <asp:Parameter Name="product_images" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="product_desc" Type="String" />
                <asp:Parameter Name="product_price" Type="Int32" />
                <asp:Parameter Name="product_qty" Type="Int32" />
                <asp:Parameter Name="product_images" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />

        </div>
</asp:Content>

