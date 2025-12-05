<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đơn Đặt Hàng</title>

    <style>
        .khung {
            width: 650px;
            margin: auto;
            border: 2px solid green;
            padding: 20px;
            background: #fafff4;
            text-align: center;
        }

        .tieuDe {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: green;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-spacing: 10px;
        }

        .box {
            padding: 5px;
            font-size: 15px;
            text-align: left;
        }

        .btn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #00b248;
            padding: 6px 16px;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        .hoaDon {
            width: 650px;
            margin: 25px auto;
            border: 2px solid #c62828;
            padding: 15px;
            background: #fff8f8;
        }

        .tieuDeHD {
            text-align: center;
            color: #c62828;
            font-size: 20px;
            font-weight: bold;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #33CC33;
        }
        .auto-style3 {
            color: #66FF66;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">

        <div class="khung">

            <div class="tieuDe">ĐƠN ĐẶT HÀNG</div>

            <!-- Bảng thông tin khách hàng -->
            <table>
                <tr>
                    <td style="width:150px;" class="auto-style1">Khách hàng:</td>
                    <td style="text-align: left"><asp:TextBox ID="txtKH" runat="server" Width="467px" CssClass="box" /></td>
                </tr>

                <tr>
                    <td class="auto-style1">Địa chỉ:</td>
                    <td style="text-align: left"><asp:TextBox ID="txtDiaChi" runat="server" Width="466px" CssClass="box" /></td>
                </tr>

                <tr>
                    <td class="auto-style1">Mã số thuế:</td>
                    <td style="text-align: left"><asp:TextBox ID="txtMST" runat="server" Width="462px" CssClass="box" /></td>
                </tr>
            </table>

            <hr />

            <!-- Bảng chọn bánh -->
            <table>
                <tr>
                    <td style="width:45%;" class="auto-style1">
                        <span class="auto-style3">Chọn các loại bánh sau:</span><br />
                        <asp:DropDownList ID="ddlBanh" runat="server" Width="250" CssClass="box"></asp:DropDownList>

                        <br /><br />

                        Số lượng:
                        <asp:TextBox ID="txtSL" runat="server" Width="60" Text="1" CssClass="box" />
                        cái
                        <br /><br />

                        <asp:Button ID="btnThem" runat="server" Text=">" Width="40" OnClick="btnThem_Click" />
                    </td>

                    <td style="width:35%;">
                        <span class="auto-style2">Danh sách bánh được đặt:</span><br />
                        <asp:ListBox ID="lstBanh" runat="server" Width="200" Height="130"></asp:ListBox>
                    </td>

                    <td style="width:20%; vertical-align:bottom;">
                        <asp:Button ID="btnXoa" runat="server" Text="Xóa" Width="40" OnClick="btnThem_Click" />
                    </td>
                </tr>
            </table>

            <br />
            <asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" CssClass="btn" OnClick="btnIn_Click" />

        </div>

        <!-- Hóa đơn kết quả -->
        <div class="hoaDon">
            <div class="tieuDeHD">HÓA ĐƠN ĐẶT HÀNG</div>
            <br />
            <asp:Label ID="lblHoaDon" runat="server" Font-Size="16px"></asp:Label>
        </div>

    </form>
</body>
</html>
