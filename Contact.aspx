<%@ Page Title="Liên Hệ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Hãy liên hệ với chúng tôi để biết thêm thông tin chi tiết</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">Tư vấn 24/24h:</span>
            <span>(098)323.232</span>
        </p>
        <p>
            <span class="label">Khiếu nại    :</span>
            <span>(09)842.827</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ khách hàng:</span>
            <span><a href="mailto:Tungtvph03824@fpt.edu.vn">Tungtvph03824@fpt.edu.vn</a></span>
        </p>
            <p>
            <span class="label">Email liên hệ:</span>
            <span><a href="mailto:Trantungbap@gmail.com">Trantungbap@gmail.com</a></span>
        </p>
       
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
           Tầng 3 - Tòa nhà A6 - Số 10, đường Hàm Nghi, Quận Cầu Giấy - Hà Nội<br />
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29791.689486386545!2d105.766202!3d21.034239!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5e8b29b0e4ee866e!2zS8O9IHTDumMgeMOhIE3hu7kgxJDDrG5o!5e0!3m2!1svi!2sus!4v1456242595241" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>