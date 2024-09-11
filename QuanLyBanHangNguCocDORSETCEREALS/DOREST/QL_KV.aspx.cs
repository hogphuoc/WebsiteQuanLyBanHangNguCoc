using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_KV : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us + " ĐẾN VỚI TRANG QUẢN LÝ KHU VỰC CỦA CỬA HÀNG DORSET CEREALS";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblMaKV.Visible = !lblMaKV.Visible;
            lblTenKV.Visible = !lblTenKV.Visible;
            //----
            txtMaKV.Visible = !txtMaKV.Visible;
            txtTenKV.Visible = !txtTenKV.Visible;
            //----
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Thêm khu vực bán") // nếu đang thêm --> lưu
            {
                // xoá trống để chuẩn bị nhập mới
                txtMaKV.Text = "";
                txtTenKV.Text = "";
                // đổi nhãn Thêm  --> Lưu
                btnThem.Text = "Lưu khu vực mới";
            }
            else
            {
                try
                {
                    SqlDataSource1.InsertParameters.Clear(); // xoá tất cả các tham số cũ tránh add nhiều lần
                    SqlDataSource1.InsertParameters.Add("MaKV", txtMaKV.Text.Trim());
                    SqlDataSource1.InsertParameters.Add("TenKV", txtTenKV.Text);
                    // lưu thông tin  mới vào DB
                    SqlDataSource1.Insert();
                    // tải DL từ DB lên GriView
                    GridView1.DataBind();
                    this.Title = "ĐÃ THÊM THÀNH CÔNG";
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                btnThem.Text = "Thêm khu vực bán";
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblMaKV.Visible = false;
            lblTenKV.Visible = false;
            //----
            txtMaKV.Visible = false;
            txtTenKV.Visible = false;
            //----
            btnHuy.Visible = false;
        }
    }
}