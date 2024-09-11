<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS_SP.Master" AutoEventWireup="true" CodeBehind="TrangCrunchmuesli.aspx.cs" Inherits="DOREST.TrangCrunchmuesli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        margin-left: 164px;
    }
        .auto-style26 {
            margin-left: 33px;
        }
        .auto-style27 {
            margin-left: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="lbltong" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#374956"></asp:Label>
        </td>
    </tr>
</table>
<br />
<asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" CssClass="auto-style27" Width="1056px">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="456px" ImageUrl='<%# Eval("Hinhanh") %>' Width="383px" />
        <br />
        <br />
        &nbsp;<asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' Font-Size="15pt" ForeColor="#9EC224" />
        &nbsp;
        <asp:Label ID="TenSPLabel" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#9EC224" Text='<%# Eval("TenSP") %>' />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' Font-Bold="False" Font-Size="18pt" ForeColor="#364753" />
        &nbsp;VNĐ<br />
        <br />
        &nbsp;&nbsp; Số lượng:
        <asp:TextBox ID="txtsl" runat="server" Width="35px">1</asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#364753" CommandName="themvaogio" Font-Bold="True" ForeColor="#9EC224" Height="34px" Text="Thêm vào giỏ" Width="128px" />
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaLoaiSP] = @MaLoaiSP)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DataList1" DefaultValue="LOAI3" Name="MaLoaiSP" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
