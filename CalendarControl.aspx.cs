using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class CalendarControl : System.Web.UI.Page
{
    Random r = new Random();
    

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        
        TableCell c;
        String horoscope = "";

        c = e.Cell;

        int num = r.Next(4);

        switch (num)
        {
            case 0:
                horoscope = "Good things will happen today!";
                c.BackColor = Color.Green;
                break;
            case 1:
                horoscope = "You're doomed. Hide in bed today.";
                c.BackColor = Color.Red;
                break;
            case 2:
                horoscope = "Something unexpected will happen.";
                c.BackColor = Color.Purple;
                break;
            case 3:
                horoscope = "Look before you leap.";
                c.ForeColor = Color.White;
                c.BackColor = Color.Black;
                break;

        }

        c.Controls.Add(new LiteralControl("<p>"));
        c.Controls.Add(new LiteralControl(horoscope));
        c.Controls.Add(new LiteralControl("</p>"));

    }

}