using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (ddlBanh.SelectedIndex == -1 || txtSL.Text.Trim() == "")
                return;

            int soLuongMoi;
            if (!int.TryParse(txtSL.Text, out soLuongMoi) || soLuongMoi <= 0)
                return;

            string tenBanh = ddlBanh.SelectedItem.Text;
            bool found = false;

            for (int i = 0; i < lstBanh.Items.Count; i++)
            {
                string txt = lstBanh.Items[i].Text;
                if (txt.StartsWith(tenBanh))
                {
                    int start = txt.LastIndexOf('(') + 1;
                    int end = txt.LastIndexOf(')');
                    int soLuongCu = int.Parse(txt.Substring(start, end - start));

                    int tong = soLuongCu + soLuongMoi;
                    lstBanh.Items[i].Text = $"{tenBanh} ({tong})";

                    found = true;
                    break;
                }
            }
            if (!found)
            {
                lstBanh.Items.Add($"{tenBanh} ({soLuongMoi})");
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kh = txtKH.Text.Trim();
            string dc = txtDiaChi.Text.Trim();
            string mst = txtMST.Text.Trim();

            string hoaDon = "";
            hoaDon += $"<b>Khách hàng:</b> {kh}<br/>";
            hoaDon += $"<b>Địa chỉ:</b> {dc}<br/>";
            hoaDon += $"<b>Mã số thuế:</b> {mst}<br/><br/>";
            hoaDon += "<b>Danh sách bánh đặt:</b><br/>";

            if (lstBanh.Items.Count == 0)
            {
                hoaDon += "- Chưa chọn bánh nào<br/>";
            }
            else
            {
                foreach (ListItem item in lstBanh.Items)
                {
                    hoaDon += "- " + item.Text + "<br/>";
                }
            }

            lblHoaDon.Text = hoaDon;
        }
    }
}