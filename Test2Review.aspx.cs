using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test2Review : System.Web.UI.Page
{
    public int iCounter = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataTextField = "Name";
            Service1Client client = new Service1Client();
            DropDownList1.DataSource = client.GetAllMovieCategories();
            DropDownList1.DataBind();

            int cat = Convert.ToInt32(DropDownList1.SelectedValue);
            Service1Client ws = new Service1Client();
            DataList1.DataSource = ws.GetMoviesByCategoryId(cat);
            DataList1.DataBind();

        }
    
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int cat = Convert.ToInt32(DropDownList1.SelectedValue);
        Service1Client ws = new Service1Client();
        DataList1.DataSource = ws.GetMoviesByCategoryId(cat);
        DataList1.DataBind();
    }
}