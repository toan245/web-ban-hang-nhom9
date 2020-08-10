<%@ Page Title="" Language="C#" MasterPageFile="~/BaiTapLon.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MenuRight">
    <div>
                <h2 style="text-align:center;">Trang Đăng Ký</h2>
        <center><table>
            <tr>
                <td>Ten Khach hang:</td>
                <td>
                    <asp:TextBox ID="TxtTen" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtTen">Ten Khach Hang Khong Duoc De trong</asp:RequiredFieldValidator>
                </td>            
            </tr>
             <tr>
                <td>Dia chi:</td>
                <td>
                    <asp:TextBox ID="TxtDC" runat="server" style="margin-left: 0px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtDC">Dia Chi Khong Duoc de trong</asp:RequiredFieldValidator>
                </td>            
            </tr>
             <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server" style="margin-left: 0px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="TxtEmail"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>            
            </tr>
            <tr><td>Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="TxtSoDT" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Mat Khau:</td>
                <td>
                    
                    <asp:TextBox ID="TxtMK" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TxtMK"></asp:RequiredFieldValidator>
                </td>            
            </tr>
             <tr>
                <td>Nhap Lai Mat Khau:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="TextBox5"></asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="TextBox5" ControlToCompare="TxtMK" Text="Nhap lai mat khau khong dung"></asp:CompareValidator><br />
                </td>            
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
             <tr>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Chuyen Qua Trang Dang Nhap" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Dang Ky" OnClick="Button1_Click"/></td>            
            </tr>
        </table></center>
    </div>
</div>
</asp:Content>

