using System;
using System.Data;
using System.Web.UI.WebControls;

namespace HelloWord2
{
    public partial class ListForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListRole.Items.Add(new ListItem("Select","0"));
                DropDownListRole.Items.Add(new ListItem("Software Engineer", "1"));
                DropDownListRole.Items.Add(new ListItem("Test Engineer", "2"));
                DropDownListRole.Items.Add(new ListItem("Architect", "3"));
                DropDownListRole.Items.Add(new ListItem("Devops Manager", "4"));                
            }

            var i = 0;

            var t = 5;
            var s = t / i;

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {            
            if (DropDownListRole.SelectedItem.Text == "Select")
            {
                this.LabelMessage.Visible = true;
            }
            else
            {
                this.LabelMessage.Visible = false;
                DataTable table = new DataTable();
                table.Columns.Add("Name");
                table.Columns.Add("DOB");
                table.Columns.Add("Role");
                table.Rows.Add("Sachin Kumar", this.TextBoxDOB.Text, this.DropDownListRole.SelectedItem.Text);
                table.Rows.Add("Peter", this.TextBoxDOB.Text, this.DropDownListRole.SelectedItem.Text);
                table.Rows.Add("Ravi Kumar", this.TextBoxDOB.Text, this.DropDownListRole.SelectedItem.Text);
                table.Rows.Add("Irfan", this.TextBoxDOB.Text, this.DropDownListRole.SelectedItem.Text);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
            
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void CalendarDOB_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDOB.Text = CalendarDOB.SelectedDate.ToShortDateString();
        }
    }
}