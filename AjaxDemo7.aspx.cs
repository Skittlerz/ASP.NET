using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjaxDemo7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetFortune_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000); // wait 3 seconds
        lblFortune.Text = String.Format("At {0:T}, the oracle says: ", DateTime.Now);
        Random rnd = new Random();
        switch (rnd.Next(4))
        {
            case 0:
                lblFortune.Text += "You're doomed!";
                break;
            case 1:
                lblFortune.Text += "Good luck is around the corner.";
                break;
            case 2:
                lblFortune.Text += "Don't leave home.";
                break;
            case 3:
                lblFortune.Text += "Buy stock today.";
                break;
        }

    }
}