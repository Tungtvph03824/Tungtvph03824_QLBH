<%@ Page Title="Đăng nhập" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.vb" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    
    <section id="loginForm">
        <h2>Sử dụng tài khoản cục bộ để đăng nhập.</h2>
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Form đăng nhập</legend>
                    <ol>
                        <li>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Tên tài khoản</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                        <li>
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Mật khẩu</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Ghi Nhớ tài khoản?</asp:Label>
                        </li>
                    </ol>
                    <asp:Button ID="Button1" runat="server" CommandName="Login" Text="Đăng nhập" />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Đăng kí</asp:HyperLink>
            Nếu chưa có tài khoản.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>Đăng nhập bằng các dịch vụ khác.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
</asp:Content>