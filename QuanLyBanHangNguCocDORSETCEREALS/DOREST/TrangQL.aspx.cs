using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class TrangQL : System.Web.UI.Page
    {
        static string user = "KHÔNG TÊN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) // có tên đăng nhập
            {
                user = Session["name"] as string;
            }
            lblhello.Text = "CHÀO MỪNG " + user;
        }


        protected void btnQLSP_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_SP.aspx");
        }

        protected void BTNQLLOAISP_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_LOAISP.aspx");
        }

        protected void btnQLNV_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_NV.aspx");
        }

        protected void btnQLCN_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_CH.aspx");
        }

        protected void btnQLTONKHO_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_KHO.aspx");
        }

        protected void btnQLNCC_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_NCC.aspx");
        }

        protected void btnQLKH_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_KH.aspx");
        }

        protected void btnXemTTDH_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_KH.aspx");
        }

        protected void btnChuyenKV_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_ChuyenKV.aspx");
        }

        protected void btnChuyenLSP_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\QL_ChuyenLSP.aspx");
        }

        protected void btnBaoCaoDT_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Trangtrangchu.aspx");
        }
    }
}