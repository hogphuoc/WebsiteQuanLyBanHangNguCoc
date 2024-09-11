<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_NCC.aspx.cs" Inherits="DOREST.QL_NCC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style14 {
            width: 791px;
            height: 149px;
        }
        .auto-style15 {
            width: 1445px;
        }
        .auto-style16 {
            height: 52px;
            width: 1445px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#9EC224" OnDataBinding="Page_Load" Font-Italic="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblKV" runat="server" Font-Bold="True" Text="Chọn khu vực:" Font-Size="15pt"></asp:Label>
                    <asp:DropDownList ID="DropDownListKV" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSourceKhuVuc" DataTextField="TenKV" DataValueField="MaKV" OnSelectedIndexChanged="DropDownListKV_SelectedIndexChanged" Width="309px" Font-Size="15pt">
                    <asp:ListItem Value="*">Tất cả</asp:ListItem>
                </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMaKV" runat="server" Font-Bold="True" Text="Mã khu vực: " Font-Size="15pt"></asp:Label>
                <asp:Label ID="lblmkv" runat="server" Font-Bold="True" ForeColor="#9BBF2E" Font-Size="15pt"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblloaisp" runat="server" Font-Bold="True" Text="Chọn loại sản phẩm:" Font-Size="15pt"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownListLoaiSP" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSourceLoaiSP" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP" OnSelectedIndexChanged="DropDownListKV_SelectedIndexChanged" Width="246px" Font-Size="15pt">
                    <asp:ListItem Value="*">Tất cả</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMaLoaiSP" runat="server" Font-Bold="True" Text="Mã loại sản phẩm: " Font-Size="15pt"></asp:Label>
                <asp:Label ID="lblmlsp" runat="server" Font-Bold="True" ForeColor="#9BBF2E" Font-Size="15pt"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSourceLoaiSP" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSourceKhuVuc" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [KHUVUC]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" Enabled="False" OnClick="btnThem_Click" Text="Thêm nhà cung cấp" Width="256px" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ" Visible="False" Font-Bold="True" ForeColor="#9EC224" Font-Size="15pt" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsncc" runat="server" Text="Mã nhà cung cấp:" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txtmsncc" runat="server" Visible="False" Width="107px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbltenNCC" runat="server" Text="Tên nhà cung cấp:" Visible="False" Font-Size="15pt"></asp:Label>
                <asp:TextBox ID="txttenNCC" runat="server" Visible="False" Width="132px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDiaChi" runat="server" Text="Địa chỉ:" Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:TextBox ID="txtDiaChi" runat="server" Visible="False" Width="245px" Font-Size="15pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMaSP" runat="server" Text="Mã sản phẩm: " Visible="False" Font-Size="15pt"></asp:Label>
                    <asp:DropDownList ID="DropDownListMaSP" runat="server" DataSourceID="SqlDataSource2" DataTextField="MaSP" DataValueField="MaSP" Visible="False" Font-Size="15pt">
                </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
                    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaNCC" DataSourceID="SqlDataSource1" Width="1251px" Font-Size="15pt">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaNCC" HeaderText="Mã nhà cung cấp" ReadOnly="True" SortExpression="MaNCC" />
                            <asp:BoundField DataField="TenNCC" HeaderText="Tên nhà cung cấp" SortExpression="TenNCC" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" SortExpression="MaSP" />
                            <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" SortExpression="MaLoaiSP" Visible="False" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                            <asp:BoundField DataField="MaKV" HeaderText="Mã khu vực" SortExpression="MaKV" Visible="False" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM NHACUNGCAP WHERE (MaNCC = @MaNCC)" SelectCommand="SELECT MaNCC, TenNCC, MaSP, DiaChi, MaKV FROM [NHACUNGCAP] WHERE ([MaKV] = @MaKV) AND ([MaLoaiSP] = @MaLoaiSP)" UpdateCommand="UPDATE NHACUNGCAP SET TenNCC = @TenNCC, DiaChi = @DiaChi, MaSP = @MaSP WHERE (MaNCC = @MaNCC)
" InsertCommand="INSERT INTO NHACUNGCAP (MaNCC, TenNCC, MaLoaiSP, MaSP, MaKV, DiaChi) VALUES (@MaNCC, @TenNCC, @MaLoaiSP, @MaSP, @MaKV, @DiaChi)
">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaNCC" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtmsncc" Name="MaNCC" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txttenNCC" Name="TenNCC" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownListLoaiSP" Name="MaLoaiSP" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownListMaSP" Name="MaSP" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="txtDiaChi" Name="DiaChi" PropertyName="Text" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListKV" Name="MaKV" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownListLoaiSP" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="TenNCC" PropertyName="SelectedValue[2]" />
                            <asp:ControlParameter ControlID="GridView1" Name="DiaChi" PropertyName="SelectedValue[4]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaSP" PropertyName="SelectedValue[3]" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaNCC" PropertyName="SelectedValue" />
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
