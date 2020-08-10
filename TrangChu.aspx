<%@ Page Title="" Language="C#" MasterPageFile="~/BaiTapLon.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="MenuRight">

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img1" PostBackUrl="~/anhnen/flashsale1.jpg" Width="100%" ImageUrl="~/anhnen/flashsale1.jpg" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <asp:ImageButton ID="ImageButton2" runat="server" CssClass="img1" ImageUrl="~/anhnen/sale1.jpg" PostBackUrl="~/anhnen/sale1.jpg" Width="100%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <asp:ImageButton ID="ImageButton3" runat="server" CssClass="img1" ImageUrl="~/anhnen/sale2.png" PostBackUrl="~/anhnen/sale2.png" Width="100%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <asp:ImageButton ID="ImageButton4" runat="server" CssClass="img1" ImageUrl="~/anhnen/sale3.jpg" PostBackUrl="~/anhnen/sale3.jpg" Width="100%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <asp:ImageButton ID="ImageButton5" runat="server" CssClass="img1" ImageUrl="~/anhnen/sale4.jfif" PostBackUrl="~/anhnen/sale4.jfif" Width="100%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <asp:ImageButton ID="ImageButton6" runat="server" CssClass="img1" ImageUrl="~/anhnen/sale5.jpg" PostBackUrl="~/anhnen/sale5.jpg" Width="100%" />
  <div class="text"></div>
</div>

</div>
<br />

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 4000);
    }
</script>
<h2 style="background-color:black;color:white">Sản phẩm giảm giá</h2>
<table class="content1">
    <tr>
        <td class="auto-style4"><div class="hoverimage"><asp:Image ID="Image1" runat="server" ImageUrl="~/donghonamcasiomtp.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DHCasioNamMTP-V004G.aspx" Font-Underline="false" CssClass="link">Đồng Hồ Casio Nam MTP-V004G7B2UDF Dây Thép Không Gỉ 47mm</asp:HyperLink><br /><br />
            <asp:Label ID="Label1" runat="server" Text="1.199.000 VNĐ"></asp:Label>
        </td>
        <td class="0" style="width:340px;border:none;"></td>
        <td class="auto-style3"><div class="hoverimage"><asp:Image ID="Image2" runat="server" ImageUrl="~/DongHoCasio/2.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/dong-ho-orient-nam-sune5004w0.aspx" Font-Underline="False" CssClass="link">Đồng Hồ Nữ Casio Sheen SHE-3033GL-7AUDR Dây</asp:HyperLink><br /><br />
            <asp:Label ID="Label2" runat="server" Text="5.199.000 VNĐ"></asp:Label>
        </td>
    </tr><br />
</table>

<h2 style="background-color:black;color:white">Sản phẩm khác</h2>
<table class="content1">
    <tr>
        <td class="auto-style4"><div class="hoverimage"><asp:Image ID="Image3" runat="server" ImageUrl="~/DongHoCasio/3.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DongHo3.aspx" Font-Underline="False" CssClass="link">Đồng Hồ Nam Casio Oceanus OCW-T3000-2A</asp:HyperLink><br /><br />
            <asp:Label ID="Label3" runat="server" Text="41.199.000 VNĐ"></asp:Label>
        </td>
        <td class="0" style="width:340px;border:none;"></td>
        <td class="auto-style3"><div class="hoverimage"><asp:Image ID="Image4" runat="server" ImageUrl="~/DongHoCasio/4.jpg"  CssClass="img"/></div><br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/DongHo4.aspx" Font-Underline="False" CssClass="link">Đồng Hồ Nam Casio Oceanus OCW-G2000J-1A</asp:HyperLink><br /><br />
            <asp:Label ID="Label4" runat="server" Text="49.199.000 VNĐ"></asp:Label>
        </td>
    </tr><br />
</table>
</div>
</asp:Content>


