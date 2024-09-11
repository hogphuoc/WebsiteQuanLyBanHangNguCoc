using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_DDH : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lbltitle.Text = "CHÀO MỪNG " + us.ToUpper() + " ĐẾN VỚI TRANG QUẢN LÝ ĐON ĐẶT HÀNG CỦA CỬA HÀNG DORSET CEREALS";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}