using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class MachineM
    {
        private int _machineID;

        public int MachineId
        {
            get { return _machineID; }
            set { _machineID = value; }
        }

        public string MachineName
        {
            get { return _machineName; }
            set { _machineName = value; }
        }

        public string MRemarks
        {
            get { return _mRemarks; }
            set { _mRemarks = value; }
        }

        private string _machineName;
        private string _mRemarks;
    }
}
