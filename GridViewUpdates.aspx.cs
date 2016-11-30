using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridViewUpdates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Title"].DefaultValue = txtTitle.Text;
        SqlDataSource1.InsertParameters["Director"].DefaultValue = txtDirector.Text;
        SqlDataSource1.InsertParameters["Description"].DefaultValue = txtDescription.Text;
        SqlDataSource1.InsertParameters["InTheaters"].DefaultValue = cbInTheatres.Checked.ToString();
        SqlDataSource1.InsertParameters["CategoryId"].DefaultValue = ddlCategory.SelectedValue;

        SqlDataSource1.Insert();

        txtTitle.Text = "";
        txtDirector.Text = "";
        txtDescription.Text = "";
    }
}