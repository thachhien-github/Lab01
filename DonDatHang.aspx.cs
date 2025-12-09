using System;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {              
                ddlBanh.Items.Add("Bánh mì");
                ddlBanh.Items.Add("Bánh kem");
                ddlBanh.Items.Add("Bánh bông lan");
                ddlBanh.Items.Add("Bánh su que");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
            divHoaDon.Visible = false;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(txtSL.Text, out int soLuongMoi))
            {
                return;
            }

            string tenBanh = ddlBanh.SelectedItem.Text;
            bool found = false;

            for (int i = 0; i < lstBanh.Items.Count; i++)
            {
                string txt = lstBanh.Items[i].Text;
                if (txt.StartsWith(tenBanh))
                {
                    try
                    {
                        int start = txt.LastIndexOf('(') + 1;
                        int end = txt.LastIndexOf(')');
                        int soLuongCu = int.Parse(txt.Substring(start, end - start));

                        int tong = soLuongCu + soLuongMoi;
                        lstBanh.Items[i].Text = $"{tenBanh} ({tong})";

                        found = true;
                        break;
                    }
                    catch (Exception)
                    {
                    }
                }
            }

            if (!found)
            {
                lstBanh.Items.Add($"{tenBanh} ({soLuongMoi})");
            }

            divHoaDon.Visible = false;

            txtSL.Text = "1";
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                divHoaDon.Visible = false;
                return;
            }

            divHoaDon.Visible = true;

            string kh = Server.HtmlEncode(txtKH.Text.Trim());
            string dc = Server.HtmlEncode(txtDiaChi.Text.Trim());
            string mst = Server.HtmlEncode(txtMST.Text.Trim());

            string hoaDon = "<div style='font-family: Arial, sans-serif; font-size: 14px;'>";

            hoaDon += "<table style='width: 100%; border-collapse: collapse; margin-bottom: 15px;'>";
            hoaDon += "<tr><td style='width: 30%; padding: 5px 0; font-weight: bold;'>Khách hàng:</td><td style='padding: 5px 0;'>" + kh + "</td></tr>";
            hoaDon += "<tr><td style='width: 30%; padding: 5px 0; font-weight: bold;'>Địa chỉ:</td><td style='padding: 5px 0;'>" + dc + "</td></tr>";
            hoaDon += "<tr><td style='width: 30%; padding: 5px 0; font-weight: bold;'>Mã số thuế:</td><td style='padding: 5px 0;'>" + mst + "</td></tr>";
            hoaDon += "</table>";

            hoaDon += "<p style='font-weight: bold; margin-top: 15px; border-bottom: 1px solid #ccc; padding-bottom: 5px;'>CHI TIẾT ĐẶT HÀNG</p>";

            hoaDon += "<table style='width: 100%; border-collapse: collapse; text-align: left;'>";
            hoaDon += "<thead>";

            hoaDon += "<tr>";
            hoaDon += "<th style='border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2; width: 70%;'>Tên Bánh</th>";
            hoaDon += "<th style='border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2; width: 30%; text-align: center;'>Số Lượng</th>";
            hoaDon += "</tr>";
            hoaDon += "</thead>";
            hoaDon += "<tbody>";

            if (lstBanh.Items.Count == 0)
            {
                hoaDon += "<tr><td colspan='2' style='border: 1px solid #ddd; padding: 8px;'>Chưa chọn bánh nào</td></tr>";
            }
            else
            {
                foreach (ListItem item in lstBanh.Items)
                {
                    string text = item.Text;
                    string tenBanh = text;
                    string soLuong = "1"; 

                    int start = text.LastIndexOf('(');
                    int end = text.LastIndexOf(')');

                    if (start != -1 && end != -1 && end > start)
                    {
                        soLuong = text.Substring(start + 1, end - start - 1);
                        tenBanh = text.Substring(0, start).Trim();
                    }

                    hoaDon += "<tr>";
                    hoaDon += "<td style='border: 1px solid #ddd; padding: 8px;'>" + Server.HtmlEncode(tenBanh) + "</td>";
                    hoaDon += "<td style='border: 1px solid #ddd; padding: 8px; text-align: center; font-weight: bold;'>" + Server.HtmlEncode(soLuong) + "</td>";
                    hoaDon += "</tr>";
                }
            }

            hoaDon += "</tbody>";
            hoaDon += "</table>";

            hoaDon += "</div>";

            lblHoaDon.Text = hoaDon;
        }
    }
}