<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS.Master" AutoEventWireup="true" CodeBehind="QL_ChuyenKV.aspx.cs" Inherits="DOREST.QL_ChuyenKV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 86px;
        }
        .auto-style10 {
            width: 1276px;
        }
        .auto-style12 {
            height: 297px;
            width: 1254px;
        }
        .auto-style14 {
            width: 18px;
        }
        .auto-style15 {
            width: 100%;
        }
    .auto-style17 {
        width: 18px;
        height: 141px;
    }
    .auto-style19 {
        width: 209px;
        height: 141px;
    }
    .auto-style20 {
        width: 209px;
    }
        .auto-style21 {
            width: 79px;
            height: 141px;
        }
        .auto-style22 {
            width: 79px;
        }
        .auto-style23 {
            width: 202px;
            height: 141px;
        }
        .auto-style24 {
            width: 202px;
        }
        .auto-style25 {
            width: 99px;
            height: 149px;
        }
        .auto-style26 {
            height: 158px;
            width: 1255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="auto-style15">
            <tr>
                <td>&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="17pt" Font-Italic="True" ForeColor="#5577B8"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style26">
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblChonKV" runat="server" Text="Chọn khu vực nguồn:" Font-Bold="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
                <br />
                <br />
&nbsp;<asp:DropDownList ID="DropDownListN" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceKVNguon" DataTextField="TenKV" DataValueField="MaKV" OnSelectedIndexChanged="DropDownListN_SelectedIndexChanged" Width="186px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceKVNguon" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [KHUVUC] "></asp:SqlDataSource>
                <br />
            </td>
            <td class="auto-style17">
                </td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style23">
                <asp:Label ID="lblChonKVDich" runat="server" Text="Chọn khu vực đích:" Font-Bold="True" Font-Size="13pt" ForeColor="#9EC224"></asp:Label>
&nbsp;<br />
                <br />
&nbsp;<asp:DropDownList ID="DropDownListD" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceKVDich" DataTextField="TenKV" DataValueField="MaKV" OnSelectedIndexChanged="DropDownListD_SelectedIndexChanged" Height="16px" Width="176px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceKVDich" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [KHUVUC] "></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#9EC224" Text="Danh sách nhân viên thuộc khu vực nguồn"></asp:Label>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Danh sách nhân viên thuộc khu vực đích" Font-Italic="True" ForeColor="#9EC224"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:ListBox ID="ListBoxN" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceNVN" DataTextField="TenNV" DataValueField="MaNV" Font-Size="Medium" Height="236px" Width="284px"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSourceNVN" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [NHANVIEN] WHERE MaKV=@MaKV" UpdateCommand="UPDATE NHANVIEN SET MaKV = @MaKV WHERE (MaNV = @MaNV)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListN" Name="MaKV" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="DropDownListD" Name="MaKV" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ListBoxN" Name="MaNV" PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style14">
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
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style24">
                <asp:ListBox ID="ListBoxD" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceNVD" DataTextField="TenNV" DataValueField="MaNV" Font-Size="Medium" Height="233px" Width="268px"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSourceNVD" runat="server" ConnectionString="<%$ ConnectionStrings:DORSETConnectionString %>" SelectCommand="SELECT * FROM [NHANVIEN] WHERE MaKV=@MaKV" UpdateCommand="UPDATE NHANVIEN SET MaKV = @MaKV WHERE (MaNV = @MaNV)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListD" Name="MaKV" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="DropDownListN" Name="MaKV" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ListBoxD" Name="MaNV" PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        <table class="auto-style15">
            <tr>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#9EC224" Height="36px" OnClick="Button1_Click" Text="Quay về trang quản lý" Width="192px" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
