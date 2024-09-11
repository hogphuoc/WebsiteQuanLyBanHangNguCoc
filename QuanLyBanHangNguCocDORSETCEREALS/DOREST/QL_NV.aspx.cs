using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_NV : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) 
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us.ToUpper() +" ĐẾN VỚI TRANG QUẢN LÝ NHÂN VIÊN CỦA CỬA HÀNG DORSET CEREALS";
            DropDownListKV_SelectedIndexChanged(sender, e);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListKV_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListKV.SelectedValue == "*")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [NHANVIEN]";
                btnThem.Enabled = false;
                btnThem.ToolTip = DropDownListKV.ToolTip = "VUI LÒNG CHỌN KHU VỰC CỤ THỂ!";

            }
            else
            {
                btnThem.Enabled = true;
                btnThem.ToolTip = DropDownListKV.ToolTip = "";
            }
            lblMKV.Text = DropDownListKV.SelectedValue;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblmnv.Visible = !lblmnv.Visible;
            lbltennv.Visible = !lbltennv.Visible;
            lblsdt.Visible = !lblsdt.Visible;
            lblNgayVaoLam.Visible = !lblNgayVaoLam.Visible;
            //------
            txtmnv.Visible = !txtmnv.Visible;
            txttennv.Visible = !txttennv.Visible;
            txtsdt.Visible = !txtsdt.Visible;
            CalendarNgayVL.Visible = !CalendarNgayVL.Visible;
            //------
            btnHuy.Visible = !btnHuy.Visible;
            if (btnThem.Text.Trim() == "Thêm nhân viên") 
            {
                txtmnv.Text = "";
                txttennv.Text = "";
                txtsdt.Text = "";

                btnThem.Text = "Lưu thông tin nhân viên";
            }
            else
            {
                try
                {
                    SqlDataSource2.InsertParameters.Clear(); 
                    SqlDataSource2.InsertParameters.Add("MaNV", txtmnv.Text.Trim());
                    SqlDataSource2.InsertParameters.Add("TenNV", txttennv.Text);
                    SqlDataSource2.InsertParameters.Add("SoDTNV", txtsdt.Text);
                    SqlDataSource2.InsertParameters.Add("NgayVaoLam", System.Data.DbType.Date, CalendarNgayVL.SelectedDate.ToShortDateString());
                    SqlDataSource2.InsertParameters.Add("MaKV", DropDownListKV.SelectedValue.Trim());
                    SqlDataSource2.Insert();
                    GridView1.DataBind();
                    this.Title = "ĐÃ THÊM THÀNH CÔNG";
                    CalendarNgayVL.Visible = false;
                }
                catch (System.Exception ex) { this.Title = "LỖI THÊM NHÂN VIÊN" + ex.Message; }
                GridView1.DataBind();
                btnThem.Text = "Thêm nhân viên";
            }
        }

        protected void CalendarNgayVL_SelectionChanged(object sender, EventArgs e)
        {
            lblNgayVaoLam.Text = CalendarNgayVL.SelectedDate.ToShortDateString();
            CalendarNgayVL.Visible = false;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            lblmnv.Visible = false;
            lbltennv.Visible = false;
            lblsdt.Visible = false;
            lblNgayVaoLam.Visible = false;
            //------
            txtmnv.Visible = false;
            txttennv.Visible = false;
            txtsdt.Visible = false;
            CalendarNgayVL.Visible = false;
            //-----
            btnHuy.Visible = false;
            //---------
            btnThem.Text = "Thêm nhân viên";
        }
    }
}