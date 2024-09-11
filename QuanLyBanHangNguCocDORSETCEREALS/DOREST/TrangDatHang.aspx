<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS_SP.Master" AutoEventWireup="true" CodeBehind="TrangDatHang.aspx.cs" Inherits="DOREST.TrangDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            height: 34px;
        }
        .auto-style27 {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style26" style="color: #95B722; font-weight: bold; font-size: 30px;">CHÀO MỪNG KHÁCH HÀNG ĐẾN VỚI TRANG ĐẶT HÀNG TẠI DORSET</td>
        </tr>
        <tr>
            <td>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td style="font-size: 24px; color: #364753; font-weight: bold">THÔNG TIN KHÁCH HÀNG</td>
                    </tr>
                </table>
                <br />
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="14pt" Text="Tìm kiếm khách hàng (tên hoặc số điện thoại):"></asp:Label>
                <asp:TextBox ID="txttimkiem" runat="server" Height="28px" Width="241px" OnTextChanged="txttimkiem_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btntimkiem" runat="server" OnClick="btntimkiem_Click" Text="Tìm kiếm" BackColor="#E4E4E4" Font-Bold="True" ForeColor="#94B622" Font-Size="14pt" Height="37px" />
&nbsp;&nbsp;
                <asp:Button ID="btnhuy" runat="server" Text="Hủy" OnClick="btnhuy_Click" BackColor="#E4E4E4" Font-Bold="True" ForeColor="#93B421" Font-Size="14pt" Height="37px" Width="79px" />
                <br />
                <br />
                <asp:GridView ID="GridViewdskh" runat="server" AutoGenerateColumns="False" Height="214px" Width="1210px" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridViewdskh_SelectedIndexChanged" Font-Size="14pt">
                    <Columns>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" ReadOnly="True" SortExpression="MaKH" />
                        <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
                        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                        <asp:BoundField DataField="SDTKH" HeaderText="Số điện thoại" SortExpression="SDTKH" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT MaKH, TenKH, DiaChi, SDTKH FROM KHACHHANG WHERE (MaKH= @MaKH) OR (SDTKH = @SDTKH)
" InsertCommand="INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi,  SDTKH)
VALUES (@MaKH, @TenKH, @DiaChi, @SDTKH) 
">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtmkh" Name="MaKH" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txthoten" Name="TenKH" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtdiachi" Name="DiaChi" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtsdt" Name="SDTKH" PropertyName="Text" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txttimkiem" Name="MaKH" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txttimkiem" Name="SDTKH" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td style="color: #364753; font-size: 26px; font-weight: bold">
                <br />
                <asp:Label ID="lblnew" runat="server" Text="ĐĂNG KÍ THÔNG TIN KHÁCH HÀNG MỚI" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;<asp:Label ID="lblmkh" runat="server" Text="Mã khách hàng:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtmkh" runat="server" Width="70px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;<br />
                <br />
&nbsp;<asp:Label ID="lblhotenkh" runat="server" Text="Họ tên khách hàng:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;
                <asp:TextBox ID="txthoten" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblsdt" runat="server" Text="Số điện thoại:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;<asp:TextBox ID="txtsdt" runat="server" Width="160px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ: " Visible="False" Font-Size="14pt"></asp:Label>
                <asp:TextBox ID="txtdiachi" runat="server" Width="221px" Visible="False"></asp:TextBox>
                <br />
                <br />
                &nbsp;<br />
                <table class="auto-style1">
                    <tr>
                        <td style="font-size: 25px; font-weight: bold; color: #364753">
                            <asp:Label ID="lblttdondathang" runat="server" Text="THÔNG TIN ĐƠN ĐẶT HÀNG" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblmdh" runat="server" Text="Mã Đơn:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;<asp:Label ID="lblddh" runat="server" Visible="False" Font-Size="14pt"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblngaylap" runat="server" Text="Ngày lập:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;<asp:Label ID="lblngaynhan" runat="server" Visible="False" Font-Size="14pt"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbldcgh" runat="server" Text="Địa chỉ giao hàng:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;<asp:TextBox ID="txtdiachigh" runat="server" Visible="False" Height="23px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblghichu" runat="server" Text="Ghi chú:" Visible="False" Font-Size="14pt"></asp:Label>
&nbsp;
                            <asp:TextBox ID="txtghichu" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnxacnhan" runat="server" Text="Xác nhận thông tin đơn hàng" OnClick="btnxacnhan_Click" Visible="False" Height="36px" Width="345px" BackColor="#E4E4E4" Font-Bold="True" ForeColor="#9EC224" Font-Size="14pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnhuydon" runat="server" Text="Hủy đơn hàng" OnClick="btnhuydon_Click" Visible="False" Height="35px" BackColor="#E4E4E4" Font-Bold="True" ForeColor="#9EC224" Width="186px" Font-Size="14pt" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" InsertCommand="INSERT INTO [DONDATHANG] (MaDDH, MaKH, Ngaylap,  DiaChiGH, Ghichu) VALUES (@MaDDH, @MaKH, @Ngaylap, @DiaChiGH, @Ghichu)">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="lblddh" Name="MaDDH" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txttimkiem" Name="MaKH" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="lblngaynhan" DbType="Date" Name="NgayLap" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdiachigh" Name="DiaChiGH" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtghichu" Name="Ghichu" PropertyName="Text" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td style="font-size: 25px; font-weight: bold; color: #364753">
                            <asp:Label ID="lblthongtinctddh" runat="server" Text="THÔNG TIN CHI TIẾT ĐƠN ĐẶT HÀNG" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewCTDDH" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="482px" Font-Size="14pt">
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
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lbltong" runat="server" Font-Size="15pt" ForeColor="#9EC224" Visible="False"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" InsertCommand="INSERT INTO CTDDH (MaDDH, MaSP, Soluong) VALUES (@MaDDH, @MaSP, @Soluong)"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
