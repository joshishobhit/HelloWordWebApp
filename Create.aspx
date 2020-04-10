<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="HelloWord2.Create" %>

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
                    <asp:TableCell>Name: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                    </asp:TableCell>             
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBoxName" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>DOB: </asp:TableCell>
                    <asp:TableCell>
                        <asp:Calendar ID="CalendarDOB" runat="server"></asp:Calendar>
                    </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Role: </asp:TableCell>
                    <asp:TableCell><asp:DropDownList ID="DropDownListRole" runat="server"></asp:DropDownList></asp:TableCell>  
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole" InitialValue="0" Display="Dynamic" runat="server" ErrorMessage="Please Select Role" ControlToValidate="DropDownListRole" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Address: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="ListBoxAddress" runat="server" Rows="10" Columns="10" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>City: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox></asp:TableCell>                    
                </asp:TableRow>                
                <asp:TableRow>
                    <asp:TableCell>Gender: </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>                        
                    </asp:TableCell>                    
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="RadioButtonListGender" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Color: </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="CheckBoxListColor" runat="server"></asp:CheckBoxList></asp:TableCell>        
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CausesValidation="false"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
