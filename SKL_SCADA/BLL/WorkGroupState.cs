using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class WorkGroupState
    {
        public int count;
        public WorkGroupState()
        {
            count = 0;
        }

        public List<object> GetModelStation(int PositionID)
        {
            DAL.WorkGroupState WorkGroup=new DAL.WorkGroupState();
            return WorkGroup.GetModelStation(PositionID);
        }
        public void insertGroup(MODEL.WorkGroupState model)
        {
            DAL.WorkGroupState WorkGroup = new DAL.WorkGroupState();
            WorkGroup.Add(model);
        }
        public void updateGroup(MODEL.WorkGroupState model)
        {
            DAL.WorkGroupState WorkGroup = new DAL.WorkGroupState();
            WorkGroup.Update(model);
        }
    }
}
