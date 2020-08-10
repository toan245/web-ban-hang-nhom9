<%@ Page Title="" Language="C#" MasterPageFile="~/BaiTapLon.master" AutoEventWireup="true" CodeFile="DongHo3.aspx.cs" Inherits="DongHo3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MenuRight">
    <div class="menubar1">
        <asp:Menu ID="Menu1" runat="server" CssClass="aspMenu3" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False">
            <Items>
                <asp:MenuItem NavigateUrl="~/TrangChu.aspx" Text="Trang Chủ  /" Value="Trang Chủ/">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/DongHoNam.aspx" Text="Đồng Hồ Nam" Value="Đồng Hồ Nam"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div><br />
    <table class="content2">
        <tr>
            <td Height="400px" Width="400px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/DongHoCasio/3.jpg" Height="400px" Width="400px" />
            </td>
            <td Height="400px" class="auto-style1"><h2 style="color:gray;">CASIO</h2>
                <h3><asp:Label ID="lbTensp" runat="server" Text="Đồng Hồ Nam Casio Oceanus OCW-T3000-2A"></asp:Label></h3>
                <h3 style="color:gray;"><asp:Label ID="lbMasp" runat="server" Text="SKU:OCW-T3000-2A"></asp:Label></h3>
                <p>Giá cũ:<strike>1.119.000VNĐ</strike></p>
                <p>Giá mới:<strong style="font-size:40px;color:red;"><asp:Label ID="lbGia" runat="server" Text="41.119.000VNĐ"></asp:Label></strong></p>
                <asp:Button class="button" ID="Button1" runat="server" Text="Mua Ngay"/>
                <asp:Button class="button1" ID="Button2" runat="server" Text="Thêm Vào Giỏ" style="margin-left: 35px"  OnClientClick="javascript: return edit_confirm();" OnClick="Button2_Click"/>
                <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <script language="javascript">
            function edit_confirm() {
                var result = confirm("Đã thêm vào giỏ hàng!");
                if (result) {
                    return true;
                }
                return false;
            }
        </script>
    </table>
    <table class="content3">
        <tr>
            <th>Thông tin chung</th>
            <th></th>
            <th>Đặc tính</th>
            <th></th>
        </tr>
                <tr>
                    <td>Thương hiệu</td>
                    <td>Casio</td>
                    <td>Phong cách</td>
                    <td>Cổ Điển</td>
                </tr>
                <tr>
                    <td>Mã sản phẩm</td>
                    <td>MTP-V004G-7B2UDF</td>
                    <td>Bộ máy</td>
                    <td>Quartz</td>
                </tr>
                <tr>
                    <td>Xuất xứ thương hiệu</td>
                    <td>Nhật Bản</td>
                    <td>Loại mặt kính</td>
                    <td>Kính Khoáng Cứng</td>
                </tr>
                <tr>
                    <td>Xuất xứ bộ máy</td>
                    <td>Nhật Bản</td>
                    <td>Chất liệu dây</td>
                    <td>Dây Kim Loại</td>
                </tr>
                <tr>
                    <td>Lắp ráp tại</td>
                    <td>Trung Quốc</td>
                    <td>Chất liệu vỏ</td>
                    <td>Vỏ Thép Cao Cấp Không Gỉ 316L</td>
                </tr>
                <tr>
                    <td>Dành cho</td>
                    <td>Nam</td>
                    <td>Hình dạng vỏ</td>
                    <td>Tròn</td>
                </tr>
    </table>
    <table class="content4">
        <tr>
            <th>Thông số kỹ thuật</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
                <tr>
                    <td>Kích thước dây</td>
                    <td>Đang Cập Nhật</td>
                    <td>Số kim</td>
                    <td>3 Kim</td>
                </tr>
                <tr>
                    <td>Kích thước mặt số</td>
                    <td>&gt;45mm</td>
                    <td>Đá gắn kèm đồng hồ</td>
                    <td>Không gắn đá</td>
                </tr>
                <tr>
                    <td>Độ chịu nước</td>
                    <td>50mm</td>
                    <td>Chứng nhận Chronometer</td>
                    <td>Không</td>
                </tr>
                <tr>
                    <td>Độ dày vỏ máy</td>
                    <td>8mm</td>
                    <td>Chức năng chính</td>
                    <td>Lịch</td>
                </tr>
    </table>
    <h1 style="border-bottom: 2px solid black;">CÓ THỂ BẠN SẼ THÍCH</h1>
    <table class="content1">
    <tr>
        <td class="auto-style4"><div class="hoverimage"><asp:Image ID="Image2" runat="server" ImageUrl="~/donghonamcasiomtp.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DHCasioNamMTP-V004G.aspx" Font-Underline="false" CssClass="link">Đồng Hồ Casio Nam MTP-V004G7B2UDF Dây Thép Không Gỉ 47mm</asp:HyperLink><br /><br />
            <asp:Label ID="Label1" runat="server" Text="1.199.000 VNĐ"></asp:Label>
        </td>
        <td class="0" style="width:340px;border:none;"></td>
        <td class="auto-style3"><div class="hoverimage"><asp:Image ID="Image3" runat="server" ImageUrl="~/DongHoCasio/2.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/dong-ho-orient-nam-sune5004w0.aspx" Font-Underline="False" CssClass="link">Đồng Hồ Casio Nam MTP-V004G7B2UDF Dây Thép Không Gỉ 47mm</asp:HyperLink><br /><br />
            <asp:Label ID="Label2" runat="server" Text="1.199.000 VNĐ"></asp:Label>
        </td>
    </tr><br />
</table>

</div>
</asp:Content>

