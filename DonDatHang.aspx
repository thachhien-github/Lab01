<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đơn đặt hàng</title>

    <style>
        .container {
            width: 60%;
            margin: auto;
            border: 2px solid #8BC34A;
            padding: 20px;
            background: #F1FFF1;
        }

        h2 {
            background: #8BC34A;
            text-align: center;
            color: white;
            padding: 8px 0;
        }

        h3 {
            background: #D32F2F;
            color: white;
            padding: 8px;
            text-align: center;
        }

        table {
            width: 100%;
            border-spacing: 10px;
        }

        .txt {
            width: 250px;
            height: 28px;
            font-size: 16px;
        }

        .result-box {
            width: 60%;
            margin: 40px auto;
            border: 2px solid #D32F2F;
            padding: 20px;
            background: #FFF8F8;
        }

        .result-box table {
            width: 100%;
            border-collapse: collapse;
        }

        .result-box td {
            padding: 5px;
            border-bottom: 1px solid #ccc;
            font-size: 17px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <h2>ĐƠN ĐẶT HÀNG</h2>

        <div class="container">

            <table>
                <tr>
                    <td>Khách hàng:</td>
                    <td><asp:TextBox ID="txtKhach" runat="server" CssClass="txt" /></td>
                </tr>

                <tr>
                    <td>Địa chỉ:</td>
                    <td><asp:TextBox ID="txtDiaChi" runat="server" CssClass="txt" /></td>
                </tr>

                <tr>
                    <td>Mã số thuế:</td>
                    <td><asp:TextBox ID="txtMST" runat="server" CssClass="txt" /></td>
                </tr>

                <tr>
                    <td>Chọn bánh:</td>
                    <td>
                        <asp:DropDownList ID="ddlBanh" runat="server" CssClass="txt"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Số lượng:</td>
                    <td><asp:TextBox ID="txtSL" runat="server" CssClass="txt" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text=" > " Width="50px" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnRemove" runat="server" Text=" < " Width="50px" OnClick="btnRemove_Click" />
                    </td>
                </tr>

                <tr>
                    <td>Danh sách bánh được đặt:</td>
                    <td>
                        <asp:ListBox ID="lstDat" runat="server" SelectionMode="Multiple" Height="120px" Width="100%"></asp:ListBox>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" OnClick="btnIn_Click" /></td>
                </tr>
            </table>

        </div>

        <h3>HÓA ĐƠN ĐẶT HÀNG</h3>

        <div class="result-box">
            <asp:Label ID="lblHoaDon" runat="server"></asp:Label>
        </div>

    </form>
</body>
</html>
