using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Service1Client client = new Service1Client();
        GridView1.DataSource = client.GetAllMovies();
        GridView1.DataBind(); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        Service1Client client = new Service1Client();
        GridView1.DataSource = client.GetMovieByTitle(title);
        GridView1.DataBind();
    }
}