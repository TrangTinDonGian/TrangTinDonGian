<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TrangTinTucDonGian.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tin mới nhất</h1>
    <div id="ndcontent">
        <asp:Repeater ID="rpNews" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="rpNews_ItemCommand">
            <ItemTemplate>
                <ul>
                    <li>
                        <a href="ChiTiet.aspx?categoryid=<%# Eval("category_ID") %>&id=<%# Eval("news_ID") %>"><%# Eval("title")%> </a>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT top 15 * FROM [tblNews] order by date desc"></asp:SqlDataSource>
    </div>
</asp:Content>
