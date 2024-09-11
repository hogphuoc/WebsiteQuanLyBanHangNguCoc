<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS_SP.Master" AutoEventWireup="true" CodeBehind="TrangGranola.aspx.cs" Inherits="DOREST.TrangGranola" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style27 {
            width: 100%;
            height: 60px;
        }
        .auto-style28 {
            margin-left: 40px;
        }
    .auto-style29 {
        width: 100%;
        height: 381px;
    }
    .auto-style30 {
        width: 1227px;
    }
    .auto-style31 {
        width: 1224px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p class="auto-style31">
        <img alt="" class="auto-style29" src="Image_giaodien/granola.png" /></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style30">
        <table class="auto-style27">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltong" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#354450"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style28" DataKeyField="MaSP" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="462px" ImageUrl='<%# Eval("Hinhanh") %>' Width="383px" />
                <br />
                <br />
                &nbsp;<asp:Label ID="MaSPLabel" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="15pt" ForeColor="#9EC224" Text='<%# Eval("MaSP") %>' />
                &nbsp;
                <asp:Label ID="TenSPLabel" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="#9EC224" Text='<%# Eval("TenSP") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="DonGiaLabel" runat="server" Font-Bold="False" Font-Size="18pt" ForeColor="#364753" Text='<%# Eval("DonGia") %>' />
                &nbsp;VNĐ<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượng:
                <asp:TextBox ID="txtsl" runat="server" Width="36px">1</asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnthem" runat="server" BackColor="#364753" CommandName="themvaogio" Font-Bold="True" ForeColor="#9EC224" Height="32px" Text="Thêm vào giỏ" Width="155px" />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaLoaiSP] = @MaLoaiSP)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DataList1" DefaultValue="LOAI1" Name="MaLoaiSP" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
