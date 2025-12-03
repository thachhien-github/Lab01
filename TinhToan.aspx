<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.TinhToan" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tính Toán</title>

    <style>
        table {
            margin: 20px auto;
            border-collapse: separate;
            border-spacing: 10px;
            font-size: 18px;
        }

        .txt {
            width: 200px;
            height: 28px;
            font-size: 16px;
        }

        .btn {
            width: 70px;
            height: 32px;
            font-size: 15px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #3399FF;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <h1 style="text-align:center; margin-top:30px;" class="auto-style3">TÍNH TOÁN ĐƠN GIẢN</h1>

        <table align="center">
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Số thứ 1:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtSo1" runat="server" CssClass="txt"></asp:TextBox></td>
            </tr>

            <tr>
                <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Số thứ 2:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtSo2" runat="server" CssClass="txt"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="btnCong" runat="server" Text="Cộng" CssClass="btn" OnClick="btnCong_Click" />
                    <asp:Button ID="btnTru" runat="server" Text="Trừ" CssClass="btn" OnClick="btnTru_Click" />
                    <asp:Button ID="btnNhan" runat="server" Text="Nhân" CssClass="btn" OnClick="btnNhan_Click" />
                    <asp:Button ID="btnChia" runat="server" Text="Chia" CssClass="btn" OnClick="btnChia_Click" />
                </td>
            </tr>

            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:Label ID="lblKQ" runat="server" Text="Kết quả: " Font-Bold="true" style="color: #CC3300"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
