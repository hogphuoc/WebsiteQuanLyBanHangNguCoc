<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_SP.aspx.cs" Inherits="DOREST.QUANLY.QL_SP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 560px;
        }
        .auto-style10 {
            width: 1183px;
        }
        .auto-style11 {
            width: 1004px;
        }
        .auto-style13 {
            width: 566px;
        }
        .auto-style14 {
            width: 560px;
            height: 26px;
        }
        .auto-style16 {
        width: 1090px;
        margin-left: 0px;
    }
    .auto-style17 {
        width: 114%;
        height: 158px;
    }
    .auto-style18 {
        width: 1353px;
        height: 149px;
    }
    .auto-style19 {
        width: 1353px;
        height: 26px;
    }
    .auto-style20 {
        width: 81%;
        height: 915px;
    }
    .auto-style21 {
        width: 1057px;
        height: 8px;
    }
        .auto-style22 {
            width: 1057px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style16">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltitle" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" ForeColor="#9CBF23"></asp:Label>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblloaisp" runat="server" Text="Chọn loại sản phẩm" Font-Bold="True" Font-Size="15pt"></asp:Label>
                    :
                    <asp:DropDownList ID="DropDownListLoaiSP" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownListLoaiSP_SelectedIndexChanged" Font-Size="15pt">
                    <asp:ListItem Value="*">Tất cả</asp:ListItem>
                </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblml" runat="server" Text="Mã loại: " Font-Bold="True" Font-Size="15pt"></asp:Label>
                    <asp:Label ID="lblmaloai" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt"></asp:Label>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBoxHienthihinh" runat="server" AutoPostBack="True" EnableTheming="True" OnCheckedChanged="CheckBoxHinh_CheckedChanged" Text="Hiển thị hình ảnh" BorderStyle="Outset" Height="28px" Width="217px" Font-Size="15pt" />
                    <br />
&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
        <table class="auto-style20">
            <tr>
                <td class="auto-style21">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" Text="Thêm sản phẩm" OnClick="btnThem_Click" Height="41px" Width="193px" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" Font-Bold="True" ForeColor="#9DC124" Text="Huỷ" Visible="False" Width="59px" OnClick="btHuy_Click" Height="39px" Font-Size="15pt" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMaSP" runat="server" Font-Bold="True" Text="Mã sản phẩm:" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txtMaSP" runat="server" Visible="False" Width="112px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTenSP" runat="server" Font-Bold="True" Text="Tên sản phẩm: " Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txtTenSP" runat="server" Visible="False" Width="358px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp; &nbsp;
                <asp:Label ID="lblDVT" runat="server" Font-Bold="True" Text="Đơn vị tính: " Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txtDVT" runat="server" Visible="False" Width="129px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblHanSuDung" runat="server" Font-Bold="True" Text="Hạn sử dụng:" Visible="False" Font-Size="15pt"></asp:Label>
                    &nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtHanSuDung" runat="server" Visible="False" Width="120px" Font-Size="15pt"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDonGia" runat="server" Font-Bold="True" Text="Đơn giá:" Visible="False" Font-Size="15pt"></asp:Label>
&nbsp;<asp:TextBox ID="txtDonGia" runat="server" Width="109px" Visible="False" Font-Size="15pt"></asp:TextBox>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblNgaySX" runat="server" Font-Bold="True" Text="Ngày sản xuất" Visible="False" Font-Size="15pt"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMoTa" runat="server" Font-Bold="True" Text="Mô tả:" Visible="False" Font-Size="15pt"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtMoTa" runat="server" Visible="False" Width="526px" Font-Size="15pt"></asp:TextBox>
&nbsp;<asp:Calendar ID="CalendarNgaySX" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="15pt" ForeColor="Black" Height="215px" NextPrevFormat="FullMonth" OnSelectionChanged="CalendarNgaySX_SelectionChanged" Visible="False" Width="370px" BorderWidth="1px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                    <br />
                <asp:Label ID="lblChonHinh" runat="server" Font-Bold="True" Text="Chọn hình:" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:FileUpload ID="FileUploadHinh" runat="server" Visible="False" Width="340px" Font-Size="15pt" />
                    <br />
&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridViewSP" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" Width="1248px" Caption="DANH SÁCH CÁC SẢN PHẨM TẠI CỬA HÀNG DORSET" Font-Size="14pt" Font-Strikeout="False">
                    <Columns>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                        <asp:BoundField DataField="DVT" HeaderText="Đơn vị tính" SortExpression="DVT" />
                        <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" />
                        <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                        <asp:BoundField DataField="NgaySX" HeaderText="Ngày sản xuất" SortExpression="NgaySX" />
                        <asp:BoundField DataField="HanSD" HeaderText="Hạn sử dụng" SortExpression="HanSD" />
                        <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" SortExpression="MaLoaiSP" Visible="False" />
                        <asp:TemplateField HeaderText="Hình ảnh" SortExpression="Hinhanh" Visible="False">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinhanh") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="Hủy" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM SANPHAM WHERE (MaSP = @MaSP)" InsertCommand="INSERT INTO SanPham (MaSP, TenSP, DVT, DonGia, MoTa, NgaySX, HanSD, MaLoaiSP, Hinhanh) VALUES (@MaSP, @TenSP, @DVT, @DonGia, @MoTa, @NgaySX, @HanSD, @MaLoaiSP, @Hinhanh)" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaLoaiSP] = @MaLoaiSP)" UpdateCommand="UPDATE SANPHAM SET TenSP= @TenSP, DVT = @DVT, DonGia= @DonGia, MoTa= @Mota, NgaySX = @NgaySX, HanSD=@HanSD, Hinhanh= @Hinhanh WHERE (MaSP = @MaSP)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridViewSP" Name="MaSP" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListLoaiSP" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridViewSP" Name="TenSP" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="DVT" PropertyName="SelectedValue[3]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="DonGia" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="Mota" PropertyName="SelectedValue[5]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="NgaySX" PropertyName="SelectedValue[6]" DbType="Date" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="HanSD" PropertyName="SelectedValue[7]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="Hinhanh" PropertyName="SelectedValue[8]" />
                            <asp:ControlParameter ControlID="GridViewSP" Name="MaSP" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            </table>
    </p>
    <p>
        <table class="auto-style8">
            <tr>
                <td class="auto-style13">
                    <br />
                    <br />
                <asp:GridView ID="GridViewTonKho" runat="server" AutoGenerateColumns="False" Caption="TÌNH TRẠNG TỒN KHO VỚI SẢN PHẨM ĐANG CHỌN" CellPadding="3" DataKeyNames="MaCH,MaSP" DataSourceID="SqlDataSource3" Width="1252px" DataMember="DefaultView" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellSpacing="2" Height="232px" Font-Size="15pt">
                    <Columns>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                        <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                        <asp:BoundField DataField="SLTon" HeaderText="Số lượng tồn" SortExpression="SLTon" />
                        <asp:CommandField DeleteText="Thanh lý" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM HANGTONKHO WHERE (MaCH = @MaCH) AND (MaSP = @MaSP)" SelectCommand="SELECT * FROM [HANGTONKHO] WHERE ([MaSP] = @MaSP)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridViewTonKho" Name="MaCH" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridViewTonKho" Name="MaSP" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridViewSP" Name="MaSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridViewCTDDH" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="CHI TIẾT ĐƠN ĐẶT HÀNG VỚI SẢN PHẨM ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH,MaSP" DataSourceID="SqlDataSource1" Font-Size="15pt" Width="1240px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="Soluong" HeaderText="Số lượng" SortExpression="Soluong" />
                            <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng" SortExpression="TinhTrang" />
                            <asp:CommandField DeleteText="Hủy đơn" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM CTDDH WHERE (MaDDH = @MaDDH) AND (MaSP = @MaSP)" SelectCommand="SELECT * FROM [CTDDH] WHERE ([MaSP]=@MaSP)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridViewCTDDH" Name="MaDDH" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridViewCTDDH" Name="MaSP" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridViewSP" Name="MaSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

