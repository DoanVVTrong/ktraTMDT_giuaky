<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baiktra1.aspx.cs" Inherits="baiktra2.baiktra1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Thông tin sản phẩm
        </div>
        <div>
            Loại sản phẩm <select class="form-control" id="LoaiSP" name="LoaiSP">
             <option>Đồng hồ đeo tay</option> 
             <option>Đồng hồ treo tường</option> 
             <option>Đồng hồ để bàn</option> 
                        </select>
        </div>
        <div>
            Tên sản phẩm <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên sản phẩm bắt buộc phải nhập"
                ControlToValidate="txtTenSP"
                Display="Dynamic" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Đơn giá <asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Phải nhập số lớn hơn 0"
                    ControlToValidate="txtDonGia" Display="Dynamic"
                    ClientValidationFunction="fcSolon" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </div>
        <div>
            Số lượng <asp:TextBox ID="txtSL" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Số lượng là số nguyên trong khoảng từ 1 đến 10"
                ControlToValidate="txtSL" Display="Dynamic" MinimumValue="1" MaximumValue="10" Type="Double"
                ></asp:RangeValidator>
        </div>
        <div>
            Khuyến mãi <asp:RadioButton ID="rb1" runat="server" Text="10%" />
            <asp:RadioButton ID="rb2" runat="server" Text="5%"/>
            <asp:RadioButton ID="rb0" runat="server" Text="không"/>
        </div>
        <div>
               Hiển thị <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />

        </div>
        <div>
            <asp:Button ID="btnUpdate" runat="server" Text="Cập nhập" OnClick="bttCapcha_Click" />
            <div id="updateMessage" style="display: none;"></div>

            <script type="text/javascript">
            function showUpdateMessage() {
                  var updateMessage = document.getElementById('updateMessage');
                  updateMessage.style.display = 'block';
                  updateMessage.innerHTML = 'Cập nhập thông tin sản phẩm thành công';
                }
            </script>
       </div>
    </form>
</body>
</html>
