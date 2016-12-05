using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MovieLibrary
{
    public class Movie
    {
        public int CategoryId { get; set; }
        public int Id { get; set; }

        public string Title { get; set; }
        public string Director { get; set; }

        string _description;
        public string Description
        {
            get { return _description; }
            set
            {
                if (value != null)
                    _description = value;
                else
                    value = "No description available";
            }
        }

        public Boolean InTheatres { get; set; }

        public Movie() { }

        public Movie(string title, string director, string description)
        {
            Title = title;
            Director = director;
            Description = description;

        }

        public Movie(int id, string title, string director, string description)
        {
            Id = id;
            Title = title;
            Director = director;
            Description = description;
        }


    }
}
