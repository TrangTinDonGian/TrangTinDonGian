<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="TrangTinTucDonGian.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Tin mới nhất</h1>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT * FROM [tblNews] WHERE ([title] LIKE '%' + @title + '%') order by date desc">
            <SelectParameters>
                <asp:QueryStringParameter Name="title" QueryStringField="txt" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h3>Đã tìm thấy <asp:Label runat="server" ID="lblNumber"></asp:Label> &nbsp;bản tin</h3>
    </div>
</asp:Content>
