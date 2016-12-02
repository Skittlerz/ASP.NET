using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListOfMovies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbAdd_Click(object sender, EventArgs e)
    {

        Movie m = new Movie();
        m.Title = txtTitle.Text;
        m.Director = txtDirector.Text;
        m.Description = txtDescription.Text;
        m.InTheatres = cbInTheatres.Checked;
        m.CategoryId = Convert.ToInt32(ddlMovieCat.SelectedValue);

        MovieManager mrManager = new MovieManager();
        mrManager.insertMovie(m);

        GridView1.DataBind();


        txtTitle.Text = "";
        txtDirector.Text = "";
        txtDescription.Text = "";
    }
}