using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_CH : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us + " ĐẾN VỚI TRANG QUẢN LÝ CHI NHÁNH CỬA HÀNG DORSET CEREALS";
            DropDownListKV_SelectedIndexChanged(sender, e);
        }

        protected void DropDownListKV_SelectedIndexChanged(object sender, EventArgs e)
        {
            // tải dữ liệu trong trường hợp nhân viên chọn hiển thị tất cả
            if (DropDownListKV.SelectedValue == "*") // chọn tất cả, bản thân selectedValue là string
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [CUAHANG]"; //viết lại câu lệnh này cho grid
                btnThem.Enabled = false; // không thể thêm nếu chọn tất cả
                btnThem.ToolTip = DropDownListKV.ToolTip = "VUI LÒNG CHỌN MỘT KHU VỰC CỤ THỂ!";

            }
            else
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM CUAHANG WHERE (MaKV = @MaKV)";
                btnThem.Enabled = true; // vì đã chọn 1 kv cụ thể nên sẽ thêm được
                btnThem.ToolTip = DropDownListKV.ToolTip = "VUI LÒNG CHỌN MỘT KHU VỰC CỤ THỂ!";
            }
            // hiển thị mã số khu vực 
            lblKhuvuc.Text = DropDownListKV.SelectedValue;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblMaCH.Visible = false;
            lblTenCH.Visible = false;
            lblDC.Visible = false;
            lblSDT.Visible = false;
            //--------
            txtMaCH.Visible = false;
            txtTenCH.Visible = false;
            txtDC.Visible = false;
            txtSDT.Visible = false;
            //-----
            btnHuy.Visible = false;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblMaCH.Visible = !lblMaCH.Visible;
            lblTenCH.Visible = !lblTenCH.Visible;
            lblDC.Visible = !lblDC.Visible;
            lblSDT.Visible = !lblSDT.Visible;
            //--------
            txtMaCH.Visible = !txtMaCH.Visible;
            txtTenCH.Visible = !txtTenCH.Visible;
            txtDC.Visible = !txtDC.Visible;
            txtSDT.Visible = !txtSDT.Visible;
            //-----
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Thêm chi nhánh mới") // nếu đang thêm  --> lưu
            {

                txtMaCH.Text = "";
                txtTenCH.Text = "";
                txtDC.Text = "";
                txtSDT.Text = "";

                btnThem.Text = "Lưu chi nhánh";
            }
            else
            {
                try
                { 
                    SqlDataSource2.InsertParameters.Clear(); 

                    SqlDataSource2.InsertParameters.Add("MaCH", txtMaCH.Text.Trim());
                    SqlDataSource2.InsertParameters.Add("MaKV", DropDownListKV.SelectedValue.Trim());
                    SqlDataSource2.InsertParameters.Add("TenCH", txtTenCH.Text);
                    SqlDataSource2.InsertParameters.Add("DiaChiCH", txtDC.Text);
                    SqlDataSource2.InsertParameters.Add("SDTLienHe", txtSDT.Text);
                    SqlDataSource2.Insert();
                    GridView1.DataBind();
                    this.Title = "ĐÃ THÊM CHI NHÁNH MỚI";
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                btnThem.Text = "Thêm chi nhánh mới";
            }
        }
    }
}