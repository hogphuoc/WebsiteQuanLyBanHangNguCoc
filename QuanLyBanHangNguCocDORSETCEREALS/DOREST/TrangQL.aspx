<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="TrangQL.aspx.cs" Inherits="DOREST.TrangQL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        height: 25px;
    }
    .auto-style11 {
        width: 1215px;
    }
    .auto-style12 {
        height: 25px;
        width: 1215px;
    }
        .auto-style27 {
            width: 93px;
            height: 100px;
        }
        .auto-style28 {
        width: 75px;
    }
    .auto-style29 {
        width: 82px;
    }
    .auto-style30 {
        width: 84px;
    }
    .auto-style32 {
        width: 203px;
    }
    .auto-style33 {
        width: 219px;
    }
    .auto-style34 {
        width: 263px;
    }
        .auto-style35 {
            width: 101px;
            height: 121px;
        }
        .auto-style36 {
            width: 110px;
        }
        .auto-style39 {
            width: 91px;
            height: 109px;
        }
        .auto-style40 {
            width: 117px;
        }
        .auto-style43 {
            width: 136px;
        }
        .auto-style44 {
            width: 113px;
        }
        .auto-style45 {
            width: 215px;
        }
        .auto-style46 {
            width: 129px;
        }
        .auto-style47 {
            height: 100px;
        }
        .auto-style50 {
            width: 100%;
            height: 29px;
        }
        .auto-style51 {
            width: 105px;
            height: 101px;
        }
        .auto-style53 {
            width: 119px;
            height: 144px;
        }
        .auto-style54 {
            width: 139px;
        }
        .auto-style55 {
            width: 748px;
            height: 149px;
        }
        .auto-style56 {
            width: 750px;
            height: 149px;
        }
        .auto-style57 {
            width: 1256px;
            height: 149px;
        }
        .auto-style58 {
            width: 1705px;
            height: 8px;
        }
        .auto-style59 {
            height: 158px;
            width: 1705px;
        }
        .auto-style60 {
            width: 1255px;
            height: 149px;
        }
        .auto-style61 {
            width: 1254px;
            height: 149px;
        }
        .auto-style62 {
            width: 446px;
        }
        .auto-style63 {
            width: 448px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <table class="auto-style57">
        <tr>
            <td class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="lblhello" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#607894" Text="Chào mừng "></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="20pt" ForeColor="#9EC224" Text="ĐÂY LÀ TRANG QUẢN LÝ CỬA HÀNG DORSET CEREALS"></asp:Label>
                    <br />
                <br />
&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16pt" Font-Underline="True" ForeColor="#9EC224" Text="I. CHỨC NĂNG QUẢN LÝ BÊN BÁN"></asp:Label>
                    </td>
        </tr>
    </table>
    <table class="auto-style60">
        <tr>
            <td class="auto-style28">
                    <img alt="" class="auto-style27" src="Image_giaodien/QL_MonAn.png" /></td>
            <td class="auto-style34">
                    <asp:Button ID="btnQLSP" runat="server" Text="Quản lý sản phẩm" Width="219px" Font-Bold="True" ForeColor="#607894" OnClick="btnQLSP_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                    <br />
                    <asp:Button ID="btnChuyenLSP" runat="server" Text="Chuyển loại sản phẩm" Width="264px" Font-Bold="True" ForeColor="#607894" OnClick="btnChuyenLSP_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                <br />
                    <asp:Button ID="BTNQLLOAISP" runat="server" Text="Quản lý loại sản phẩm" Width="262px" Font-Bold="True" ForeColor="#6078A4" OnClick="BTNQLLOAISP_Click1" BackColor="#E4E4E4" Font-Size="14pt" />
                </td>
            <td class="auto-style29">
                    <img alt="" class="auto-style36" src="Image_giaodien/QL_NV.png" /></td>
            <td class="auto-style32">
                    <asp:Button ID="btnQLNV" runat="server" Text="Quản lý nhân viên" Width="227px" Font-Bold="True" ForeColor="#607894" OnClick="btnQLNV_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                    <br />
                    <asp:Button ID="btnChuyenKV" runat="server" Text="Chuyển khu vực " Width="225px" Font-Bold="True" ForeColor="#607894" OnClick="btnChuyenKV_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                <br />
                <br />
                    <asp:Button ID="btnQLNCC" runat="server" Text="Quản lý nhà cung cấp" Width="258px" Font-Bold="True" ForeColor="#607894" OnClick="btnQLNCC_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                </td>
            <td class="auto-style30">
                    <img alt="" class="auto-style35" src="Image_giaodien/QL_Ton.png" /></td>
            <td class="auto-style33">
                    <asp:Button ID="btnQLTONKHO" runat="server" Text="Quản lý tồn kho" Width="228px" Font-Bold="True" ForeColor="#6078A4" OnClick="btnQLTONKHO_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                <br />
                    <asp:Button ID="btnQLCN" runat="server" Text="Quản lý chi nhánh" Width="231px" Font-Bold="True" ForeColor="#6078B4" OnClick="btnQLCN_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                    <br />
                    <asp:Button ID="QLKV" runat="server" BackColor="#E4E4E4" Font-Bold="True" ForeColor="#587BBF" Text="Quản lý khu vực" Width="227px" Font-Size="14pt" />
                </td>
        </tr>
    </table>
</p>
    <table class="auto-style55">
        <tr>
            <td>&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16pt" Font-Underline="True" ForeColor="#9EC224" Text="I. CHỨC NĂNG QUẢN LÝ BÊN MUA"></asp:Label>
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style61">
        <tr>
            <td class="auto-style40">
                <img alt="" class="auto-style39" src="Image_giaodien/QL_KH.png" /></td>
            <td class="auto-style62">
                    <asp:Button ID="btnQLKH" runat="server" Text="Quản lý thông tin khách hàng" Width="360px" Font-Bold="True" ForeColor="#607894" OnClick="btnQLKH_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    </td>
            <td class="auto-style43">
                <img alt="" class="auto-style44" src="Image_giaodien/QL_DH.png" /></td>
            <td class="auto-style45">
                    <asp:Button ID="btnXemTTDH" runat="server" Text="Xem tình trạng đơn hàng" Width="344px" Font-Bold="True" ForeColor="#607894" OnClick="btnXemTTDH_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    </td>
            <td class="auto-style46">&nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style56">
        <tr>
            <td class="auto-style47">
                <br />
                <br />
&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="15pt" Font-Underline="True" ForeColor="#9EC224" Text="III. THỐNG KÊ VÀ BÁO CÁO"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        </table>
    <p>
        <table class="auto-style50">
            <tr>
                <td class="auto-style44">
                    <img alt="" class="auto-style51" src="Image_giaodien/QL_BaoCaoDT.png" /></td>
                <td class="auto-style63">
                    <asp:Button ID="btnBaoCaoDT" runat="server" Text="Báo cáo doanh thu" Width="257px" Font-Bold="True" ForeColor="#607894" OnClick="btnBaoCaoDT_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                    <br />
                    <asp:Button ID="btnThongKeDS" runat="server" Text="Thống kê doanh số" Width="257px" Font-Bold="True" ForeColor="#607894" OnClick="btnBaoCaoDT_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    </td>
                <td class="auto-style54">
                    <img alt="" class="auto-style53" src="Image_giaodien/QL_Luong.png" /></td>
                <td>
                    <asp:Button ID="btnThongKeDS0" runat="server" Text="Quản lý công nợ" Width="257px" Font-Bold="True" ForeColor="#607894" OnClick="btnBaoCaoDT_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    <br />
                    <br />
                    <asp:Button ID="btnThongKeDS1" runat="server" Text="Thống kê lương thưởng" Width="316px" Font-Bold="True" ForeColor="#607894" OnClick="btnBaoCaoDT_Click" BackColor="#E4E4E4" Font-Size="14pt" />
                    </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td>
                    <br />
&nbsp;<asp:Button ID="btnDangXuat" runat="server" Text="&lt; Đăng xuất &gt;" Width="175px" Font-Bold="True" ForeColor="#9BBF2E" OnClick="btnBaoCaoDT_Click" BackColor="#E4E4E4" Height="35px" Font-Size="15pt" />
                    </td>
            </tr>
        </table>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
