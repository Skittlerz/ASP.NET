using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReviewExercise2 : System.Web.UI.Page
{
    Person[] people;
    int current;

    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {

            current = 0;
            people = new Person[5];

            people[0] = new Person("Bob", "Smith", "123-4567", 
                new Address("200 2nd ave", "Chicago", "Illinois", "34565"));
            people[1] = new Person("Bill", "Brooks", "122-1211",
                new Address("345 1st ave", "Minneapolis", "Minnesota", "45678"));
            people[2] = new Person("Gus", "Fraiser", "123-4447",
                new Address("800 45th st", "Houston","Texas","43215"));
            people[3] = new Person("Tom", "Jones", "123-5555",
                new Address("567 83rd st.", "Grand Forks", "North Dakota", "34278"));
            people[4] = new Person("Sue", "Shard", "122-4999",
                new Address("453 Roscoe ave","Los Angeles","California","65132"));
            Session["people"] = people;
            Session["current"] = current;
            displayContactInfo();
        }

        if (Session["current"] != null || Session["people"] !=null) { 
        current = (int)Session["current"];
        people = (Person[])Session["people"];
        }

       
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int record = (int)Session["current"];
        people[record].FirstName = txtFirstName.Text;
        people[record].LastName = txtLastName.Text;
        people[record].PhoneNumber = txtPhoneNumber.Text;
        people[record].Address.Street = txtStreet.Text;
        people[record].Address.City = txtCity.Text;
        people[record].Address.State = txtState.Text;
        people[record].Address.Zip = txtZip.Text;
        Session["people"] = people;
        displayContactInfo();
    }

    protected void displayContactInfo()
    {
        int record = (int)Session["current"];
        txtFirstName.Text = people[record].FirstName;
        txtLastName.Text = people[record].LastName;
        txtPhoneNumber.Text = people[record].PhoneNumber;
        txtStreet.Text = people[record].Address.Street;
        txtCity.Text = people[record].Address.City;
        txtState.Text = people[record].Address.State;
        txtZip.Text = people[record].Address.Zip;
    }



    protected void lnkButton_Click(object sender, EventArgs e)
    {

        int record = (int)Session["current"];
        record++;
        if (record > people.Length - 1)
        {
            record = 0;
        }
        Session["current"] = record;
        displayContactInfo();
    }

    protected void lnkPrevious_Click(object sender, EventArgs e)
    {
        int record = (int)Session["current"];
        record--;
        if (record < 0)
        {
            record = people.Length - 1;
        }

        Session["current"] = record;
        displayContactInfo();
    }
}