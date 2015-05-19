using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class MachineState
    {
        private readonly DAL.MachineState DALmachineState = new DAL.MachineState();
        public DataSet MachineStateDataSet=new DataSet();
        public MODEL.MachineState GetModel(int id)
        {
            return DALmachineState.GetModel(id);
        }
        public DataSet GetList(int id)
        {
            MachineStateDataSet.Tables.Add(DALmachineState.GetList(id));
            return MachineStateDataSet;
        }
    }
}
