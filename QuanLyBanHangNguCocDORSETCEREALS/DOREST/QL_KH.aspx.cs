using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_KH : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us.ToUpper() + " ĐẾN VỚI TRANG QUẢN LÝ KHÁCH HÀNG CỦA CỬA HÀNG DORSET CEREALS";
        }

        protected void txtdiachi_TextChanged(object sender, EventArgs e)
        {

        }
    }
}