using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public static class MachineB
    {
        public static MODEL.MachineM GetMachine(string machineid)
        {
            MODEL.MachineM machineDetail = DAL.MachineD.GetMachine(machineid);
            return machineDetail;
        }
    }
}
