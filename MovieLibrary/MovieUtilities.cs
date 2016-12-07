using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MovieLibrary
{
    public class MovieUtilities
    {
        public List<Movie> selectAll()
        {
            MovieData md = new MovieData();
            return md.getMovies();
        }

        public void updateMovie(int id, String title, String director, String description)
        {
            Movie movie = new Movie(id, title, director, description);
            MovieData md = new MovieData();
            md.movieUpdate(movie);
        }
    }
}
