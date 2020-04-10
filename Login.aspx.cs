using System;

namespace HelloWord2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LabelMessage.Visible = false;
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            if (this.TextBoxPassword.Text != "pass@123")
            {
                this.LabelMessage.Visible = true;
                this.LabelMessage.Text = "Credentials Not Verified";
            }
            else
            {
                this.LabelMessage.Visible = false;
                Response.Redirect("ListForm.aspx");
            }
        }
    }
}