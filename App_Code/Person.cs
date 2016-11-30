using System;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Person
{
    private string _firstname;
    private string _lastname;
    private Address _address;

    public string PhoneNumber { get; set; }
    public Person(String FirstName, String LastName, String PhoneNumber, Address contactAddress)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.PhoneNumber = PhoneNumber;
        this.Address = contactAddress;
    }

    public Address Address
    {
        get { return _address; }
        set { _address = value; }
    }

    public string FirstName
    {
        get { return _firstname; }
        set { _firstname = value; }
    }

    public string LastName
    {
        get { return _lastname; }
        set { _lastname = value; }
    } 
}