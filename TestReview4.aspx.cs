using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestReview4 : System.Web.UI.Page
{
    String[,] schedule;
    protected void Page_Load(object sender, EventArgs e)
    {
        schedule = (String[,])Session["schedule"];

        if(schedule == null)
        {
            schedule = new string[13, 32];
        }

        Session["schedule"] = schedule;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        TableCell c;
        c = e.Cell;
        String playing;

        int x = e.Day.Date.Month;
        int y = e.Day.Date.Day;

        if (schedule[x, y] != null)
        {
            playing = schedule[x, y];
            c.BackColor = Color.Aqua;
            c.Controls.Add(new LiteralControl("<p>"));
            c.Controls.Add(new LiteralControl(playing));
            c.Controls.Add(new LiteralControl("</p>"));
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = Calendar1.SelectedDate.Month;
        int y = Calendar1.SelectedDate.Day;

        schedule[x, y] = (string)DropDownList1.SelectedValue;

        Session["schedule"] = schedule;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = Calendar1.SelectedDate.Month;
        int y = Calendar1.SelectedDate.Day;

        Label1.Text = schedule[x, y];
    }
}