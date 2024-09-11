using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_NCC : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us + " ĐẾN VỚI TRANG QUẢN LÝ DANH MỤC NHÀ CUNG CẤP CỦA CỬA HÀNG DORSET CEREALS";
            DropDownListKV_SelectedIndexChanged(sender, e);

        }

        protected void DropDownListKV_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnThem.Enabled = true;
            DropDownListKV.ToolTip = DropDownListKV.ToolTip = btnThem.ToolTip = "";
            if (DropDownListKV.SelectedValue.Trim() == "*" && DropDownListLoaiSP.SelectedValue.Trim() == "*")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM NHACUNGCAP";
                btnThem.Enabled = false;
                DropDownListKV.ToolTip = DropDownListLoaiSP.ToolTip = btnThem.ToolTip = "CHỌN MỘT KHU VỰC VÀ MỘT LOẠI SẢN PHẨM CỤ THỂ";
            }
            if (DropDownListKV.SelectedValue.Trim() != "*" && DropDownListLoaiSP.SelectedValue.Trim() == "*")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM NHACUNGCAP WHERE (MaKV = @MaKV)";
                btnThem.Enabled = false;
                DropDownListKV.ToolTip = DropDownListLoaiSP.ToolTip = btnThem.ToolTip = "CHỌN MỘT KHU VỰC CỤ THỂ";
            }
            if (DropDownListKV.SelectedValue.Trim() == "*" && DropDownListLoaiSP.SelectedValue.Trim() != "*")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM NHACUNGCAP WHERE (MaLoaiSP = @mMaLoaiSP)";
                btnThem.Enabled = false;
                DropDownListKV.ToolTip = DropDownListLoaiSP.ToolTip = btnThem.ToolTip = "CHỌN MỘT LOẠI SẢN PHẨM CỤ THỂ";
            }
            lblmkv.Text = DropDownListKV.SelectedValue;
            lblmlsp.Text = DropDownListLoaiSP.SelectedValue;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblmsncc.Visible = false;
            lbltenNCC.Visible = false;
            lblDiaChi.Visible = false;
            lblMaSP.Visible = false;
            //------
            txtmsncc.Visible = false;
            txttenNCC.Visible = false;
            txtDiaChi.Visible = false;
            DropDownListMaSP.Visible = false;
            //------
            btnHuy.Visible = false;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblmsncc.Visible = !lblmsncc.Visible;
            lbltenNCC.Visible = !lbltenNCC.Visible;
            lblDiaChi.Visible = !lblDiaChi.Visible;
            lblMaSP.Visible = !lblMaSP.Visible;
            //------
            txtmsncc.Visible = !txtmsncc.Visible;
            txttenNCC.Visible = !txttenNCC.Visible;
            txtDiaChi.Visible = !txtDiaChi.Visible;
            DropDownListMaSP.Visible = !DropDownListMaSP.Visible;
            //------
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Thêm nhà cung cấp")
            {
                txtmsncc.Text = "";
                txttenNCC.Text = "";
                txtDiaChi.Text = "";

                btnThem.Text = "Lưu nhà cung cấp mới";
            }
            else
            {
                try
                {
                    SqlDataSource1.InsertParameters.Clear();
                    SqlDataSource1.InsertParameters.Add("MaNCC", txtmsncc.Text.Trim());
                    SqlDataSource1.InsertParameters.Add("TenNCC", txttenNCC.Text);
                    SqlDataSource1.InsertParameters.Add("DiaChi", txtDiaChi.Text);                   
                    SqlDataSource1.InsertParameters.Add("MaSP", DropDownListMaSP.SelectedValue.Trim());
                    SqlDataSource1.InsertParameters.Add("MaKV", DropDownListKV.SelectedValue.Trim());
                    SqlDataSource1.InsertParameters.Add("MaLoaiSP", DropDownListLoaiSP.SelectedValue.Trim());
                    SqlDataSource1.Insert();
                    GridView1.DataBind();
                    this.Title = "ĐÃ THÊM THÀNH CÔNG";
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                GridView1.DataBind();
                btnThem.Text = "Thêm nhà cung cấp";
            }
        }
    }
}