<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_DDH.aspx.cs" Inherits="DOREST.QL_DDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style14">
        <tr>
            <td>
                <table class="auto-style14">
                    <tr>
                        <td>
                    <asp:Label ID="lbltitle" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" ForeColor="#9CBF23"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1248px" Caption="DANH SÁCH ĐƠN ĐẶT HÀNG " Font-Size="15pt">
                                <Columns>
                                    <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                                    <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                                    <asp:BoundField DataField="MaNV" HeaderText="Nhân viên phụ trách" SortExpression="MaNV" />
                                    <asp:BoundField DataField="MaKH" HeaderText="Khách hàng đặt mua" SortExpression="MaKH" />
                                    <asp:BoundField DataField="Ngaylap" HeaderText="Ngày lập đơn" SortExpression="Ngaylap" />
                                    <asp:BoundField DataField="DiachiGH" HeaderText="Địa chỉ giao hàng" SortExpression="DiachiGH" />
                                    <asp:BoundField DataField="Ghichu" HeaderText="Ghi chú" SortExpression="Ghichu" />
                                    <asp:CommandField CancelText="Hủy" EditText="Phân công nhân viên" ShowEditButton="True" UpdateText="Cập nhật" />
                                    <asp:CommandField DeleteText="Xóa đơn" ShowDeleteButton="True" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [DONDATHANG]" UpdateCommand="UPDATE DONDATHANG SET MaNV= @MaNV, Ngaylap = @Ngaylap  WHERE (MaDDH= @MaDDH)" DeleteCommand="DELETE DONDATHANG WHERE MaDDH=@MaDDH">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="MaDDH" PropertyName="SelectedValue" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="MaNV" PropertyName="SelectedValue[1]" />
                                    <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="Ngaylap" PropertyName="SelectedValue[3]" />
                                    <asp:ControlParameter ControlID="GridView1" Name="MaDDH" PropertyName="SelectedValue" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <table class="auto-style14">
                    <tr>
                        <td>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="CHI TIẾT ĐƠN ĐẶT HÀNG CỦA ĐƠN HÀNG ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaDDH,MaSP" DataSourceID="SqlDataSource2" Font-Size="15pt" Width="988px">
                                <Columns>
                                    <asp:BoundField DataField="MaDDH" HeaderText="Mã đơn" ReadOnly="True" SortExpression="MaDDH" />
                                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                                    <asp:BoundField DataField="Soluong" HeaderText="Số lượng" SortExpression="Soluong" />
                                    <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng đơn hàng" SortExpression="TinhTrang" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE CTDDH WHERE MaDDH=@MaDDH" SelectCommand="SELECT * FROM [CTDDH] WHERE MaDDH=@MaDDH">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="GridView2" Name="MaDDH" PropertyName="SelectedValue[0]" />
                                </DeleteParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="MaDDH" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
