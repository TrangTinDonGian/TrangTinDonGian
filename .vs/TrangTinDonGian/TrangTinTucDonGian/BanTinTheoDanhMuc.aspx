<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="BanTinTheoDanhMuc.aspx.cs" Inherits="TrangTinTucDonGian.BanTinTheoDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rpCategoryID" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <h1><%# Eval("title")%></h1>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblCategory] WHERE ([category_ID] = @category_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="category_ID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
    <div id="ndcontent">
        <asp:Repeater ID="rpNews" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <ul>
                    <li>
                        <a href="ChiTiet.aspx?categoryid=<%# Eval("category_ID") %>&id=<%# Eval("news_ID") %>"><%# Eval("title")%> </a>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT * FROM [tblNews] WHERE ([category_ID] = @category_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category_ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
