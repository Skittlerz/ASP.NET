using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Address
/// </summary>
public class Address
{
    public String Street { get; set; }
    public String City { get; set; }
    public String State { get; set; }
    public String Zip { get; set; }

    public Address() { }

    public Address(String street, String city, String state, String zip)
    {
        Street = street;
        City = city;
        State = state;
        Zip = zip;
    }
}