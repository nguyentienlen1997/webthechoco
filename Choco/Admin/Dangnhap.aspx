<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Choco.Admin.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <script src="../bootstrap3/js/bootstrap.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" style="margin-top:200px; margin-left:500px">
        <div class="container"> 
            <div class="row"> 
                <div class="col-md-6"> 
                    <div class="panel panel-default"> 
                        <div class="panel-heading"> <span class="glyphicon glyphicon-lock"></span> ĐĂNG NHẬP 
                        </div> 
                        <div class="panel-body"> 
                            <div class="form-group">
                                <label class=" col-md-3 control-label">Tên đăng nhập</label>  
                                <div class="col-md-3"> 
                                <asp:TextBox ID="txtDN" runat="server"></asp:TextBox>
                                </div> 
                            </div> 
                        <br />
                        <div class="form-group"> 
                            <label class=" col-md-3 control-label">Password</label> 
                            <div class="col-md-3"> 
                                <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                            </div> 
                        </div> 
                        <br />
                        <div class="form-group last"> 
                            <div class="col-sm-offset-3 col-sm-9"> 
                                <asp:Button ID="btnDangnhap" runat="server" class="btn btn-success btn-sm" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
                            </div>
                        </div> 
     
                    </div> 
    
                </div> 
            </div> 
        </div>
    </div> 
    </form>
</body>
</html>
