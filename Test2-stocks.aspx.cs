using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test2_stocks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Service1Client client = new Service1Client();
        dlStocks.DataSource = client.GetAllStocks();
        dlStocks.DataBind();
    }

    protected void dlStocks_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String code = txtSearch.Text;
        Service1Client sc = new Service1Client();
        dlStocks.DataSource = sc.GetStockByCode(code);
        dlStocks.DataBind();
    }
}