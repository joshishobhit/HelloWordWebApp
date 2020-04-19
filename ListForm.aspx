<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListForm.aspx.cs" Inherits="HelloWord2.ListForm" %>

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
    <title></title>
</head>
<body>
        
    <form id="form1" runat="server">
           
        <div class="container">
            <div class="row" style="background:#d2d2d2; margin-top:10px;padding:20px 20px;box-shadow: 0px 1px 5px #525252;">
                <div class="col-lg-6 col-sm-6">
                    <h4>USERS</h4>
                </div>
                <div class="col-lg-6 col-sm-6 pull-right">
                        <asp:Button ID="ButtonAdd" runat="server" CLASS="btn btn-primary pull-right" Text="Add" OnClick="ButtonAdd_Click" CausesValidation="false"/>
                </div>
            </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-sm-12">
                        <h4>Search </h4>
                </div>
            </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-sm-3" style = "margin-top:10px;">
                        <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">Name</span>
                                <asp:TextBox ID="TextBoxName" CLASS="form-control" aria-describedby="basic-addon1" runat="server" placeholder="Enter Name"></asp:TextBox>
                              </div>
                </div>
                <div class="col-sm-3" style = "margin-top:10px;">
                        <div class="input-group">
                                <span class="input-group-addon" id="basic-addon2">DOB</span>
                                <asp:TextBox ID="TextBoxDOB" CLASS="form-control date-picker" aria-describedby="basic-addon2" runat="server" placeholder="Choose DOB"></asp:TextBox>
                              </div> 
                </div>
                <div class="col-sm-3" style = "margin-top:10px;">
                        <div class="input-group">
                                <span class="input-group-addon" id="basic-addon3">Role</span>
                                <asp:DropDownList ID="DropDownListRole" CLASS="form-control" runat="server"></asp:DropDownList>
                              </div> 
                </div>
                <div class="col-sm-3" style = "margin-top:10px; ">
                        <asp:Button ID="ButtonSearch" CLASS="pull-right btn btn-primary" runat="server" Text="Search" OnClick="ButtonSearch_Click" />     
                </div>
             </div>   
            <div class="row" style="padding-top:20px;">
                <div class="col-sm-12">
                    <asp:Label ID="LabelMessage" runat="server" Text="No Record Found" Visible="false"></asp:Label>
                </div>
            </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-12 col-sm-12">
                    <asp:GridView ID="GridView1" CLASS="table table-bordered" runat="server"></asp:GridView>
                </div>
            </div>
            
                    
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
