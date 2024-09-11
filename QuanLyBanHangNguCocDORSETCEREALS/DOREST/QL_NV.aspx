<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_NV.aspx.cs" Inherits="DOREST.QL_NV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 232px;
        }
        .auto-style11 {
            height: 246px;
        }
        .auto-style14 {
            width: 1314px;
            height: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style14">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Italic="True" Font-Size="15pt"></asp:Label>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblKV" runat="server" Font-Bold="True" Text="Chọn khu vực làm việc:" Font-Size="15pt"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownListKV" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenKV" DataValueField="MaKV" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownListKV_SelectedIndexChanged" Font-Size="15pt">
                    <asp:ListItem Value="*">Tất cả</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMaKV" runat="server" Font-Bold="True" Text="Mã khu vực:" Font-Size="15pt"></asp:Label>
                &nbsp;<asp:Label ID="lblMKV" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt"></asp:Label>
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [KHUVUC]"></asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm nhân viên" Enabled="False" Font-Bold="True" ForeColor="#9EC224" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ " Visible="False" Font-Bold="True" ForeColor="#9EC224" />
                    <br />
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmnv" runat="server" Text="Mã nhân viên:" Visible="False" Font-Size="15pt"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtmnv" runat="server" Visible="False" Width="85px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbltennv" runat="server" Text="Họ và tên nhân viên:" Visible="False" Font-Size="15pt"></asp:Label>
                &nbsp;<asp:TextBox ID="txttennv" runat="server" Visible="False" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblsdt" runat="server" Text="Số điện thoại:" Visible="False" Font-Size="15pt"></asp:Label>
&nbsp; <asp:TextBox ID="txtsdt" runat="server" Visible="False" Font-Size="15pt"></asp:TextBox>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblNgayVaoLam" runat="server" Text="Ngày vào làm" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:Calendar ID="CalendarNgayVL" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="201px" NextPrevFormat="FullMonth" OnSelectionChanged="CalendarNgayVL_SelectionChanged" Visible="False" Width="354px" BorderWidth="1px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaNV" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1252px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField CancelText="" SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" SortExpression="MaNV" />
                            <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                            <asp:BoundField DataField="SoDTNV" HeaderText="Số điện thoại" SortExpression="SoDTNV" />
                            <asp:BoundField DataField="MaKV" HeaderText="MaKV" SortExpression="MaKV" Visible="False" />
                            <asp:BoundField DataField="NgayVaoLam" HeaderText="Ngày vào làm" SortExpression="NgayVaoLam" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
                            <asp:CommandField DeleteText="Nghỉ việc" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM NHANVIEN WHERE (MaNV = @MaNV)" InsertCommand="INSERT INTO NhanVien (MaNV, TenNV, SoDTNV, MaKV, NgayVaoLam) VALUES (@MaNV, @TenNV, @SoDTNV, @MaKV, @NgayVaoLam)" SelectCommand="SELECT MaNV, TenNV, SoDTNV, MaKV, NgayVaoLam FROM NHANVIEN WHERE (MaKV = @MaKV)" UpdateCommand="UPDATE NHANVIEN SET TenNV = @TenNV, SoDTNV = @SoDTNV , NgayVaoLam = @NgayVaoLam  WHERE (MaNV = @MaNV)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaNV" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListKV" Name="MaKV" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="TenNV" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView1" Name="SoDTNV" PropertyName="SelectedValue[3]" />
                            <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="NgayVaoLam" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaNV" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="THÔNG TIN ĐƠN ĐẶT HÀNG MÀ NHÂN VIÊN ĐANG CHỌN PHỤ TRÁCH" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH" DataSourceID="SqlDataSource3" Width="1252px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" SortExpression="MaNV" />
                            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" SortExpression="MaKH" />
                            <asp:BoundField DataField="Ngaylap" HeaderText="Ngày lập đơn" SortExpression="Ngaylap" />
                            <asp:BoundField DataField="DiachiGH" HeaderText="Địa chỉ giao hàng" SortExpression="DiachiGH" />
                            <asp:BoundField DataField="Ghichu" HeaderText="Ghi chú" SortExpression="Ghichu" />
                            <asp:CommandField CancelText="Hủy" EditText="Bàn giao lại cho nhân viên khác" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [DONDATHANG] WHERE ([MaNV] = @MaNV)" UpdateCommand="UPDATE DONDATHANG SET MaNV=@MaNV WHERE (MaDDH=@MaDDH)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaNV" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaNV" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaDDH" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table class="auto-style9">
            <tr>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="THÔNG TIN CHI TIẾT ĐƠN ĐẶT HÀNG" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH" DataSourceID="SqlDataSource4" Width="1253px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" SortExpression="MaSP" />
                            <asp:BoundField DataField="Soluong" HeaderText="Số lượng sản phẩm" SortExpression="Soluong" />
                            <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng" SortExpression="TinhTrang" />
                            <asp:CommandField CancelText="Hủy" EditText="Cập nhật tình trạng đơn" ShowEditButton="True" UpdateText="Cập nhật" />
                            <asp:CommandField DeleteText="Hủy chi tiết đơn" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM CTDDH WHERE (MaDDH = @MaDDH) AND (MaSP = @MaSP)" SelectCommand="SELECT * FROM [CTDDH] WHERE ([MaDDH] = @MaDDH)" UpdateCommand="UPDATE CTDDH SET TinhTrang=@TinhTrang WHERE (MaDDH = @MaDDH)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView3" Name="MaDDH" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView3" Name="MaSP" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaDDH" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView3" Name="TinhTrang" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView3" Name="MaDDH" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
