using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST.QUANLY
{
    public partial class QL_SP : System.Web.UI.Page
    {
        static string us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                us = Session["name"] as string;
            }
            lbltitle.Text = "CHÀO MỪNG " + us.ToUpper() + " ĐẾN VỚI TRANG QUẢN LÝ SẢN PHẨM CỦA CỬA HÀNG DORSET CEREALS";
            DropDownListLoaiSP_SelectedIndexChanged(sender, e);
        }

        protected void CheckBoxHinh_CheckedChanged(object sender, EventArgs e)
        {
            GridViewSP.Columns[9].Visible = !GridViewSP.Columns[9].Visible;
        }

        protected void DropDownListLoaiSP_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownListLoaiSP.SelectedValue == "*") // chọn tất cả, bản thân selectedValue là string
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SANPHAM]"; //viết lại câu lệnh này cho grid
                btnThem.Enabled = false; // không thể thêm nếu chọn tất cả
                btnThem.ToolTip = DropDownListLoaiSP.ToolTip = "VUI LÒNG CHỌN MỘT LOẠI SẢN PHẨM CỤ THỂ!";

            }
            else
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM SANPHAM WHERE (MaLoaiSP = @MaLoaiSP)";
                btnThem.Enabled = true; // vì đã chọn 1 kv cụ thể nên sẽ thêm được
                btnThem.ToolTip = DropDownListLoaiSP.ToolTip = "VUI LÒNG CHỌN MỘT LOẠI SẢN PHẨM CỤ THỂ!";
            }
            lblmaloai.Text = DropDownListLoaiSP.SelectedValue;
        } 

        protected void btnThem_Click(object sender, EventArgs e)
        {
            lblMaSP.Visible = !lblMaSP.Visible;
            lblTenSP.Visible = !lblTenSP.Visible;
            lblDonGia.Visible = !lblDonGia.Visible;
            lblDVT.Visible = !lblDVT.Visible;
            lblNgaySX.Visible = !lblNgaySX.Visible;
            lblHanSuDung.Visible = !lblHanSuDung.Visible;
            lblMoTa.Visible = !lblMoTa.Visible;
            lblChonHinh.Visible = !lblChonHinh.Visible;

            txtMaSP.Visible = !txtMaSP.Visible;
            txtTenSP.Visible = !txtTenSP.Visible;
            txtDVT.Visible = !txtDVT.Visible;
            txtDonGia.Visible = !txtDonGia.Visible;
            txtMoTa.Visible = !txtMoTa.Visible; 
            CalendarNgaySX.Visible = !CalendarNgaySX.Visible;
            txtHanSuDung.Visible = !txtHanSuDung.Visible;
            FileUploadHinh.Visible = !FileUploadHinh.Visible;

            btnHuy.Visible = !btnHuy.Visible;

            if (btnThem.Text.Trim() == "Thêm sản phẩm") 
            {
                
                txtMaSP.Text = "";
                txtTenSP.Text = "";
                txtDVT.Text = "";
                txtDonGia.Text = "";
                txtMoTa.Text = "";
                txtHanSuDung.Text = "";

                btnThem.Text = "Lưu sản phẩm mới";
            }
            else
            {              
                try
                {
                    SqlDataSource2.InsertParameters.Clear(); 
                    SqlDataSource2.InsertParameters.Add("MaSP", txtMaSP.Text.Trim());
                    SqlDataSource2.InsertParameters.Add("TenSP", txtTenSP.Text);
                    SqlDataSource2.InsertParameters.Add("DVT", txtDVT.Text);
                    SqlDataSource2.InsertParameters.Add("DonGia", System.Data.DbType.Double, txtDonGia.Text.Trim());
                    SqlDataSource2.InsertParameters.Add("Mota", txtMoTa.Text);
                    SqlDataSource2.InsertParameters.Add("NgaySX", System.Data.DbType.Date, CalendarNgaySX.SelectedDate.ToShortDateString());
                    SqlDataSource2.InsertParameters.Add("HanSD", txtHanSuDung.Text);
                    SqlDataSource2.InsertParameters.Add("MaLoaiSP", DropDownListLoaiSP.SelectedValue.Trim());
                    SqlDataSource2.InsertParameters.Add("Hinhanh", @"~\\Image_sanpham\\" + System.IO.Path.GetFileName(FileUploadHinh.FileName));

                    FileUploadHinh.SaveAs("D:\\DOREST\\DOREST\\Image_sanpham\\" + System.IO.Path.GetFileName(FileUploadHinh.FileName));
                    SqlDataSource2.Insert();
                    GridViewSP.DataBind();
                             
                    this.Title = "ĐÃ THÊM SẢN PHẨM";

                    CalendarNgaySX.Visible = false;
                }
                catch (System.Exception ex) { this.Title = "LỖI" + ex.Message; }
                GridViewSP.DataBind();
                CalendarNgaySX.Visible = false;
                btnThem.Text = "Thêm sản phẩm";
            }
            
        }

        protected void CalendarNgaySX_SelectionChanged(object sender, EventArgs e)
        {
            lblNgaySX.Text = CalendarNgaySX.SelectedDate.ToShortDateString();
            CalendarNgaySX.Visible = false;
        }

        protected void btHuy_Click(object sender, EventArgs e)
        {
            lblMaSP.Visible = false;
            lblTenSP.Visible = false;
            lblDonGia.Visible = false;
            lblDVT.Visible = false;
            lblNgaySX.Visible = false;
            lblHanSuDung.Visible = false;
            lblMoTa.Visible = false;
            lblChonHinh.Visible = false;

            txtMaSP.Visible = false;
            txtTenSP.Visible = false;
            txtDonGia.Visible = false;
            txtDVT.Visible = false;
            CalendarNgaySX.Visible = false;
            txtHanSuDung.Visible = false;
            txtMoTa.Visible = false;
            FileUploadHinh.Visible = false;

            btnHuy.Visible = false;
            btnThem.Text = "Thêm sản phẩm";
        }

        protected void GridViewSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridViewSP_RowEditing(object sender, GridViewEditEventArgs e)
        {
            /*id = e.NewEditIndex;*/
        }

        protected void GridViewSP_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            /*if (e.CommandName.Trim() == "Hinhanh")
            {
                if (e.CommandName.Trim() == "Hinhanh")

                {
                    if (((FileUpload)GridViewSP.Rows[id].FindControl("FileUpload1")).FileName != "")
                    {
                        ((TextBox)GridViewSP.Rows[id].FindControl("TextBox1")).Text = "~\\Image_sanpham\\" +
                        ((FileUpload)GridViewSP.Rows[id].FindControl("FileUpload1")).FileName;//GÁN HÌNH VỪA CHỌN trong FileUpload vào textbox dataBinding  
                        ((FileUpload)GridViewSP.Rows[id].FindControl("FileUpload1")).Visible = false; //ẨN FileUpload sau khi gán xong 
                        ((Button)GridViewSP.Rows[id].FindControl("Button1")).Text = "Chọn hình khác"; //đổi nhãn nút thành: "Chọn hình khác" 
                    }
                }
            }*/
        }
    }
}