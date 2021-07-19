<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="TrangTinTucDonGian.DangKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ĐĂNG KÍ</h1>
    <div id="ndcontent">
        <h4>Tên đăng nhập:</h4>
        <asp:TextBox ID="txtUsername" Width="300px" Height="20px" runat="server"></asp:TextBox>
        <h4>Mật khẩu:</h4>
        <asp:TextBox ID="txtPassword" Width="300px" Height="20px" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <h4>Nhập lại mật khẩu:</h4>
        <asp:TextBox ID="txtCfPassword" Width="300px" Height="20px" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Đăng kí" Height="44px" Width="141px" OnClick="btnLogin_Click" />
        <br />
        <h4>
            <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
        </h4>
    </div>

</asp:Content>
