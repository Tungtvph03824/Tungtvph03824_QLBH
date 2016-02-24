<%@ Page Title="Giới Thiệu" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2></h2>
    </hgroup>

    <article>
        <p>        
           FPT Shop là hệ thống Trung Tâm bán lẻ thuộc Công ty Cổ phần Bán lẻ Kỹ thuật số FPT. Ra đời từ tháng 8 năm 2007, hệ thống liên tục phát triển cả về chất lượng dịch vụ lẫn về số lượng trung tâm bán lẻ. Trải dài 3 miền Bắc - Trung - Nam, FPT Shop cung cấp các sản phẩm chất lượng, chính hãng và là hệ thống trung tâm bán lẻ đầu tiên của Việt Nam được cấp chứng chỉ ISO 9001:2000 về quản lý chất lượng theo tiêu chuẩn Quốc tế.

Những mặt hàng chính được cung cấp bởi FPT Shop gồm có: <br />
        - Điện thoại<br />
        - Máy tính bảng<br />
        - Máy tính xách tay<br />
        - Máy tính để bàn<br />
        - Kỹ thuật số<br />
        - Phụ kiện
        </p>
        <p><img src="Images/fptsho.jpg" style width="600" height="420" /></p>
    </article>
    <aside>
        <h3>Chuyển trang</h3>
        <p>        
        </p>
        <ul>
            <li><a id="A1" runat="server" href="~/">Trang chủ</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">Giới thiệu</a></li>
            <li><a id="A3" runat="server" href="~/Contact.aspx">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>