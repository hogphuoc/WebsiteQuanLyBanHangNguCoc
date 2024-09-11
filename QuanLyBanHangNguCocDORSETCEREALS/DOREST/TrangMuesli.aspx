<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS_SP.Master" AutoEventWireup="true" CodeBehind="TrangMuesli.aspx.cs" Inherits="DOREST.Granola" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            margin-left: 164px;
            margin-right: 0px;
        }
        .auto-style26 {
            margin-left: 108px;
        }
        .auto-style27 {
            width: 1223px;
            height: 337px;
        }
        .auto-style28 {
            width: 100%;
            height: 76px;
        }
        .auto-style29 {
            width: 1228px;
        }
        .auto-style30 {
            margin-left: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style28">
    <tr>
        <td>
            <asp:Label ID="lbltong" runat="server" Font-Size="15pt" Font-Bold="True" ForeColor="#344652"></asp:Label>
            <br />
        </td>
    </tr>
</table>
<br />
<asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" RepeatColumns="3" CssClass="auto-style30" Width="1115px">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="404px" ImageUrl='<%# Eval("Hinhanh") %>' Width="338px" />
        <br />
        <br />
        &nbsp;<asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' Font-Bold="False" Font-Size="15pt" ForeColor="#9DC024" />
        &nbsp;<asp:Label ID="TenSPLabel" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#9EC224" Text='<%# Eval("TenSP") %>' />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' Font-Size="18pt" ForeColor="#364755" />
        VNĐ<br />
        <br />
        &nbsp; Số lượng:
        <asp:TextBox ID="txtsl" runat="server" Width="31px">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnthem" runat="server" BackColor="#364755" CommandName="themvaogio" Font-Bold="True" ForeColor="#9EC224" Height="37px" Text="Thêm vào giỏ" Width="130px" />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaLoaiSP] = @MaLoaiSP)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DataList1" DefaultValue="LOAI2" Name="MaLoaiSP" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <p class="auto-style29">
&nbsp;<img alt="" class="auto-style27" src="Image_giaodien/muesli.png" /></p>
</asp:Content>

