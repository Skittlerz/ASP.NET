using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjaxDemo4_ProgrammaticUpdated : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MovieManager mm = new MovieManager();
        gvMovies.DataSource = mm.getMovies();
        gvMovies.DataBind();
        updatePanel2.Update();
    }

    protected void btnGetMovie_Click(object sender, EventArgs e)
    {
        MovieManager mm = new MovieManager();
        gvMovies.DataSource = mm.getMoviesByTitle(txtTitle.Text);
        gvMovies.DataBind();
        updatePanel2.Update();
    }
}