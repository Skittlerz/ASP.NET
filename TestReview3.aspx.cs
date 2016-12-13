using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestReview3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MovieManager mrManager = new MovieManager();
        String name = (String)txtCategory.Text;
        mrManager.insertMovieCategory(name);

        GridView1.DataBind();

        //ObjectDataSource1.InsertParameters["Name"].DefaultValue = txtCategory.Text;
        //ObjectDataSource1.Insert()
    }
}