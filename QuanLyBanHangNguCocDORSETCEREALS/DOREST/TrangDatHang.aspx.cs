using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class TrangDatHang : System.Web.UI.Page
    {
        static DataTable cart = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntimkiem_Click(object sender, EventArgs e)
        {
            btnhuy.Visible = true;
            if (btntimkiem.Text == "Tìm kiếm")
            {
                // tải dữ liệu lên gridview
                GridViewdskh.DataBind();
                // nếu không tìm thấy khách hàng nào
                if (GridViewdskh.Rows.Count < 1)
                {
                    btntimkiem.Text = "Thêm thông tin KH mới"; // cho thêm mới
                }
                else // nếu tìm thấy (có khả năng tìm được từ 2 kh trở lên => cho chọn)
                {
                    btntimkiem.Text = "Chọn khách hàng";
                    // gán kh đầu tiên vào txtMaKH (kh mới)
                    txttimkiem.Text = GridViewdskh.Rows[0].Cells[1].Text.Trim();
                }
            }
            else if (btntimkiem.Text == "Thêm thông tin KH mới")
            {
                // hiển thị ô nhập thông tin kh mới
                lblnew.Visible = true;
                //----
                lblmkh.Visible = true;
                lblhotenkh.Visible = true;
                lbldiachi.Visible = true;
                lblsdt.Visible = true;
                //----
                txtmkh.Visible = true;
                txthoten.Visible = true;
                txtsdt.Visible = true;
                txtdiachi.Visible = true;
                // xoá trống các ô để chuẩn bị nhập mới
                txtmkh.Text = "000";
                txtmkh.ToolTip = "KHÔNG ĐỂ TRỐNG VÀ KHÔNG NHẬP TRÙNG MÃ KH"; // SAU NÀY THUỘC TÍNH NÀY PHÁT SINH --> KHÔNG CHO KH TỰ NHẬP
                txthoten.Visible = true;
                txtsdt.Visible = true;
                txtdiachi.Visible = true;
                // ĐỔI NHÃN = LƯU THÔNG TIN KH
                btntimkiem.Text = "Lưu thông tin KH";
            }
            else if (btntimkiem.Text == "Lưu thông tin KH") // LƯU THÔNG TIN KH MỚI VỪA NHẬP
            {
                // lưu thông tin kh
                SqlDataSource1.Insert();
                // tải kh vừa nhập lên
                GridViewdskh.DataBind();

                // ẩn ô nhập thông tin kh
                lblmkh.Visible = false;
                lblhotenkh.Visible = false;
                lblsdt.Visible = false;
                lbldiachi.Visible = false;
                lblnew.Visible=false;
                //----
                txtmkh.Visible = false;
                txthoten.Visible = false;
                txtsdt.Visible = false;
                txtdiachi.Visible = false;
                btntimkiem.Text = "Chọn khách hàng";
            }
            // XỬ LÝ TRƯỜNG HỢP CHỌN
            else if (btntimkiem.Text == "Chọn khách hàng")
            {
                // gán mã kh đang chọn vào ô txtTim
                txttimkiem.Text = txtmkh.Text.Trim();
                // tải DL KH vừa chọn
                GridViewdskh.DataBind();
                // khoá - không cho chọn lại
                btntimkiem.Enabled = false;
                // hiển thị thông tin đơn hàng 
                lblttdondathang.Visible = true;
                lblmdh.Visible = true;
                lblngaylap.Visible = true;
                lbldcgh.Visible = true;
                lblghichu.Visible = true;
                
                DateTime t = System.DateTime.Now;
                lblddh.Text = txttimkiem.Text.Trim() + t.Year.ToString().Substring(2, 2) + t.Month.ToString().Trim() + t.Day.ToString().Trim()
                    + t.Hour.ToString().Trim() + t.Minute.ToString().Trim() + t.Second.ToString().Trim();
                lblddh.Visible = true;
                lblngaynhan.Text = t.ToShortDateString().Trim();

                txtdiachigh.Visible = true; // gán địa chỉ khách hàng vào đây = mặc định DC giao = DC KH
                txtdiachigh.Text = GridViewdskh.Rows[vt].Cells[3].Text.Trim();
                txtghichu.Visible = true;
                txtghichu.Text = "";
                lblttdondathang.Visible = true;

                btnxacnhan.Visible = true;
                btnhuydon.Visible = true;
                // THÔNG TIN CHI TIẾT ĐƠN HÀNG
                lblthongtinctddh.Visible = true;
                cart = Session["cart"] as DataTable;
                GridViewCTDDH.DataSource = cart;
                GridViewCTDDH.DataBind();
                lbltong.Text = "CHI TIẾT HÀNG CỦA BẠN HIỆN CÓ: " + cart.Compute("Count(MaSP)", "").ToString() + " MẶT HÀNG, TỔNG TIỀN: " + cart.Compute("Sum(thanhtien)", "").ToString() + " Đồng";
                lbltong.Visible = true;
                GridViewCTDDH.Visible = true;
            }
            btnhuy.Visible = true;
        }
        
        protected void btnhuy_Click(object sender, EventArgs e)
        {
            btntimkiem.Text = "Tìm kiếm";
            btntimkiem.Enabled = true;
            // ẩn ô nhập thông tin kh
            lblmkh.Visible = false;
            lblhotenkh.Visible = false;
            lblsdt.Visible = false;
            lbldiachi.Visible = false;
            txtmkh.Visible = false;
            txthoten.Visible = false;
            txtsdt.Visible = false;
            txtdiachi.Visible = false;
            // xoá trống textbox nhập thông tin tìm để nhập lại
            txttimkiem.Text = "";
            // nạp lại (trống) GridView
            GridViewdskh.DataBind();
            // ẩn chính nó
            btnhuy.Visible = false;
            // ------------ huỷ Order -----------
            // ẩn thông tin đơn hàng
            lblttdondathang.Visible = false;
            lblmdh.Visible = false;
            lblngaylap.Visible = false;
            lbldcgh.Visible = false;    
            lblghichu.Visible = false;
            //---
            lblddh.Visible = false;
            lblngaynhan.Visible = false;
            txtdiachigh.Visible = false;
            txtghichu.Text = "";
            btnxacnhan.Visible = false;
            btnhuydon.Visible = false;
            // ẩn thông tin CTDH
            lblthongtinctddh.Visible = false;
            cart = Session["cart"] as DataTable;
            GridViewCTDDH.DataSource = null;
            GridViewCTDDH.DataBind();
            lbltong.Text = "";
            lbltong.Visible = false;
        }
        static int vt = 0;
        protected void GridViewdskh_SelectedIndexChanged(object sender, EventArgs e)
        {
            vt = GridViewdskh.SelectedIndex;
            // gán mã kh đã chọn vào txtKH
            txtmkh.Text = GridViewdskh.Rows[vt].Cells[1].Text.Trim();
        }
        protected void btnxacnhan_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource2.Insert();
                this.Title = "Them san pham va thong tin chi tiet don hang thanh cong!";
                foreach (DataRow r in cart.Rows)
                {
                    SqlDataSource3.InsertParameters.Clear();
                    SqlDataSource3.InsertParameters.Add("MaDDH", lblddh.Text.Trim());
                    SqlDataSource3.InsertParameters.Add("MaSP", r["MaSP"].ToString().Trim());
                    SqlDataSource3.InsertParameters.Add("Soluong", DbType.Double, r["Soluong"].ToString().Trim());
                    SqlDataSource3.Insert();
                }
            }
            catch (System.Exception ex) { this.Title = "Co loi xay ra!! Thuc hien khong thanh cong" + ex.Message; }
            // khoá đơn hàng
            txtdiachigh.Enabled = false;
            txtghichu.Enabled = false;
            btnxacnhan.Enabled = false;
            // không cho huỷ khách 
            btnhuy.Enabled = false;
        }

        protected void btnhuydon_Click(object sender, EventArgs e)
        {
            lblnew.Visible = false;
            lblmkh.Visible = false;
            txtmkh.Visible = false;
            lblhotenkh.Visible = false;
            txthoten.Visible = false;
            lbldiachi.Visible = false;
            txtdiachi.Visible = false;
            lblsdt.Visible = false;
            txtsdt.Visible = false;
            lblttdondathang.Visible = false;
            lblmdh.Visible = false;
            lblddh.Visible = false;
            lblngaylap.Visible = false;
            lblngaynhan.Visible = false;
            lbldcgh.Visible = false;
            txtdiachigh.Visible = false;
            lblghichu.Visible=false;
            txtghichu.Visible = false;
            btnxacnhan.Visible = false;
            btnhuydon.Visible = false;
            // xoá trống ghi chú và người nhận bên thông tin đơn hàng
            txtghichu.Text = "";
            // cho tìm kiếm lại
            txttimkiem.Text = "";
            btntimkiem.Text = "Tìm kiếm";
            btntimkiem.Enabled = true;
            btnhuy.Enabled = false;
            // huỷ CTDH
            lblthongtinctddh.Visible = false;
            GridViewCTDDH.Visible = false;
            lbltong.Visible = false;
        }

        protected void txttimkiem_TextChanged(object sender, EventArgs e)
        {

        }
    }
}