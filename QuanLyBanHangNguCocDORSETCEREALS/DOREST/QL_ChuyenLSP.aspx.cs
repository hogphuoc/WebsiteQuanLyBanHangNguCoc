using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_ChuyenLSP : System.Web.UI.Page
    {
        static String us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us.ToUpper() + " ĐẾN VỚI TRANG CHUYỂN LOẠI SẢN PHẨM CỦA CỬA HÀNG DORSET";
            DropDownList1_SelectedIndexChanged(sender, e);
        }
        protected void KiemTraListBox()
        {
            btnChuyen1.Enabled = false;
            btnChuyen2.Enabled = false;
            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected)
                {
                    btnChuyen1.Enabled = true;
                    break;
                }
            }
            for (int i = 0; i < ListBox2.Items.Count; i++)
            {
                if (ListBox2.Items[i].Selected)
                {
                    btnChuyen2.Enabled = true;
                    break;
                }
            }
        }
        protected void btnChuyen2_Click(object sender, EventArgs e)
        {
            SqlDataSourceLSPD.Update();
            ListBox1.DataBind();
            ListBox2.DataBind();
            KiemTraListBox();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Trim() == DropDownList2.SelectedValue.Trim())
            {
                btnChuyen1.Enabled = false;
                btnChuyen2.Enabled = false;
                btnChuyen3.Enabled = false;
                btnChuyen4.Enabled = false;
                DropDownList1.ToolTip = DropDownList2.ToolTip = "Vui long chon 2 nhom khac nhau de tien hanh chuyen nhom";
            }
            else
            {
                KiemTraListBox();
                btnChuyen3.Enabled = true;
                btnChuyen4.Enabled = true;
                DropDownList1.ToolTip = DropDownList2.ToolTip = "";
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1_SelectedIndexChanged(sender, e);
        }

        protected void btnChuyen1_Click(object sender, EventArgs e)
        {
            SqlDataSourceLSPN.Update();
            ListBox1.DataBind();
            ListBox2.DataBind();
            KiemTraListBox();
        }

        protected void btnChuyen3_Click(object sender, EventArgs e)
        {
            SqlDataSourceLSPN.UpdateCommand = "UPDATE SANPHAM SET MaLoaiSP = @MaLoaiSP_update WHERE (MaLoaiSP = @MaLoaiSP)";
            SqlDataSourceLSPN.UpdateParameters.Clear();
            SqlDataSourceLSPN.UpdateParameters.Add("MaLoaiSP_update", DropDownList2.SelectedValue.Trim());
            SqlDataSourceLSPN.UpdateParameters.Add("MaLoaiSP", DropDownList1.SelectedValue.Trim());
            
            SqlDataSourceLSPN.Update();

            ListBox1.DataBind();
            ListBox2.DataBind();

            KiemTraListBox();
        }

        protected void btnChuyen4_Click(object sender, EventArgs e)
        {
            SqlDataSourceLSPD.UpdateCommand = "UPDATE SANPHAM SET MaLoaiSP = @MaLoaiSP_update WHERE (MaLoaiSP = @MaLoaiSP)";
            SqlDataSourceLSPD.UpdateParameters.Clear();
            SqlDataSourceLSPD.UpdateParameters.Add("MaLoaiSP_update", DropDownList1.SelectedValue.Trim());
            SqlDataSourceLSPD.UpdateParameters.Add("MaLoaiSP", DropDownList2.SelectedValue.Trim());
            SqlDataSourceLSPD.Update();

            ListBox1.DataBind();
            ListBox2.DataBind();

            KiemTraListBox();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\TrangQL.aspx");
        }
    }
}