using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherLibrary
{
    public class WeatherReport
    {
        private float lat;
        private float lon;
        private float facing;
        private DateTime submitted;
        public WeatherReport(float lat, float lon, float facing, DateTime submitted)
        {
            this.Latitude = lat;
            this.Longitude = lon;
            this.Facing = facing;
            this.TimeSubmitted = submitted;
        }

        public WeatherReport() { }

        public float Latitude
        {
            get { return lat; }
            set { lat = value; }
        }

        public float Longitude
        {
            get { return lon; }
            set { lon = value; }
        }

        public float Facing
        {
            get { return facing; }
            set { facing = value; }
        }

        public DateTime TimeSubmitted
        {
            get { return submitted; }
            set { submitted = value; }
        }
    }
}
