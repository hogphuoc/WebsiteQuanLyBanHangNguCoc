<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_ChuyenLSP.aspx.cs" Inherits="DOREST.QL_ChuyenLSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        height: 53px;
    }
    .auto-style11 {
        height: 77px;
    }
    .auto-style12 {
        height: 26px;
    }
    .auto-style13 {
        width: 527px;
    }
    .auto-style14 {
        width: 527px;
        height: 44px;
    }
    .auto-style17 {
        width: 117px;
    }
    .auto-style18 {
        height: 44px;
        width: 117px;
    }
    .auto-style19 {
        height: 44px;
    }
        .auto-style20 {
            width: 100%;
        }
        .auto-style21 {
            width: 1257px;
            height: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
&nbsp;<table class="auto-style20">
            <tr>
                <td>
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="17pt" Font-Italic="True" ForeColor="#5577B8"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    <table class="auto-style21">
        <tr>
            <td class="auto-style13">&nbsp;&nbsp; &nbsp;<asp:Label ID="lblChonLSP1" runat="server" Text="Chọn loại sản phẩm nguồn:" Font-Bold="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP" Width="148px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td>
                <asp:Label ID="lblChonLSP2" runat="server" Text="Chọn loại sản phẩm đích:" Font-Bold="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP" Width="148px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle2" runat="server" Text="Danh sách loại sản phẩm thuộc khu vực nguồn" Font-Bold="True" Font-Italic="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
                <br />
            </td>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                <br />
                <asp:Label ID="lblTitle3" runat="server" Text="Danh sách loại sản phẩm thuộc khu vực đích" Font-Bold="True" Font-Italic="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <br />
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSourceLSPN" DataTextField="TenSP" DataValueField="MaSP" Height="159px" Width="432px" Font-Size="14pt" AutoPostBack="True"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSourceLSPN" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE MaLoaiSP=@MaLoaiSP" UpdateCommand="UPDATE SANPHAM SET MaLoaiSP=@MaLoaiSP WHERE MaSP=@MaSP">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="MaLoaiSP" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ListBox1" Name="MaSP" PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td class="auto-style17">
                <asp:Button ID="btnChuyen1" runat="server" Text="&gt;" BackColor="#E4E4E4" Font-Bold="True" Font-Size="X-Large" ForeColor="#5577B8" OnClick="btnChuyen1_Click" Height="41px" Width="40px" />
                <br />
                <br />
                <br />
                <asp:Button ID="btnChuyen2" runat="server" Text="&lt;" BackColor="#E4E4E4" Font-Bold="True" Font-Size="X-Large" ForeColor="#5577B8" OnClick="btnChuyen2_Click" Height="41px" Width="40px" />
                <br />
                <br />
                <br />
                <asp:Button ID="btnChuyen3" runat="server" Text="&gt;&gt;" BackColor="#E4E4E4" Font-Bold="True" Font-Size="X-Large" ForeColor="#5577B8" OnClick="btnChuyen3_Click" Height="41px" Width="40px" />
                <br />
                <br />
                <br />
                <asp:Button ID="btnChuyen4" runat="server" Text="&lt;&lt;" BackColor="#E4E4E4" Font-Bold="True" Font-Size="X-Large" ForeColor="#5577B8" OnClick="btnChuyen4_Click" Height="41px" Width="40px" />
            </td>
            <td>
                <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSourceLSPD" DataTextField="TenSP" DataValueField="MaSP" Height="160px" Width="408px" Font-Size="14pt" AutoPostBack="True"></asp:ListBox>
                <br />
                <asp:SqlDataSource ID="SqlDataSourceLSPD" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE MaLoaiSP=@MaLoaiSP" UpdateCommand="UPDATE SANPHAM SET MaLoaiSP=@MaLoaiSP WHERE MaSP=@MaSP">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="MaLoaiSP" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="MaLoaiSP" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ListBox2" Name="MaSP" PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table class="auto-style9">
        <tr>
            <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#9EC224" Height="36px" OnClick="Button1_Click" Text="Quay về trang quản lý" Width="192px" />
                <br />
            </td>
        </tr>
    </table>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
