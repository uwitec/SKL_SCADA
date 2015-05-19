using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class StationFlight
    {
        #region Model
        private int _StationID;
        private int _PositionID;//留着为区分站位做准备
        private int _Flight;//架次
        private string _PlaneModel;//机型
        private List<string> _AOStation=new List<string>();//该架次当前在此工位中所有AO
        private string _AONowID;//正在进行的AO ID号确定AO在AOStation中的位置
        private List<bool> _FR = new List<bool>();//每个AO的FR情况
        private int _FinishedNum;


        /// <summary>
        /// 工位ID  
        /// </summary>
        public int StationID
        {
            set { _StationID = value; }
            get { return _StationID; }
        }
        /// <summary>
        /// 站位ID
        /// </summary>
        public int PositionID
        {
            set { _PositionID = value; }
            get { return _PositionID; }
        }
        /// <summary>
        /// 架次
        /// </summary>
        public int Flight
        {
            set { _Flight = value; }
            get { return _Flight; }
        }
        /// <summary>
        /// 机型
        /// </summary>
        public string PlaneModel
        {
            set { _PlaneModel = value; }
            get { return _PlaneModel; }
        }
        /// <summary>
        /// 该架次对应次工位的AO集合
        /// </summary>
        public List<string> AOStation
        {
            set { _AOStation = value; }
            get { return _AOStation; }
        }
        /// <summary>
        /// 当前AO的ID号
        /// </summary>
        public string AONowID
        {
            set { _AONowID = value; }
            get { return _AONowID; }
        }
        /// <summary>
        /// 开了FR的AO号集合
        /// </summary>
        public List<bool> FR
        {
            set { _FR = value; }
            get { return _FR; }
        }
        
        /// <summary>
        /// 已完成工序数量
        /// </summary>
        public int FinishedNum
        {
            set { _FinishedNum = value; }
            get { return _FinishedNum; }
        }
        #endregion Model
    }
}
