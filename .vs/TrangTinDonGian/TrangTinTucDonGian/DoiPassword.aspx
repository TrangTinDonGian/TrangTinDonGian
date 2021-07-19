<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DoiPassword.aspx.cs" Inherits="TrangTinTucDonGian.DoiPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 36%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đổi Mật Khẩu.</h1>
    <div id="ndcontent">
        <h4 style="color: blue; font-style: italic;">Tài Khoản:
            <asp:Label ID="lblUsername" runat="server" ForeColor="cadetblue"></asp:Label></h4>

        <table border="0px" style="width: 90%">
            <tr>
                <td class="auto-style7">
                    <h4>Mật khẩu cũ:</h4>
                </td>
                <td width="33%">
                    <asp:TextBox ID="txtPassword" Width="300px" Height="20px" runat="server" Style="margin-left: 30px" ></asp:TextBox>
                    <%--</asp:TextBox><input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'">--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <h4>Mật khẩu mới:</h4>
                </td>
                <td width="33%">
                    <asp:TextBox ID="txtPass" Width="300px" Height="20px" runat="server"  Style="margin-left: 30px" ></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td width="33%">
                    <h4>Nhập Lại Mật khẩu: </h4>

                </td>
                <td width="33%">
                    <asp:TextBox ID="txtCfPass" Width="300px" Height="20px" runat="server"  Style="margin-left: 30px" ></asp:TextBox>
                    
                </td>
            </tr>
        </table>

        <br />
        <asp:Button ID="btnSave" runat="server" Text="Cập Nhật" Height="44px" Width="141px" OnClick="btnSave_Click" Style="margin-left: 150px" />
        <asp:Button ID="btnExit" runat="server" Text="Thoát" Height="44px" Width="141px" OnClick="btnExit_Click" Style="margin-left: 50px" />
        <br />
        <br />
        <h4>
            <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
        </h4>
        
</asp:Content>
