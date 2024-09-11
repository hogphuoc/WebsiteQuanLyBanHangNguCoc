<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="TrangGiohang.aspx.cs" Inherits="DOREST.TrangGiohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 260px;
        }
        .auto-style8 {
            height: 62px;
        }
        .auto-style9 {
            height: 68px;
        }
        .auto-style14 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style5">
        <tr>
            <td>
                <asp:Label ID="lbltitle" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#354451"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndathang" runat="server" OnClick="btndathang_Click" Text="Đặt hàng" Width="219px" Font-Bold="True" Font-Size="11pt" ForeColor="#9BBF2E" Height="39px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:GridView ID="GridViewGioHang" runat="server" AutoGenerateColumns="False" Height="247px" Width="1251px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Font-Size="14pt">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" ReadOnly="True" />
                        <asp:BoundField DataField="DonGia" HeaderText="Giá" ReadOnly="True" />
                        <asp:BoundField DataField="Soluong" HeaderText="Số lượng" />
                        <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" ReadOnly="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="lbltong" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#354652"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDMGH" runat="server" OnClick="btnDMGH_Click" Text="Đặt mua hàng trong giỏ" Font-Bold="True" ForeColor="#354652" Height="45px" Width="223px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnexit" runat="server" OnClick="btnexit_Click" Text="Về trang chủ" Font-Bold="True" ForeColor="#354652" Height="44px" Width="125px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy giỏ hàng" Font-Bold="True" ForeColor="#354652" Height="42px" Width="126px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
