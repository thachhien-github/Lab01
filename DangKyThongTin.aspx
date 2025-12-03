<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab01.DangKyThongTin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký thông tin</title>

    <style>
        .container {
            width: 70%;
            margin: auto;
            border: 2px solid #0097a7;
            padding: 20px;
            background: #fff;
        }

        h1 {
            text-align: center;
            background: #0097a7;
            color: white;
            padding: 10px 0;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-spacing: 15px;
        }


        .txt {
            width: 100%;
            height: 30px;
            padding-left: 5px;
            font-size: 16px;
        }

        .btnGreen {
            background: #00b248;
            color: white;
            border: none;
            padding: 6px 14px;
            margin-right: 5px;
        }

        .btnRed {
            background: #c62828;
            color: white;
            border: none;
            padding: 6px 14px;
        }

        .result-title {
            text-align: center;
            background: #0097a7;
            color: white;
            padding: 10px 0;
            margin-top: 40px;
        }

        .result-box {
            width: 70%;
            margin: auto;
            border: 2px solid #0097a7;
            padding: 20px;
            background: #fff;
        }

            .result-box ul {
                font-size: 17px;
            }

            .result-box img {
                margin-top: 10px;
            }

        #lstNghe {
            width: 100%;
            font-size: 17px;
            height: 140px; /* tăng chiều cao listbox */
            padding: 5px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <h1>ĐĂNG KÝ THÔNG TIN</h1>

        <div class="container">

            <table>
                <tr>
                    <td>Họ và tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="txt" /></td>
                </tr>

                <tr>
                    <td>Ngày sinh:</td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="txt" TextMode="Date" /></td>
                </tr>

                <tr>
                    <td>Giới tính:</td>
                    <td>
                        <asp:RadioButton ID="rdNam" runat="server" GroupName="gt" Text="Nam" />
                        <asp:RadioButton ID="rdNu" runat="server" GroupName="gt" Text="Nữ" />
                    </td>
                </tr>

                <tr>
                    <td>Trình độ:</td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="txt"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td>Nghề nghiệp:</td>
                    <td>
                        <asp:ListBox ID="lstNghe" runat="server" Rows="5" CssClass="txt" SelectionMode="Multiple"></asp:ListBox></td>
                </tr>

                <tr>
                    <td>Hình:</td>
                    <td>
                        <asp:FileUpload ID="fileAnh" runat="server" /></td>
                </tr>

                <tr>
                    <td>Sở thích:</td>
                    <td>
                        <asp:CheckBoxList ID="ckSoThich" runat="server"></asp:CheckBoxList>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btnGreen" OnClick="btnGui_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Làm lại" CssClass="btnRed" OnClick="btnReset_Click" />
                    </td>
                </tr>
            </table>

        </div>

        <h1 class="result-title">KẾT QUẢ ĐĂNG KÝ</h1>

        <div class="result-box">
            <asp:Label ID="lblKetQua" runat="server"></asp:Label><br />
            <br />
            <asp:Image ID="imgHinh" runat="server" Width="150px" Visible="false" />
        </div>

    </form>
</body>
</html>
