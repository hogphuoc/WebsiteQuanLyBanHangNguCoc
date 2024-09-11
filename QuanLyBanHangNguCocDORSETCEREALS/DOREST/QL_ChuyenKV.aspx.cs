using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class QL_ChuyenKV : System.Web.UI.Page
    {
        static String us = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                us = Session["name"] as string;
            }
            lblTitle.Text = "CHÀO MỪNG " + us.ToUpper() + " ĐẾN VỚI TRANG CHUYỂN KHU VỰC NHÂN VIÊN";
            DropDownListN_SelectedIndexChanged(sender, e);
        }
        protected void KiemTraListBox()
        {
            btnChuyen1.Enabled = false;
            btnChuyen2.Enabled = false;
            for (int i = 0; i < ListBoxN.Items.Count; i++)
            {
                if (ListBoxN.Items[i].Selected)
                {
                    btnChuyen1.Enabled = true;
                    break;
                }
            }
            for (int i = 0; i < ListBoxD.Items.Count; i++)
            {
                if (ListBoxD.Items[i].Selected)
                {
                    btnChuyen2.Enabled = true;
                    break;
                }
            }
        }

        protected void DropDownListN_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListN.SelectedValue.Trim() == DropDownListD.SelectedValue.Trim())
            {
                btnChuyen1.Enabled = false;
                btnChuyen2.Enabled = false;
                btnChuyen3.Enabled = false;
                btnChuyen4.Enabled = false;
                DropDownListN.ToolTip = DropDownListD.ToolTip = "Vui long chon 2 khu vuc khac nhau de tien hanh chuyen nhom";
            }
            else
            {
                KiemTraListBox();
                btnChuyen3.Enabled = true;
                btnChuyen4.Enabled = true;
                DropDownListN.ToolTip = DropDownListD.ToolTip = "";
            }
        }

        protected void DropDownListD_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListN_SelectedIndexChanged(sender, e);
        }

        protected void btnChuyen1_Click(object sender, EventArgs e)
        {
            SqlDataSourceNVN.Update();
            ListBoxN.DataBind();
            ListBoxD.DataBind();
            KiemTraListBox();
        }

        protected void btnChuyen2_Click(object sender, EventArgs e)
        {
            SqlDataSourceNVD.Update();
            ListBoxN.DataBind();
            ListBoxD.DataBind();
            KiemTraListBox();
        }

        protected void btnChuyen3_Click(object sender, EventArgs e)
        {
            SqlDataSourceNVN.UpdateCommand = "UPDATE NHANVIEN SET MaKV = @MaKV_update WHERE (MaKV = @MaKV)";
            SqlDataSourceNVN.UpdateParameters.Clear();
            SqlDataSourceNVN.UpdateParameters.Add("MaKV_update", DropDownListD.SelectedValue.Trim());
            SqlDataSourceNVN.UpdateParameters.Add("MaKV", DropDownListN.SelectedValue.Trim());
            SqlDataSourceNVN.Update();

            ListBoxN.DataBind();
            ListBoxD.DataBind();

            KiemTraListBox();
        }

        protected void btnChuyen4_Click(object sender, EventArgs e)
        {
            SqlDataSourceNVD.UpdateCommand = "UPDATE NHANVIEN SET MaKV = @MaKV_update WHERE (MaKV = @MaKV)";
            SqlDataSourceNVD.UpdateParameters.Clear();
            SqlDataSourceNVD.UpdateParameters.Add("MaKV_update", DropDownListN.SelectedValue.Trim());
            SqlDataSourceNVD.UpdateParameters.Add("MaKV", DropDownListD.SelectedValue.Trim());
            SqlDataSourceNVD.Update();

            ListBoxN.DataBind();
            ListBoxD.DataBind();

            KiemTraListBox();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\TrangQL.aspx");
        }
    }
}