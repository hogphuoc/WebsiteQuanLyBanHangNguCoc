using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DOREST
{
    public partial class TrangCrunchmuesli : System.Web.UI.Page
    {
        static DataTable cart = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            //CHỈ  thiết  lập  "giỏ  hàng"  mới  khi  HomePage  được  Load  lần  đầu,  các  lần  PostBack  sau  đó  không  thiết  lập  lại,  tránh  mất  “giỏ hàng” đã chọn = CHÚ Ý ! <=> NOT
            //NẾU ĐÃ CÓ GIỎ HÀNG MÀ NSD BẤM NÚT BACK TRONG HOMEPAGE THÌ NÓ SẼ KO TẠO GIỎ HÀNG MỚI
            {
                if (Session["cart"] != null)
                {
                    cart = (DataTable)Session["cart"];//lấy  "giỏ  hàng"  từ  Seesion  xuống  lưu  vào  biến  cart  để  dùng
                                                      //cart  =  (DataTable)Session["cart"];
                }

                else//CHƯA  "Giỏ  hàng"  =>  khởi  tạo  "giỏ  hàng"  mới
                {
                    cart.Rows.Clear();//Xóa  tất  cả  các  dòng  "rác"  nếu  có  trong  biến  cart  lưu  "giỏ  hàng"
                    cart.Columns.Clear();//  Xóa  tất  cả  các  cột  "rác"  nếu  có  trong  biến  cart  lưu  "giỏ  hàng"
                    cart.Columns.Add("MaSP", typeof(string));
                    //ĐỊNH  CÁC  CỘT  DỮ  LIỆU  CẦN  QUẢN  LÝ  TRONG  "GIỎ  HÀNG"
                    cart.Columns.Add("TenSP", typeof(string));
                    cart.Columns.Add("DonGia", typeof(int));
                    cart.Columns.Add("Soluong", typeof(int));
                    //cart.Columns.Add("hinh", typeof(string));
                    cart.Columns.Add("thanhtien", typeof(double), "Soluong*DonGia");
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "themvaogio")
            {
                string MaSP = ((Label)e.Item.FindControl("MaSPLabel")).Text;
                string TenSP = ((Label)e.Item.FindControl("TenSPLabel")).Text;
                int DonGia = int.Parse(((Label)e.Item.FindControl("DonGiaLabel")).Text);
                int sl = int.Parse(((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("txtsl")).Text.Trim());
                //string hinh = ((Image)e.Item.FindControl("imgHinh")).ImageUrl;
                foreach (DataRow r in cart.Rows)
                {
                    if ((string)r["MaSP"] == MaSP)
                    {
                        r["Soluong"] = (int)r["Soluong"] + sl;
                        goto kt;
                    }
                }
                cart.Rows.Add(MaSP, TenSP, DonGia, sl);
            kt:
                Session["cart"] = cart;
                lbltong.Text = "GIỎ HÀNG HIỆN TẠI CỦA BẠN CÓ " + cart.Compute("Count(MaSP)", "").ToString() + " MÓN HÀNG, TỔNG TIỀN: "
                    + cart.Compute("Sum(thanhtien)", "").ToString() + "VND";
            }
        }
    }
}