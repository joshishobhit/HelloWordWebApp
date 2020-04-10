using System;
using System.Web.UI.WebControls;

namespace HelloWord2
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListRole.Items.Add(new ListItem("Select","0"));
                DropDownListRole.Items.Add(new ListItem("Software Engineer","1"));
                DropDownListRole.Items.Add(new ListItem("Test Engineer", "2"));
                DropDownListRole.Items.Add(new ListItem("Architect", "3"));
                DropDownListRole.Items.Add(new ListItem("Devops Manager", "4"));
                CheckBoxListColor.Items.Add("Red");
                CheckBoxListColor.Items.Add("Green");
                CheckBoxListColor.Items.Add("Blue");
                CheckBoxListColor.Items.Add("Black");
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListForm.aspx");
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListForm.aspx");
        }
    }
}