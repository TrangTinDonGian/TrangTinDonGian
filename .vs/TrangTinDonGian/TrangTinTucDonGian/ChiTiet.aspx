<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="TrangTinTucDonGian.ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:DataList ID="dlTenDanhMuc" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                &nbsp;<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblCategory] WHERE ([category_ID] = @category_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category_ID" QueryStringField="categoryid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblTenDanhMuc" runat="server"></asp:Label>
    </h1>
    <div id="ndcontent">

        <asp:DataList ID="DataList1" runat="server" DataKeyField="news_ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("title") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
                số lượt xem:
                <asp:Label ID="viewsLabel" runat="server" Text='<%# Eval("views") %>' />
                <br />
                tác giả:&nbsp;<asp:Label ID="author_IDLabel" runat="server" Text='<%# Eval("author_ID") %>' />
                <br />
                &nbsp;<asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                &nbsp;<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT * FROM [tblNews] WHERE ([news_ID] = @news_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="news_ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h3 style="color: blue">Xem thêm các bản tin khác: </h3>
        <ul>
            <asp:Repeater ID="rpRandom" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <li>
                        <a href="ChiTiet.aspx?categoryid=<%# Eval("category_ID") %>&id=<%# Eval("news_ID") %>"><%# Eval("title")%> </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="select top 5 * from tblNews 
order by NEWID()"></asp:SqlDataSource>
        </ul>
    </div>
</asp:Content>
