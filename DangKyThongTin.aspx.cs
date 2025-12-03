using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTrinhDo.Items.Add("Cao đẳng");
                ddlTrinhDo.Items.Add("Đại học");
                ddlTrinhDo.Items.Add("Thạc sĩ");

                lstNghe.Items.Add("Kỹ sư");
                lstNghe.Items.Add("Bác sĩ");
                lstNghe.Items.Add("Công nhân");
                lstNghe.Items.Add("Lập trình viên");

                ckSoThich.Items.Add("Chơi game");
                ckSoThich.Items.Add("Nghe nhạc");
                ckSoThich.Items.Add("Xem phim");
                ckSoThich.Items.Add("Du lịch");
                ckSoThich.Items.Add("Mua sắm");
            }
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string hoTen = txtHoTen.Text;
            string ngaySinh = txtNgaySinh.Text;
            string gioiTinh = rdNam.Checked ? "Nam" : "Nữ";
            string trinhDo = ddlTrinhDo.SelectedValue;

            string nghe = "";
            foreach (var item in lstNghe.Items)
            {
                var it = (System.Web.UI.WebControls.ListItem)item;
                if (it.Selected) nghe += it.Text + ", ";
            }

            string soThich = "";
            foreach (var item in ckSoThich.Items)
            {
                var it = (System.Web.UI.WebControls.ListItem)item;
                if (it.Selected) soThich += it.Text + ", ";
            }

            string fileName = "";
            if (fileAnh.HasFile)
            {
                fileName = Path.GetFileName(fileAnh.FileName);
                string path = Server.MapPath("~/Uploads/" + fileName);

                Directory.CreateDirectory(Server.MapPath("~/Uploads/"));
                fileAnh.SaveAs(path);

                imgHinh.ImageUrl = "~/Uploads/" + fileName;
                imgHinh.Visible = true;
            }

            lblKetQua.Text = $@"
                <ul>
                    <li><b>Họ tên:</b> {hoTen}</li>
                    <li><b>Ngày sinh:</b> {ngaySinh}</li>
                    <li><b>Giới tính:</b> {gioiTinh}</li>
                    <li><b>Trình độ:</b> {trinhDo}</li>
                    <li><b>Nghề nghiệp:</b> {nghe}</li>
                    <li><b>Sở thích:</b> {soThich}</li>
                </ul>
            ";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaySinh.Text = "";
            rdNam.Checked = false;
            rdNu.Checked = false;
            ddlTrinhDo.SelectedIndex = 0;
            lstNghe.ClearSelection();
            ckSoThich.ClearSelection();
            lblKetQua.Text = "";
            imgHinh.Visible = false;
        }
    }
}