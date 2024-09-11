using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOREST
{
    public partial class TRANGCHU : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            // NV chọn mục "đăng nhập" trên thanh menu
            if (e.Item.Value == "menulogin")
            {
                Login1.Visible = true; // Hiện công cụ đăng nhập
            }
            else
            {
                Login1.Visible = false; // Còn lại ẩn công cụ đăng nhập
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if ((Login1.UserName == "Admin" && Login1.Password == "admin123@") || (Login1.UserName == "Guest" && Login1.Password == "guest@vn"))
            {
                e.Authenticated = true;  // Đăng nhập thành công tự động chuyển đến trang TrangQl
                Session["name"] = Login1.UserName;
            }
            else
            {
                e.Authenticated = false;  
            }
        }
    }
}