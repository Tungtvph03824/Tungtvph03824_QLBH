<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2></h2>
            </hgroup>
            <p> </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Quản lí bán hàng</h3>
    <ol class="round">
        <li class="one">
            <h5>Danh sách khách hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="273px" Width="717px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource6">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
                    <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" SortExpression="SDT" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Chèn" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="New" Text="Mới" />
                            &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                        </ItemTemplate>
                        <ControlStyle BackColor="#D8D8D8" BorderColor="#006699" BorderStyle="Solid" Font-Size="Smaller" ForeColor="#0066FF" />
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Tungtvph03824_QLBHConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @original_MaKH AND [TenKH] = @original_TenKH AND [SDT] = @original_SDT AND [Email] = @original_Email AND [DiaChi] = @original_DiaChi" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiaChi]) VALUES (@MaKH, @TenKH, @SDT, @Email, @DiaChi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [SDT] = @SDT, [Email] = @Email, [DiaChi] = @DiaChi WHERE [MaKH] = @original_MaKH AND [TenKH] = @original_TenKH AND [SDT] = @original_SDT AND [Email] = @original_Email AND [DiaChi] = @original_DiaChi">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaKH" Type="String" />
                    <asp:Parameter Name="original_TenKH" Type="String" />
                    <asp:Parameter Name="original_SDT" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="original_MaKH" Type="String" />
                    <asp:Parameter Name="original_TenKH" Type="String" />
                    <asp:Parameter Name="original_SDT" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Hóa đơn</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="207px" Width="692px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="Mã hóa đơn" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" SortExpression="MaKH" />
                    <asp:BoundField DataField="NgayLap" HeaderText="Ngày lập" SortExpression="NgayLap" />
                    <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" UpdateText="Cập nhật" >
                    <ControlStyle BackColor="#D8D8D8" BorderColor="#006699" BorderStyle="Solid" Font-Size="Smaller" ForeColor="#0066FF" />
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Tungtvph03824_QLBHConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @original_MaHD AND [MaKH] = @original_MaKH AND [NgayLap] = @original_NgayLap" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH], [NgayLap]) VALUES (@MaHD, @MaKH, @NgayLap)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaHD], [MaKH], [NgayLap] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [NgayLap] = @NgayLap WHERE [MaHD] = @original_MaHD AND [MaKH] = @original_MaKH AND [NgayLap] = @original_NgayLap">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaHD" Type="String" />
                    <asp:Parameter Name="original_MaKH" Type="String" />
                    <asp:Parameter Name="original_NgayLap" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="NgayLap" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="NgayLap" Type="DateTime" />
                    <asp:Parameter Name="original_MaHD" Type="String" />
                    <asp:Parameter Name="original_MaKH" Type="String" />
                    <asp:Parameter Name="original_NgayLap" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Chi tiết hóa đơn</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="237px" Width="635px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP,MaHD" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="MaHD" HeaderText="Mã hóa đơn" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="SoLuongMua" HeaderText="Số lượng mua" SortExpression="SoLuongMua" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" />
                    <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" UpdateText="Cập nhật" >
                    <ControlStyle BackColor="#D8D8D8" BorderColor="#006699" BorderStyle="Solid" Font-Size="Smaller" ForeColor="#0066FF" />
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Tungtvph03824_QLBHConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSP] = @original_MaSP AND [MaHD] = @original_MaHD AND [SoLuongMua] = @original_SoLuongMua AND [DonGia] = @original_DonGia" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSP], [MaHD], [SoLuongMua], [DonGia]) VALUES (@MaSP, @MaHD, @SoLuongMua, @DonGia)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [MaHD], [SoLuongMua], [DonGia] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuongMua] = @SoLuongMua, [DonGia] = @DonGia WHERE [MaSP] = @original_MaSP AND [MaHD] = @original_MaHD AND [SoLuongMua] = @original_SoLuongMua AND [DonGia] = @original_DonGia">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaSP" Type="String" />
                    <asp:Parameter Name="original_MaHD" Type="String" />
                    <asp:Parameter Name="original_SoLuongMua" Type="String" />
                    <asp:Parameter Name="original_DonGia" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="SoLuongMua" Type="String" />
                    <asp:Parameter Name="DonGia" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuongMua" Type="String" />
                    <asp:Parameter Name="DonGia" Type="Decimal" />
                    <asp:Parameter Name="original_MaSP" Type="String" />
                    <asp:Parameter Name="original_MaHD" Type="String" />
                    <asp:Parameter Name="original_SoLuongMua" Type="String" />
                    <asp:Parameter Name="original_DonGia" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Loại sản phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="249px" Width="749px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại sản phẩm" ReadOnly="True" SortExpression="MaLoaiSP" />
                    <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên loại sản phẩm" SortExpression="TenLoaiSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Mới" SelectText="Chọn" UpdateText="Cập nhật" >
                    <ControlStyle BackColor="#D8D8D8" BorderColor="#006699" BorderStyle="Solid" Font-Size="Smaller" ForeColor="#0066FF" />
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Tungtvph03824_QLBHConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoaiSP] = @original_MaLoaiSP AND [TenLoaiSP] = @original_TenLoaiSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (@MaLoaiSP, @TenLoaiSP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaLoaiSP], [TenLoaiSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoaiSP] = @TenLoaiSP WHERE [MaLoaiSP] = @original_MaLoaiSP AND [TenLoaiSP] = @original_TenLoaiSP">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaLoaiSP" Type="String" />
                    <asp:Parameter Name="original_TenLoaiSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                    <asp:Parameter Name="TenLoaiSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoaiSP" Type="String" />
                    <asp:Parameter Name="original_MaLoaiSP" Type="String" />
                    <asp:Parameter Name="original_TenLoaiSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Sản phẩm</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="163px" Width="685px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                    <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại sản phẩm" SortExpression="MaLoaiSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Mới" SelectText="Chọn" UpdateText="Cập nhật" >
                    <ControlStyle BackColor="#D8D8D8" BorderColor="#006699" BorderStyle="Solid" Font-Size="Smaller" ForeColor="#0066FF" />
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Tungtvph03824_QLBHConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [SoLuong] = @original_SoLuong AND [MoTa] = @original_MoTa AND [MaLoaiSP] = @original_MaLoaiSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [SoLuong], [MoTa], [MaLoaiSP]) VALUES (@MaSP, @TenSP, @SoLuong, @MoTa, @MaLoaiSP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [TenSP], [SoLuong], [MoTa], [MaLoaiSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [SoLuong] = @SoLuong, [MoTa] = @MoTa, [MaLoaiSP] = @MaLoaiSP WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [SoLuong] = @original_SoLuong AND [MoTa] = @original_MoTa AND [MaLoaiSP] = @original_MaLoaiSP">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaSP" Type="String" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_SoLuong" Type="String" />
                    <asp:Parameter Name="original_MoTa" Type="String" />
                    <asp:Parameter Name="original_MaLoaiSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                    <asp:Parameter Name="original_MaSP" Type="String" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_SoLuong" Type="String" />
                    <asp:Parameter Name="original_MoTa" Type="String" />
                    <asp:Parameter Name="original_MaLoaiSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
    </asp:Content>
