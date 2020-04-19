<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="HelloWord2.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <asp:PlaceHolder runat="server">
                <%: Styles.Render("~/bundles/css") %>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server">
                <%: Scripts.Render("~/bundles/BootJquery") %>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server">
                <%: Scripts.Render("~/bundles/datePicker") %>
        </asp:PlaceHolder>
        <style>
            table td label {
                padding-left: 5px;
            }
            .error-message{
                position:absolute;
            }
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
                <div class="row" style="background:#d2d2d2; margin-top:10px;padding:20px 20px;box-shadow: 0px 1px 5px #525252;">
                    <div class="col-lg-6 col-sm-6">
                        <h4>ADD USER</h4>
                    </div>
                </div>
                <div class="row" style="padding-top:20px;">
                    <div class="col-sm-12">
                            <h4>Enter Details</h4>
                    </div>
                </div>
                <div class="row" style="padding-top:0px;">
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon1">Name</span>
                                    <asp:TextBox ID="TextBoxName" CLASS="form-control" aria-describedby="basic-addon1" runat="server" placeholder="Enter Name"></asp:TextBox>
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" class="error-message" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBoxName" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon2">DOB</span>
                                    <asp:TextBox ID="TextBoxDOB" CLASS="form-control date-picker" aria-describedby="basic-addon2" runat="server" placeholder="Choose DOB"></asp:TextBox>
                            </div> 
                    </div>
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon3">Role</span>
                                    <asp:DropDownList ID="DropDownListRole" CLASS="form-control" runat="server"></asp:DropDownList>
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole" class="error-message" InitialValue="0" Display="Dynamic" runat="server" ErrorMessage="Please Select Role" ControlToValidate="DropDownListRole" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon4">Address</span>
                                    <asp:TextBox ID="ListBoxAddress" CLASS="form-control" runat="server" Rows="10" Columns="10" wrap=true TextMode="MultiLine" ></asp:TextBox>
                            </div> 
                    </div>
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon5">City</span>
                                    <asp:TextBox ID="TextBoxCity" CLASS="form-control" Rows="10" Columns="10" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div> 
                    </div>
                    <div class="col-sm-4" style = "margin-top:20px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon6">Gender<br></span>
                                    <div class="form-control" style=" display : table;">
                                        <asp:RadioButtonList ID="RadioButtonListGender"  runat="server" >
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>    
                                    </div>
                            </div> 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" class="error-message" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="RadioButtonListGender" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-4" style = "margin-top:24px;">
                            <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon6">Color<br></span>
                                    <div class="form-control" style=" display : table;">
                                        <asp:CheckBoxList ID="CheckBoxListColor" runat="server"></asp:CheckBoxList>   
                                    </div> 
                            </div> 
                    </div>
                    <div class="col-sm-12" style = "margin-top:20px; text-align:center;">
                            <asp:Button ID="ButtonSubmit" class="btn btn-primary" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ButtonCancel" class="btn btn-default" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CausesValidation="false"/>
                    </div>
                </div>
            <!-- <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxName1" runat="server"></asp:TextBox>
                    </asp:TableCell>             
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBoxName" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>DOB: </asp:TableCell>
                    <asp:TableCell>
                        <asp:Calendar ID="CalendarDOB1" runat="server"></asp:Calendar>
                    </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Role: </asp:TableCell>
                    <asp:TableCell><asp:DropDownList ID="DropDownListRole1" runat="server"></asp:DropDownList></asp:TableCell>  
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole1" InitialValue="0" Display="Dynamic" runat="server" ErrorMessage="Please Select Role" ControlToValidate="DropDownListRole" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Address: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="ListBoxAddress1" runat="server" Rows="10" Columns="10" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>City: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxCity1" runat="server"></asp:TextBox></asp:TableCell>                    
                </asp:TableRow>                
                <asp:TableRow>
                    <asp:TableCell>Gender: </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="RadioButtonListGender1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>                        
                    </asp:TableCell>                    
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender1" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="RadioButtonListGender" BorderColor="#FF3300" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Color: </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="CheckBoxListColor1" runat="server"></asp:CheckBoxList></asp:TableCell>        
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="ButtonSubmit1" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonCancel2" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" CausesValidation="false"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table> -->
        </div>
    </form>
</body>
<script src="/Scripts/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function () {
           // $(".select-picker").selectpicker('refresh');
           $('.date-picker').datepicker({
                // startDate: '-80d',
                //endDate: '+0d',
                autoclose: true,
                format: 'dd-mm-yyyy'
            });
            $.fn.datepicker.defaults.showOnFocus = false;
            
        });
</script>
</html>
