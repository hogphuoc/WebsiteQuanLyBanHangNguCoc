using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_LOAISP : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lbltitle.Text = "CHÀO MỪNG " + us.ToUpper() +" ĐẾN VỚI TRANG QUẢN LÝ LOẠI SẢN PHẨM CỦA CỬA HÀNG DORSET CEREALS";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblmaloai.Visible = !lblmaloai.Visible;
            lbltenloai.Visible = !lbltenloai.Visible;
            //-------
            txtmaloai.Visible = !txtmaloai.Visible;
            txttenloai.Visible = !txttenloai.Visible;
            //-------
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Thêm loại sản phẩm mới") // nếu đang thêm --> lưu
            {
                // xoá trống để chuẩn bị nhập mới
                txtmaloai.Text = "";
                txttenloai.Text = "";
                // đổi nhãn Thêm  --> Lưu
                btnThem.Text = "Lưu loại sản phẩm";
            }
            else
            {
                try
                {
                    SqlDataSource1.InsertParameters.Clear(); // xoá tất cả các tham số cũ tránh add nhiều lần
                    SqlDataSource1.InsertParameters.Add("MaLoaiSP", txtmaloai.Text.Trim());
                    SqlDataSource1.InsertParameters.Add("TenLoaiSP", txttenloai.Text);
                    // lưu thông tin  mới vào DB
                    SqlDataSource1.Insert();
                    // tải DL từ DB lên GriView
                    GridView1.DataBind();
                    this.Title = "THÊM THÀNH CÔNG";
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                btnThem.Text = "Thêm loại sản phẩm";
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblmaloai.Visible = false;
            lbltenloai.Visible = false;
            //-------
            txtmaloai.Visible = false;
            txttenloai.Visible = false;
            //-------
            btnHuy.Visible = false;
        }
    }
}