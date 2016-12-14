using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        Employee emp = new Employee();
        emp.Firstname = txtFirstName.Text;
        emp.Lastname = txtLastName.Text;
        emp.Jobcode = Convert.ToInt32(ddlJobs.SelectedValue);

        EmployeeManager msManager = new EmployeeManager();
        msManager.insertEmployee(emp);

        GridView1.DataBind();

        txtFirstName.Text = "";
        txtLastName.Text = "";
        
    }
}