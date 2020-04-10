<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListForm.aspx.cs" Inherits="HelloWord2.ListForm" %>

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
                        <asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" CausesValidation="false"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Name: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>DOB: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>
                        <asp:Calendar ID="CalendarDOB" runat="server" OnSelectionChanged="CalendarDOB_SelectionChanged"></asp:Calendar>
                    </asp:TableCell>
                    <asp:TableCell>Role: </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownListRole" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please Enter DOB" ControlToValidate="TextBoxDOB" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                    <asp:TableCell>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole" InitialValue="0" runat="server" ErrorMessage="Please Select Role" ControlToValidate="DropDownListRole" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>                    
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="LabelMessage" runat="server" Text="No Record Found" Visible="false"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
             </asp:Table>            
        </div>

    </form>
</body>
</html>
