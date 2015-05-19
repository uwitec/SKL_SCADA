using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Xml;
using System.Xml.Linq;

namespace DAL
{
    public class StationFlight
    {
        //获取XML，转换成DataSet

        //将一个工位所有的Flights封装出来
        public List<MODEL.StationFlight> StationFlightToModel(int StationID)
        {
            DataSet DSFlights = new DataSet();
            DSFlights.ReadXml("G:\\360云盘\\2013~2014 上交CIMS\\实验室项目\\上飞第二期 可视化监控\\ASP.NET三层架构（模板）\\Ministry of Railways\\Jc_MOR\\Jc_MOR\\Jc_MOR\\XMLFile1.xml");
            DataTable DTFlights = DSFlights.Tables[0];
            List<MODEL.StationFlight> StationFlights = new List<MODEL.StationFlight>();
            var Flights = from Fly in DTFlights.AsEnumerable()
                          group Fly by new{ t1=Fly.Field<string>("Flight") }into g
                          select new{Flight=g.Key.t1} ;
            
            foreach (var item in Flights)
            {
                MODEL.StationFlight FlightModel = new MODEL.StationFlight();
                FlightModel.FinishedNum = 0;
                var FlightsDetail = from Fly in DTFlights.AsEnumerable()
                                    where (Fly.Field<string>("Flight") == item.Flight)
                                    select new
                                    {
                                        StationID = Fly.Field<string>("StationID").ToString(),
                                        Flight = Fly.Field<string>("Flight").ToString(),
                                        Plane = Fly.Field<string>("Plane").ToString(),
                                        AONum = Fly.Field<string>("AONum").ToString(),
                                        state = Fly.Field<string>("state").ToString(),
                                        FR = Fly.Field<string>("FR").ToString()
                                    };

                foreach (var Detail in FlightsDetail)
                {
                    FlightModel.StationID = Convert.ToInt32(Detail.StationID);//工位
                    FlightModel.Flight = Convert.ToInt32(Detail.Flight);//架次
                    FlightModel.PlaneModel = Detail.Plane;//机型
                    FlightModel.AOStation.Add(Detail.AONum);//所有的AO
                    FlightModel.FR.Add(bool.Parse(Detail.FR));//FR信息
                    if (Detail.state == "Finishing")
                    {
                        FlightModel.AONowID = Detail.AONum;//现在的工位
                    }
                    if (Detail.state == "Finished")
                    {
                        FlightModel.FinishedNum++;//完工数量
                    }
                }
                StationFlights.Add(FlightModel);
            }
          
            
          /*XElement StationFlightsXML = XElement.Load();
          List<MODEL.StationFlight> StationFlights=new List<MODEL.StationFlight>();
          var Flights = from Fly in StationFlightsXML.Descendants("item")
                        where (Fly.Element("StationID").Value == StationID.ToString())
                        group Fly by Fly.Element("Flight") into g
                        select g;
          foreach (var item in Flights)
          {
              MODEL.StationFlight FlightModel=new MODEL.StationFlight();
              FlightModel.FinishedNum = 0;
              var FlightsDetail = from Fly in StationFlightsXML.Descendants("item")
                            where(Fly.Element("Flight").Value==item.Key.ToString())
                                  select new { StationID=Fly.Element("StationID").ToString(),
                                               Flight = Fly.Element("Flight").ToString(),
                                               Plane = Fly.Elements("Plane").ToString(),
                                               AONum = Fly.Elements("AONum").ToString(),
                                               state = Fly.Elements("state").ToString(),
                                               FR = Fly.Elements("FR").ToString()};
              
              foreach (var Detail in FlightsDetail)
              {
                  FlightModel.StationID=Convert.ToInt32(Detail.StationID);
                  FlightModel.Flight=Convert.ToInt32(Detail.Flight);
                  FlightModel.PlaneModel=Detail.Plane;
                  FlightModel.AOStation.Add(Detail.AONum);
                  FlightModel.FR.Add(bool.Parse(Detail.FR));
                  if (Detail.state == "Finishing")
                  {
                      FlightModel.AONowID = Detail.AONum;
                  }
                  if (Detail.state == "Finished")
                  {
                      FlightModel.FinishedNum++;
                  }
              }
              StationFlights.Add(FlightModel);
          }
           */

          return StationFlights;
        }
    }
}
