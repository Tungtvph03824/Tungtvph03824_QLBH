<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="RegisterExternalLogin.aspx.vb" Inherits="Account_RegisterExternalLogin" %>
<asp:Content ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1>Đăng kí với <%: ProviderDisplayName %> tài khoản của bạn</h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>

    
    <asp:ModelErrorMessage runat="server" ModelStateKey="Provider" CssClass="field-validation-error" />
    

    <asp:PlaceHolder runat="server" ID="userNameForm">
        <fieldset>
            <legend>Association Form</legend>
            <p>
                Bạn đã xác thực <strong><%: ProviderDisplayName %></strong> với
                <strong><%: ProviderUserName %></strong>. Vui lòng nhập tên người dùng dưới đây cho các trang web hiện tại và nhấp vào nút Đăng nhập.
            </p>
            <ol>
                <li class="email">
                    <asp:Label runat="server" AssociatedControlID="userName">Tên người dùng</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="userName"
                        Display="Dynamic" ErrorMessage="Tên người dùng bắt buộc" ValidationGroup="NewUser" />
                    
                    <asp:ModelErrorMessage runat="server" ModelStateKey="UserName" CssClass="field-validation-error" />
                    
                </li>
            </ol>
            <asp:Button runat="server" Text="Đăng nhập" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button runat="server" Text="Hủy bỏ" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
</asp:Content>
