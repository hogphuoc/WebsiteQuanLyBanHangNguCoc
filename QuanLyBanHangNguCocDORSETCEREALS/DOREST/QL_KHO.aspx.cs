using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_KHO : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us + " ĐẾN VỚI TRANG QUẢN LÝ XUẤT NHẬP HÀNG CỦA CỬA HÀNG DORSET CEREALS";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            // đảo visible
            lblMaCH.Visible = !lblMaCH.Visible;
            lblMaSP.Visible = !lblMaSP.Visible;
            lblSL.Visible = !lblSL.Visible;
            //------
            txtMaCH.Visible = !txtMaCH.Visible;
            txtMaSP.Visible = !txtMaSP.Visible;
            txtSL.Visible = !txtSL.Visible;
            //------
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Nhập kho sản phẩm mới") // nếu đang thêm món --> lưu món
            {
                // xoá trống để chuẩn bị nhập mới
                txtMaCH.Text = "";
                txtMaSP.Text = "";
                txtSL.Text = "";

                btnThem.Text = "Lưu thông tin nhập hàng";
            }
            else
            {
                try
                {
                    SqlDataSource1.InsertParameters.Clear(); // xoá tất cả các tham số cũ tránh add nhiều lần
                    SqlDataSource1.InsertParameters.Add("MaCH", txtMaCH.Text.Trim());
                    SqlDataSource1.InsertParameters.Add("MaSP", txtMaSP.Text.Trim());
                    SqlDataSource1.InsertParameters.Add("SLTon", System.Data.DbType.Int32, txtSL.Text.Trim());
                    // lưu thông tin hàng tồn mới vào DB
                    SqlDataSource1.Insert();
                    // tải DL từ DB lên GriView
                    GridView1.DataBind();
                    this.Title = "ĐÃ THÊM THÀNH CÔNG";
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                GridView1.DataBind();
                btnThem.Text = "Nhập kho sản phẩm mới";
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblMaCH.Visible = false;
            lblMaSP.Visible = false;
            lblSL.Visible = false;
            //------
            txtMaCH.Visible = false;
            txtMaSP.Visible = false;
            txtSL.Visible = false;
            //------
            btnHuy.Visible = false;
            btnThem.Text = "Nhập kho sản phẩm mới";
        }

    }
}