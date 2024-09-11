<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_KV.aspx.cs" Inherits="DOREST.QL_KV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style9">
            <tr>
                <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#9EC224" Font-Size="15pt"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;
            <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm khu vực bán" Width="265px" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt" />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ" Visible="False" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt" Height="45px" />
                    <br />
                    <br />
&nbsp;&nbsp;
            <asp:Label ID="lblMaKV" runat="server" Text="Mã khu vực:" Visible="False" Font-Size="15pt"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtMaKV" runat="server" Visible="False" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTenKV" runat="server" Text="Tên khu vực:" Visible="False" Font-Size="15pt"></asp:Label>
&nbsp;<asp:TextBox ID="txtTenKV" runat="server" Visible="False" Font-Size="15pt"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="THÔNG TIN KHU VỰC PHÂN PHỐI TẠI CỬA HÀNG DORSET CEREALS " CellPadding="3" CellSpacing="2" DataKeyNames="MaKV" DataSourceID="SqlDataSource1" Width="824px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaKV" HeaderText="Mã khu vực" ReadOnly="True" SortExpression="MaKV" />
                            <asp:BoundField DataField="TenKV" HeaderText="Tên khu vực" SortExpression="TenKV" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM KHUVUC WHERE (MaKV = @MaKV)" InsertCommand="INSERT INTO KHUVUC (MaKV, TenKV) VALUES (@MaKV, @TenKV)" SelectCommand="SELECT * FROM [KHUVUC]" UpdateCommand="UPDATE KHUVUC SET TenKV = @TenKV WHERE (MaKV = @MaKV)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKV" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="TenKV" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaKV" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="DANH SÁCH NHÂN VIÊN TRONG KHU VỰC ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaNV" DataSourceID="SqlDataSource2" Font-Size="15pt" Width="1117px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" SortExpression="MaNV" />
                            <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                            <asp:BoundField DataField="SoDTNV" HeaderText="Số điện thoại" SortExpression="SoDTNV" />
                            <asp:BoundField DataField="MaKV" HeaderText="Mã khu vực" SortExpression="MaKV" />
                            <asp:BoundField DataField="NgayVaoLam" HeaderText="Ngày vào làm" SortExpression="NgayVaoLam" />
                            <asp:CommandField CancelText="Hủy" EditText="Chuyển khu vực làm việc" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM NHANVIEN WHERE (MaNV=@MaNV) " SelectCommand="SELECT * FROM [NHANVIEN] WHERE MaKV=@MaKV" UpdateCommand="UPDATE NHANVIEN SET MaKV=@MaKV WHERE MaNV=@MaNV">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaNV" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaKV" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKV" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaKV" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaNV" PropertyName="SelectedValue[1]" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="CỬA HÀNG NẰM TRONG KHU VỰC ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaCH" DataSourceID="SqlDataSource3" Font-Size="15pt" Width="1112px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                            <asp:BoundField DataField="MaKV" HeaderText="Mã khu vực" SortExpression="MaKV" />
                            <asp:BoundField DataField="TenCH" HeaderText="Tên cửa hàng" SortExpression="TenCH" />
                            <asp:BoundField DataField="DiaChiCH" HeaderText="Địa chỉ" SortExpression="DiaChiCH" />
                            <asp:BoundField DataField="SDTLienHe" HeaderText="SĐT" SortExpression="SDTLienHe" />
                            <asp:CommandField CancelText="Hủy" EditText="Chuyển khu vực" ShowEditButton="True" UpdateText="Cập nhật" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [CUAHANG] WHERE MaKV=@MaKV" UpdateCommand="UPDATE CUAHANG SET MaKV=@MaKV WHERE MaCH=@MaCH">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKV" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView3" Name="MaKV" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView3" Name="MaCH" PropertyName="SelectedValue[1]" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="CÁC NHÀ CUNG CẤP TRONG KHU VỰC ĐÃ CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaNCC" DataSourceID="SqlDataSource4" Font-Size="15pt" Width="1256px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaNCC" HeaderText="Mã nhà cung cấp" ReadOnly="True" SortExpression="MaNCC" />
                            <asp:BoundField DataField="TenNCC" HeaderText="Tên nhà cung cấp" SortExpression="TenNCC" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" SortExpression="MaSP" />
                            <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại sản phẩm" SortExpression="MaLoaiSP" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                            <asp:BoundField DataField="MaKV" HeaderText="Mã khu vực" SortExpression="MaKV" />
                            <asp:CommandField DeleteText="Chuyển khu vực" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM NHACUNGCAP WHERE (MaNCC = @MaNCC) " SelectCommand="SELECT * FROM [NHACUNGCAP] WHERE MaKV=@MaKV">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView4" Name="MaNCC" PropertyName="SelectedValue[1]" />
                            <asp:ControlParameter ControlID="GridView4" Name="MaKV" PropertyName="SelectedValue[6]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaKV" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
