<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_CH.aspx.cs" Inherits="DOREST.QL_CH" %>
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
                </td>
            </tr>
            <tr>
                <td>
                    <br />
&nbsp;&nbsp;
                <asp:Label ID="lblMaKV" runat="server" Font-Bold="True" Text="Chọn khu vực:" Font-Size="14pt"></asp:Label>
                    <asp:DropDownList ID="DropDownListKV" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenKV" DataValueField="MaKV" OnSelectedIndexChanged="DropDownListKV_SelectedIndexChanged" Font-Size="14pt" Width="357px">
                    <asp:ListItem Value="*">Tất cả</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmskv" runat="server" Font-Bold="True" Text="Mã khu vực:" Font-Size="14pt"></asp:Label>
                    <asp:Label ID="lblKhuvuc" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Size="14pt"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [KHUVUC]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm chi nhánh mới" Width="262px" Font-Bold="True" ForeColor="#9EC224" Font-Size="14pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ" Visible="False" Font-Bold="True" ForeColor="#9EC224" Font-Size="14pt" Height="39px" />
                    <br />
&nbsp;
                    <br />
&nbsp;&nbsp; <asp:Label ID="lblMaCH" runat="server" Text="Mã cửa hàng:" Visible="False" Font-Size="14pt"></asp:Label>
                    <asp:TextBox ID="txtMaCH" runat="server" Visible="False" Width="142px" Font-Size="14pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTenCH" runat="server" Text="Tên cửa hàng:" Visible="False" Font-Size="14pt"></asp:Label>
                    <asp:TextBox ID="txtTenCH" runat="server" Visible="False" Width="168px" Font-Size="14pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDC" runat="server" Text="Địa chỉ:" Visible="False" Font-Size="14pt"></asp:Label>
                    <asp:TextBox ID="txtDC" runat="server" Visible="False" Font-Size="14pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp;&nbsp;
                <asp:Label ID="lblSDT" runat="server" Text="Số điện thoại:" Visible="False" Font-Size="14pt"></asp:Label>
                    <asp:TextBox ID="txtSDT" runat="server" Visible="False" Font-Size="14pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaCH" DataSourceID="SqlDataSource2" Width="1252px" Caption="DANH SÁCH CÁC CHI NHÁNH CỬA HÀNG TẠI DORSET CEREALS " Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                            <asp:BoundField DataField="MaKV" HeaderText="MaKV" SortExpression="MaKV" Visible="False" />
                            <asp:BoundField DataField="TenCH" HeaderText="Tên cửa hàng" SortExpression="TenCH" />
                            <asp:BoundField DataField="DiaChiCH" HeaderText="Địa chỉ" SortExpression="DiaChiCH" />
                            <asp:BoundField DataField="SDTLienHe" HeaderText="Số điện thoại" SortExpression="SDTLienHe" />
                            <asp:CommandField EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" CancelText="Hủy" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM CUAHANG WHERE (MaCH = @MaCH)" SelectCommand="SELECT * FROM [CUAHANG] WHERE MaKV=@MaKV" UpdateCommand="UPDATE CUAHANG SET TenCH = @TenCH, DiaChiCH = @DiaChiCH, SDTLienHe = @SDTLienHe WHERE (MaCH = @MaCH)" InsertCommand="INSERT INTO CUAHANG (MaCH, MaKV, TenCH, DiaChiCH, SDTLienHe) VALUES (@MaCH, @MaKV, @TenCH, @DiaChiCH, @SDTLienHe)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaCH" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtMaCH" Name="MaCH" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownListKV" Name="MaKV" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="lblTenCH" Name="TenCH" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtDC" Name="DiaChiCH" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtSDT" Name="SDTLienhe" PropertyName="Text" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListKV" Name="MaKV" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="TenCH" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView1" Name="DiaChiCH" PropertyName="SelectedValue[3]" />
                            <asp:ControlParameter ControlID="GridView1" Name="SDTLienHe" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaCH" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="TÌNH HÌNH TỒN KHO CỦA CỬA HÀNG ĐANG CHỌN" CellPadding="3" CellSpacing="2" DataKeyNames="MaCH,MaSP" DataSourceID="SqlDataSource3" Width="722px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="SLTon" HeaderText="Số lượng tồn" SortExpression="SLTon" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM HANGTONKHO WHERE (MaCH = @MaCH) AND (MaSP = @MaSP)" SelectCommand="SELECT * FROM [HANGTONKHO] WHERE MaCH=@MaCH">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="MaCH" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView2" Name="MaSP" PropertyName="SelectedValue[2]" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaCH" PropertyName="SelectedValue" />
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
