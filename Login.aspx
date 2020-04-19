<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HelloWord2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%-- <link rel="stylesheet" type="text/css" href="~/Content/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-theme.min.css"> --%>
    <asp:PlaceHolder runat="server">
                <%: Styles.Render("~/bundles/css") %>
    </asp:PlaceHolder>
    <asp:PlaceHolder runat="server">
                <%: Scripts.Render("~/bundles/BootJquery") %>
    </asp:PlaceHolder>
    <style>
        form.form{
            max-width:300px;
            margin: 100px auto;
            border: 1px solid #f3f3f3;
            box-shadow:0px 0px 5px;
            border-radius:5px;
            text-align:center;
            padding: 20px 20px 50px;
            background: #e8e8e8;
            color: #848484;
        }
        table#Table1 {
            width:100%;
        }
        #ButtonSubmit{
            margin-top:20px;
        }
    </style>
    <title>Login</title>
</head>
<body>

    <div class="container">
    <div class="row">
    <div class="col">
    <form id="form1" class="form" runat="server">
            <h2>LOGIN</h2>
        
            <div>
                <asp:Label ID="LabelUserId" runat="server" Text="User ID"></asp:Label>
            </div>             
            <div>
                <asp:TextBox ID="TextBoxUserId" CLASS="form-control" runat="server" ></asp:TextBox>
            </div>           
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserId" runat="server" ErrorMessage="Please Enter User ID" ControlToValidate="TextBoxUserId" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="TextBoxPassword" runat="server" CLASS="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBoxPassword" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
            <div class="custom-control custom-checkbox">
                <asp:Label ID="LabelRemeberMe" runat="server" FOR="CheckBoxRememberMe" Text="Remeber Me"></asp:Label> 
                <asp:CheckBox ID="CheckBoxRememberMe" CLASS="custom-control-input" runat="server" />
            </div>
            <div>
                <asp:Button ID="ButtonSubmit" runat="server" CLASS="btn btn-primary" Text="Submit" OnClick="ButtonSubmit_Click" />                        
            </div>
            <div>
                <asp:Label ID="LabelMessage" runat="server" Text="" BorderColor="#FF3300"  ForeColor="#FF3300"></asp:Label>
            </div>
    </form>
    </div>
    </div>
    </div>
</body>
</html>
