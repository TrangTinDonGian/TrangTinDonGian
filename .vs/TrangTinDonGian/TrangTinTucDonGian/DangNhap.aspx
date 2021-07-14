<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="TrangTinTucDonGian.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ĐĂNG NHẬP</h1>
    <div id="ndcontent">
        <h4>Tên đăng nhập:</h4>
        <asp:TextBox ID="txtUsername" Width="300px" Height="20px" runat="server"></asp:TextBox>
        <h4>Mật khẩu:</h4>
        <asp:TextBox ID="txtPassword" Width="300px" Height="20px" TextMode="Password" runat="server"></asp:TextBox> 
        <br />
        <br/>
        <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" Height="44px" OnClick="btnLogin_Click" Width="141px" />
        <br />
        <h4>
            <asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Red"></asp:Label> </h4>
    </div>
</asp:Content>
