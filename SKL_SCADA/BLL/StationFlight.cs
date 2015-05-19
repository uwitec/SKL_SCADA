using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class StationFlight
    {
        public List<MODEL.StationFlight> GetStationFlight(int StationID)
        {
            DAL.StationFlight Flights=new DAL.StationFlight();
            return (Flights.StationFlightToModel(StationID));
        }
            
    }
}
