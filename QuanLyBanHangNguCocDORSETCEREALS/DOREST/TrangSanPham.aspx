<%@ Page Title="" Language="C#" MasterPageFile="~/DORSETCEREALS_SP.Master" AutoEventWireup="true" CodeBehind="TrangSanPham.aspx.cs" Inherits="DOREST.TrangSanPham" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                                        <p class="auto-style32">
                                            <br />
                                            <asp:ImageButton ID="ibtnmuesli" runat="server" Height="392px" ImageUrl="~/Image_giaodien/muesli.png" PostBackUrl="~/TrangMuesli.aspx" Width="1224px" />
                                        </p>
    <p class="auto-style27">
                                            <asp:ImageButton ID="ibtngranola" runat="server" Height="416px" ImageUrl="~/Image_giaodien/granola.png" PostBackUrl="~/TrangGranola.aspx" Width="1226px" />
                                        </p>
                                            <asp:ImageButton ID="ibtncrunch" runat="server" Height="397px" ImageUrl="~/Image_giaodien/breakfast.png" PostBackUrl="~/TrangCrunchmuesli.aspx" Width="1223px" />
                                        <br />
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style27 {
        height: 420px;
        width: 1039px;
    }
    .auto-style31 {
        width: 1225px;
        height: 383px;
    }
        .auto-style32 {
            width: 1217px;
            height: 420px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <p>
    <img alt="" class="auto-style31" src="Image_giaodien/bgsp.png" /></p>
</asp:Content>



