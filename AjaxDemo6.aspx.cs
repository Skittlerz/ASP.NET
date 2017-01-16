using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjaxDemo6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOne_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(8000); // sleep 8 seconds
        Label1.Text = "Phew... ... Finished that onerous task.";
    }

    protected void btnTwo_Click(object sender, EventArgs e)
    {

    }
}