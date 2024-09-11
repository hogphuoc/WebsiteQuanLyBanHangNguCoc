<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_LOAISP.aspx.cs" Inherits="DOREST.QL_LOAISP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 441px;
        }
        .auto-style12 {
            width: 902px;
        }
        .auto-style14 {
            width: 1254px;
            height: 149px;
        }
        .auto-style15 {
            width: 704px;
            height: 149px;
        }
        .auto-style16 {
            width: 1255px;
            height: 149px;
        }
        .auto-style17 {
            width: 199px;
            height: 158px;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 974px;
            height: 39px;
        }
        .auto-style20 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style14">
            <tr>
                <td>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbltitle" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Italic="True" Font-Size="16pt"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style12">
                    <br />
                &nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm loại sản phẩm" Width="281px" Font-Bold="True" ForeColor="#9BBF2E" Font-Size="15pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;
                <asp:Label ID="lblmaloai" runat="server" Text="Mã loại:" Visible="False" Font-Size="15pt"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmaloai" runat="server" Visible="False" Width="95px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;<asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ" Visible="False" Font-Bold="True" ForeColor="#9BBF2E" Font-Size="15pt" />
                    &nbsp;</td>
                <td class="auto-style17">
                <asp:Label ID="lbltenloai" runat="server" Text="Tên loại:" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txttenloai" runat="server" Visible="False" Font-Size="15pt"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style16">
            <tr>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="LOẠI SẢN PHẨM CỦA DORSET CEREALS HIỆN CÓ" CellPadding="3" CellSpacing="2" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource1" Height="233px" Width="851px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại" ReadOnly="True" SortExpression="MaLoaiSP" />
                            <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên loại" SortExpression="TenLoaiSP" />
                            <asp:CommandField DeleteText="" EditText="Sửa" ShowEditButton="True" CancelText="Hủy" UpdateText="Cập nhật" />
                            <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
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
        </table>
        <table class="auto-style19">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM LOAISP WHERE (MaLoaiSP= @MaLoaiSP)" SelectCommand="SELECT * FROM [LOAISP]" InsertCommand="INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (@MaLoaiSP, @TenLoaiSP)
" UpdateCommand="UPDATE LOAISP SET TenLoaiSP = @TenLoaiSP WHERE (MaLoaiSP = @MaLoaiSP)
">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtmaloai" Name="MaLoaiSP" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txttenloai" Name="TenLoaiSP" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="TenLoaiSP" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style18">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="DANH SÁCH THÔNG TIN SẢN PHẨM CỦA LOẠI SẢN PHẨM ĐANG CHỌN" CellPadding="3" CellSpacing="2" CssClass="auto-style20" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" Font-Size="15pt" Width="1251px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                            <asp:BoundField DataField="DVT" HeaderText="Đơn vị tính" SortExpression="DVT" />
                            <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" />
                            <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                            <asp:BoundField DataField="NgaySX" HeaderText="Ngày sản xuất" SortExpression="NgaySX" />
                            <asp:BoundField DataField="HanSD" HeaderText="Hạn sử dụng" SortExpression="HanSD" />
                            <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại" SortExpression="MaLoaiSP" />
                            <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM SANPHAM WHERE (MaSP=@MaSP) " SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaLoaiSP]=@MaLoaiSP)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaSP" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaLoaiSP" PropertyName="SelectedValue[8]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table class="auto-style18">
            <tr>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="TÌNH TRẠNG TỒN KHO CỦA SẢN PHẨM ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaCH,MaSP" DataSourceID="SqlDataSource3" Font-Size="15pt" Width="846px">
                        <Columns>
                            <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="SLTon" HeaderText="Số lượng tồn" SortExpression="SLTon" />
                            <asp:CommandField DeleteText="Hết hàng" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE HANGTONKHO WHERE (MaSP=@MaSP) AND (MaCH=@MaCH)" SelectCommand="SELECT * FROM [HANGTONKHO] WHERE MaSP=@MaSP">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView3" Name="MaSP" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView3" Name="MaCH" PropertyName="SelectedValue[0]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style18">
            <tr>
                <td>
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="TÌNH TRẠNG CHI TIẾT ĐƠN ĐẶT HÀNG CỦA SẢN PHẨM ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH,MaSP" DataSourceID="SqlDataSource4" Font-Size="15pt" Width="856px">
                        <Columns>
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="Soluong" HeaderText="Số lượng" SortExpression="Soluong" />
                            <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng đơn hàng" SortExpression="TinhTrang" />
                            <asp:CommandField DeleteText="Hủy đơn hàng" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE CTDDH WHERE (MaDDH=@MaDDH) AND (MaSP=@MaSP)" SelectCommand="SELECT * FROM [CTDDH]  WHERE MaSP=@MaSP">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView4" Name="MaDDH" PropertyName="SelectedValue[0]" />
                            <asp:ControlParameter ControlID="GridView4" Name="MaSP" PropertyName="SelectedValue[1]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
