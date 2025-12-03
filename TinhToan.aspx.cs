using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class TinhToan : System.Web.UI.Page
    {
        private double So1 => string.IsNullOrWhiteSpace(txtSo1.Text) ? 0 : double.Parse(txtSo1.Text);
        private double So2 => string.IsNullOrWhiteSpace(txtSo2.Text) ? 0 : double.Parse(txtSo2.Text);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            lblKQ.Text = "Kết quả: " + (So1 + So2);
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            lblKQ.Text = "Kết quả: " + (So1 - So2);
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            lblKQ.Text = "Kết quả: " + (So1 * So2);
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            if (So2 == 0)
            {
                lblKQ.Text = "Không thể chia cho 0!";
                return;
            }

            lblKQ.Text = "Kết quả: " + (So1 / So2);
        }
    }
}