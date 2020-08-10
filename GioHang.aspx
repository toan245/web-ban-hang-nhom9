<%@ Page Title="" Language="C#" MasterPageFile="~/BaiTapLon.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MenuRight">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DSKhachHang.aspx">DACH SÁCH KHÁCH HÀNG</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MASP" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MASP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MASP" />
                <asp:BoundField DataField="TENSP" HeaderText="Tên sản phẩm" SortExpression="TENSP" />
                <asp:BoundField DataField="GIAMOI" HeaderText="Giá" SortExpression="GIAMOI" />
                <asp:CommandField ShowDeleteButton="True" DeleteText="Xoá" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QUANLYDONGHOConnectionString %>" DeleteCommand="DELETE FROM [SanPhamDongHoCasio] WHERE [MASP] = @MASP" SelectCommand="SELECT * FROM [SanPhamDongHoCasio]">
            <DeleteParameters>
                <asp:Parameter Name="MASP" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

