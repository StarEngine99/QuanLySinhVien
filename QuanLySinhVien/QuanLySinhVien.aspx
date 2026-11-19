<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLySinhVien.aspx.cs" Inherits="QuanLySinhVien.QuanLySinhVien" EnableEventValidation="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head runat="server">
    <title></title></head><body>
    <form id="form1" runat="server">
        <div class ="container">
            <header>
                <div>
                    <img src ="image/DthU.png" alt ="logo" style ="width: 60px; height: 60px"/>
                    QUẢN LÝ SINH VIÊN
                </div>
            </header>
            <br />
            <section>
                <div>Thông tin hồ sơ sinh viên</div>
                <div class =" row g-3">
                    <div class ="col-md-3">
                        <div>Mã sinh viên</div>
                        <div><asp:TextBox ID="txtmasv" runat="server" placeholder ="VD: 0024410000"></asp:TextBox></div>
                    </div>
                    <div class ="col-md-3">
                        <div>Họ tên</div>
                        <div><asp:TextBox ID="txthoten" runat="server" placeholder ="VD: Nguyễn Văn A"></asp:TextBox></div>
                    </div>
                    <div class ="col-md-3">
                        <div>Ngày sinh</div>
                        <div><asp:TextBox ID="txtngaysinh" runat="server" placeholder ="VD: 10/10/2006" TextMode="Date"></asp:TextBox></div>
                    </div>
                    <div class ="col-md-3">
                        <div>Email</div>
                        <div><asp:TextBox ID="txtemail" runat="server" placeholder ="VD: sinhvien@student.dthu.edu.vn"></asp:TextBox></div>
                    </div>
                    <div class ="col-md-3">
                        <div>Khoa</div>
                        <div>
                            <asp:DropDownList ID="ddkhoa" runat="server" Width="247px" AutoPostBack="True" OnSelectedIndexChanged="ddkhoa_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>
                    <div class ="col-md-3">
                        <div>Lớp</div>
                        <div>
                            <asp:DropDownList ID="ddlop" runat="server" Width="245px"></asp:DropDownList>
                        </div>
                    </div>
                    <div class ="col-md-6">
                        <div>Địa chỉ</div>
                        <div><asp:TextBox ID="txtdiachi" runat="server" placeholder ="VD: Đồng Tháp"></asp:TextBox></div>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div class ="d-flex justify-content-between align-items-center mt-4">
                    <div>
                        <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
                        <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
                        <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
                        <asp:Button ID="btnlammoi" runat="server" Text="Làm mới" OnClick="btnlammoi_Click" />
                    </div>
                </div>
            </section>
            <br />
            <section>
                <div>Danh sách sinh viên</div>
                <div>
                    <asp:GridView ID="gvsinhvien" runat="server" OnRowDataBound="gvsinhvien_RowDataBound" DataKeyNames="MaSV" OnSelectedIndexChanged="ddkhoa_SelectedIndexChanged"></asp:GridView>
                </div>
            </section>
            <footer>

            </footer>
        </div>
    </form></body></html>