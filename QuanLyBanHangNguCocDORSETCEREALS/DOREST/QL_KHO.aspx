<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_KHO.aspx.cs" Inherits="DOREST.QL_KHO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style14 {
            width: 1255px;
            height: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style14">
            <tr>
                <td>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" ForeColor="#9EC224" Font-Italic="True" Font-Size="15pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
&nbsp;&nbsp; <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Nhập kho sản phẩm mới" Width="234px" Font-Bold="True" ForeColor="#9EC224" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Huỷ" Visible="False" Font-Bold="True" ForeColor="#9EC224" />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;
                <asp:Label ID="lblMaCH" runat="server" Text="Mã cửa hàng:" Visible="False"></asp:Label>
                    <asp:TextBox ID="txtMaCH" runat="server" Visible="False" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMaSP" runat="server" Text="Mã sản phẩm:" Visible="False"></asp:Label>
                <asp:TextBox ID="txtMaSP" runat="server" Visible="False" Width="175px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSL" runat="server" Text="Số lượng tồn:" Visible="False"></asp:Label>
                <asp:TextBox ID="txtSL" runat="server" Visible="False" Width="114px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style9">
            <tr>
                <td class="auto-style10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaCH,MaSP" DataSourceID="SqlDataSource1" Width="884px">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="MaCH" HeaderText="Mã cửa hàng" ReadOnly="True" SortExpression="MaCH" />
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                            <asp:BoundField DataField="SLTon" HeaderText="Số lượng tồn" SortExpression="SLTon" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
                            <asp:CommandField DeleteText="Xuất hàng khỏi kho" ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" DeleteCommand="DELETE FROM HANGTONKHO WHERE (MaCH = @MaCH) AND (MaSP = @MaSP)" InsertCommand="INSERT INTO HANGTONKHO (MaCH, MaSP, SLTon) VALUES (@MaCH, @MaSP, @SLTon)" SelectCommand="SELECT * FROM [HANGTONKHO]" UpdateCommand="UPDATE HANGTONKHO SET SLTon = @SLTon WHERE MaCH=@MaCH AND MaSP=@MaSP">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaCH" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaSP" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="MaCH" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView1" Name="MaSP" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="GridView1" Name="SLTon" PropertyName="SelectedValue[3]" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
