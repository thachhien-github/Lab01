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
            height: 546px;
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
            padding: 6px;
            font-size: 15px;
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

        .btnSmall {
            padding: 4px;
            font-weight: bold;
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
            width: 52%;
            text-align: center;
        }

        .auto-style2 {
            text-align: left;
        }

        .auto-style3 {
            color: #00b248;
            font-weight: bold;
        }

        .auto-style4 {
            color: #00b248;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">

        <div class="khung">

            <div class="tieuDe">ĐƠN ĐẶT HÀNG</div>

            <table>
                <tr>
                    <td style="width: 150px;" class="auto-style2">Khách hàng:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtKH" runat="server" CssClass="box" Width="420px" />
                        <asp:RequiredFieldValidator ID="rfvKhachHang" runat="server" ControlToValidate="txtKH" ErrorMessage="Vui lòng nhập tên khách hàng!" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Địa chỉ:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="box" Width="420px" />
                        <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Vui lòng nhập địa chỉ!" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Mã số thuế:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMST" runat="server" CssClass="box" Width="420px" />
                        <asp:RequiredFieldValidator ID="rfvMST" runat="server" ControlToValidate="txtMST" ErrorMessage="Vui lòng nhập mã số thuế!" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <hr />

            <table>
                <tr>
                    <td style="width: 40%; vertical-align: top;">
                        <span class="auto-style3">Chọn các loại bánh:</span><br />
                        <asp:DropDownList ID="ddlBanh" runat="server" Width="250px" CssClass="box"></asp:DropDownList>

                        <br />
                        <br />

                        Số lượng:
                        <asp:TextBox ID="txtSL" runat="server" Width="105px" Text="1" CssClass="box" TextMode="Number"></asp:TextBox>
                        cái<br />
                        <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ControlToValidate="txtSL" ErrorMessage="Vui lòng nhập số lượng!" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSoLuong" runat="server" ControlToValidate="txtSL" ErrorMessage="Số lượng phải là số nguyên dương!" ForeColor="#CC3300" MinimumValue="1" MaximumValue="10000" Type="Integer">(*)</asp:RangeValidator>

                        <br />

                        <asp:Button ID="btnThem" runat="server" Text=">" CssClass="btnSmall" OnClick="btnThem_Click" Height="35px" Width="35px" />
                    </td>

                    <td style="vertical-align: top;" class="auto-style1">
                        <span class="auto-style3">Danh sách bánh đặt:</span><br class="auto-style4" />
                        <asp:ListBox ID="lstBanh" runat="server" Width="324px" Height="130px" SelectionMode="Multiple"></asp:ListBox>
                    </td>

                    <td style="vertical-align: bottom;">
                        <asp:ImageButton ID="btnXoa" runat="server"
                            ImageUrl="~/Images/delete.gif"
                            CssClass="btnSmall"
                            OnClick="btnXoa_Click"
                            ToolTip="Xóa" Height="25px" Width="25px" />
                    </td>

                </tr>
            </table>

            <br />
            <asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" CssClass="btn" OnClick="btnIn_Click" />

            <br />
            <asp:ValidationSummary ID="vsError" runat="server" ForeColor="#CC3300" style="text-align: left" />

        </div>

        <div class="hoaDon" ID="divHoaDon" runat="server" Visible="false">
            <div class="tieuDeHD">HÓA ĐƠN ĐẶT HÀNG</div>
            <br />
            <asp:Label ID="lblHoaDon" runat="server" Font-Size="16px"></asp:Label>
        </div>

    </form>
</body>
</html>