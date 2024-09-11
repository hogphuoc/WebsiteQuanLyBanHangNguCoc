using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class TrangGiohang : System.Web.UI.Page
    {
        static DataTable cart = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                lbltitle.Text = "GIỎ HÀNG HIỆN TẠI CỦA BẠN ĐANG RỖNG, MỜI BẠN CHỌN SẢN PHẨM";
                btndathang.Text = "Đặt mua sản phẩm";
                lbltong.Text = "";
                GridViewGioHang.DataSource = null;
                btnexit.Visible = false;
                btnhuy.Visible = false;
                btnDMGH.Visible = false;
            }
            else
            {
                lbltitle.Text = "GIỎ HÀNG HIỆN TẠI CỦA BẠN CÓ: ";
                btndathang.Text = "Tiếp tục đặt mua sản phẩm";
                cart = Session["cart"] as DataTable;
                GridViewGioHang.DataSource = cart;
                GridViewGioHang.DataBind();
                lbltong.Text = "GIỎ HÀNG CỦA BẠN HIỆN CÓ: " + cart.Compute("Count(MaSP)", "").ToString() + "MẶT HÀNG, TỔNG TIỀN: " + cart.Compute("Sum(thanhtien)", "").ToString() + " Đồng";
                btnhuy.Visible = true;
                btnDMGH.Visible = true;
            }
        }

        protected void btnDMGH_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\TrangDatHang.aspx");
        }

        protected void btndathang_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\TrangSanPham.aspx");
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Session["cart"] = null;
            Response.Redirect("~\\Trangtrangchu.aspx");
        }

        protected void btnexit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Trangtrangchu.aspx");
        }
    }
}