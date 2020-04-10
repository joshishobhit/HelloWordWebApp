<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HelloWord2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="LabelUserId" runat="server" Text="User ID"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxUserId" runat="server" ></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserId" runat="server" ErrorMessage="Please Enter User ID" ControlToValidate="TextBoxUserId" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBoxPassword" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="LabelRemeberMe" runat="server" Text="Remeber Me"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBoxRememberMe" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
