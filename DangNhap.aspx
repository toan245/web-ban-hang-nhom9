<%@ Page Title="" Language="C#" MasterPageFile="~/BaiTapLon.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MenuRight">
    <div id="Div1" runat="server" style="text-align:center;">
            <h2>Trang Dang Nhap</h2>
        <center><table>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td>
            </tr>
            
              <tr>
                <td>Mat Khau:</td>
                <td>
                    <asp:TextBox ID="TxtMK" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                <td></td>
                <td><asp:Button ID="Button1" runat="server" Text="Dang Nhap" OnClick="Button1_Click" /></td>
            </tr>
        </table></center>
</div>
</div>
</asp:Content>

