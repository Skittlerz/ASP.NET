using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test3 : System.Web.UI.Page
{
    EmployeeManager em;
    List<Job> jobs;
    protected void Page_Load(object sender, EventArgs e)
    {
        em = new EmployeeManager();
        jobs = em.getJobs();
        rptJobs.DataSource = jobs;
        rptJobs.DataBind();
    }
}