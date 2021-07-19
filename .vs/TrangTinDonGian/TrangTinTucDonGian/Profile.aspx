<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="TrangTinTucDonGian.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 36%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Profile.</h1>
    <div id="ndcontent">
        <h4 style="color:blue; font-style:italic;"> Tài Khoản: <asp:Label ID="lblUsername" runat="server" ForeColor="cadetblue"></asp:Label></h4>

        <table border="0px" style="width: 90%">
            <tr>
                <td class="auto-style7">
                    <h4>Email:</h4>                   
                </td>
                <td width="33%">
                    <asp:TextBox ID="txtEmail" Width="300px" Height="20px" runat="server" Style="margin-left: 30px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="33%">
                    <h4>Mật khẩu: </h4>

                </td>
                <td width="33%">
                    <asp:Button ID="btnDoiPass" runat="server" OnClick="btnDoiPass_Click" Text="Đổi Mật Khẩu" Style="margin-left: 30px" /></asp:TextBox>
                    
                </td>
            </tr>


            <%--<tr>
                <td width="33%">
                    <h4>
                        <asp:Label ID="lblCfPassword" runat="server" Text="Nhập Lại Mật Khẩu"></asp:Label>
                    </h4>

                </td>
                <td width="33%">
                    <asp:TextBox ID="txtCfPassword" Width="300px" Height="20px" TextMode="Password" runat="server" Style="margin-left: 30px"></asp:TextBox>
                </td>
            </tr>--%>
        </table>

        <br />

        <h4 style="color:blue; font-style:italic;">Thông Tin Cá Nhân.</h4>

        <table border="0px" width="90%">
            <tr>
                <td width="33%">
                    <h4>Họ và Tên:</h4>

                </td>
                <td width="33%">
                    <asp:TextBox ID="txtFullName" Width="300px" Height="20px" runat="server" Style="margin-left: 30px"  required>
                    </asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="33%">
                    <h4> Địa Điểm:</h4>

                </td>
                <td width="33%">
                    <asp:TextBox ID="txtAddress" Width="300px" Height="20px" runat="server" Style="margin-left: 30px"  required>
                    </asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="33%">
                    <h4>Điện Thoại:</h4>

                </td>
                <td width="33%">
                    <asp:TextBox ID="txtPhone" Width="300px" Height="20px" runat="server" Style="margin-left: 30px"  required>
                    </asp:TextBox>
                </td>
            </tr>

        </table>

        <%--<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:
            <asp:TextBox ID="txtEmail" Width="300px" Height="20px" runat="server" Style="margin-left: 111px" required></asp:TextBox>
        </h4>

        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật khẩu:<asp:TextBox ID="txtPassword" Width="300px" Height="20px" TextMode="Password" runat="server" Style="margin-left: 83px"></asp:TextBox>
            <asp:Button ID="btnDoiPass" runat="server" OnClick="btnDoiPass_Click" Text="Đổi MK" />
        </h4>

        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhập lại mật khẩu:<asp:TextBox ID="txtCfPassword" Width="300px" Height="20px" TextMode="Password" runat="server" Style="margin-left: 6px"></asp:TextBox></h4>

        <br />

        <h4>Thông Tin Cá Nhân.</h4>

        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Họ và Tên:<asp:TextBox ID="txtFullName" Width="300px" Height="20px" runat="server" Style="margin-left: 73px" required></asp:TextBox></h4>

        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Địa Điểm:<asp:TextBox ID="txtAddress" Width="300px" Height="20px" runat="server" Style="margin-left: 85px" required></asp:TextBox></h4>

        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Điện Thoại:<asp:TextBox ID="txtPhone" Width="300px" Height="20px" runat="server" Style="margin-left: 68px" required></asp:TextBox></h4>--%>

        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Lưu Thông Tin" Height="44px" Width="141px" OnClick="btnSave_Click" Style="margin-left: 240px" />
        <br />
        <h4>
            <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
        </h4>
    </div>


</asp:Content>
