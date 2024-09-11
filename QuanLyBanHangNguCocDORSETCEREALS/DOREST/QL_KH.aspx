<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_KH.aspx.cs" Inherits="DOREST.QL_KH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style9">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Italic="True" Font-Size="15pt"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Width="1250px" Caption="THÔNG TIN KHÁCH HÀNG ĐÃ MUA HÀNG TẠI CỬA HÀNG DORSET CEREALS" Font-Size="14pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" ReadOnly="True" SortExpression="MaKH" />
                            <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
                            <asp:BoundField DataField="NgaySinhKH" HeaderText="Ngày sinh" SortExpression="NgaySinhKH" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                            <asp:BoundField DataField="SDTKH" HeaderText="Số điện thoại" SortExpression="SDTKH" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa thông tin" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT MAKH, TenKH, NgaySinhKH, DiaChi, SDTKH FROM [KHACHHANG]" DeleteCommand="DELETE FROM KHACHHANG WHERE (MaKH = @MaKH)" UpdateCommand="UPDATE KHACHHANG SET TenKH = @TenKH, NgaySinhKH = @NgaySinhKH, DiaChi = @DiaChi, SDTKH = @SDTKH WHERE (MaKH = @MaKH)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKH" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="TenNV" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView1" Name="NgaySinhKH" PropertyName="SelectedValue[3]" DbType="Date" />
                            <asp:ControlParameter ControlID="GridView1" Name="DiaChi" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView1" Name="SDTKH" PropertyName="SelectedValue[5]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaKH" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="THÔNG TIN ĐƠN HÀNG CỦA KHÁCH HÀNG ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH" DataSourceID="SqlDataSource2" Width="1252px" Font-Size="14pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn đặt hàng" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaNV" HeaderText="MaNV" SortExpression="MaNV" Visible="False" />
                            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" Visible="False" />
                            <asp:BoundField DataField="Ngaylap" HeaderText="Ngày lập phiếu" SortExpression="Ngaylap" />
                            <asp:BoundField DataField="DiachiGH" HeaderText="Địa chỉ giao hàng" SortExpression="DiachiGH" />
                            <asp:BoundField DataField="Ghichu" HeaderText="Ghi chú" SortExpression="Ghichu" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa thông tin" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT MaDDH, Ngaylap, DiachiGH, Ghichu FROM [DONDATHANG] WHERE MaKH=@MaKH" UpdateCommand="UPDATE KHACHHANG SET DiaChiGH= @DiaChiGH, Ghichu = @Ghichu  WHERE (MaDDH = @MaDDH)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKH" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="DiaChiGH" PropertyName="SelectedValue[3]" />
                            <asp:ControlParameter ControlID="GridView2" Name="Ghichu" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaDDH" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="THÔNG TIN CHI TIẾT ĐƠN ĐẶT HÀNG" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH" DataSourceID="SqlDataSource3" Width="1252px" Font-Size="14pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn đặt hàng" ReadOnly="True" SortExpression="MaDDH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" SortExpression="MaSP" />
                            <asp:BoundField DataField="Soluong" HeaderText="Số lượng" SortExpression="Soluong" />
                            <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng đơn hàng" SortExpression="TinhTrang" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM CTDDH WHERE (MaDDH = @MaDDH) AND (MaSP = @MaSP)" SelectCommand="SELECT * FROM [CTDDH] WHERE MaDDH=@MaDDH">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView3" Name="MaDDH" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView3" Name="MaSP" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaDDH" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
