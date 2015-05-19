using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class WorkGroupState
    {
        #region Model
        private int _GroupID;
        private string _ImageAdd;
        private string _Describe;
        private int _WorkShopID;
        private int _StationID;
        private int _PositionID;
        private int _TimeBuckets;
        


        /// <summary>
        /// 班组ID
        /// </summary>
        public int GroupID
        {
            set { _GroupID = value; }
            get { return _GroupID; }
        }
        /// <summary>
        /// 图片地址
        /// </summary>
        public string ImageAdd
        {
            set { _ImageAdd = value; }
            get { return _ImageAdd; }
        }
        /// <summary>
        /// 班组描述
        /// </summary>
        public string Describe
        {
            set { _Describe = value; }
            get { return _Describe; }
        }
        /// <summary>
        /// 车间ID
        /// </summary>
        public int WorkShopID
        {
            set { _WorkShopID = value; }
            get { return _WorkShopID; }
        }
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
        /// 班组班次int 1、2、3
        /// </summary>
        public int TimeBuckets
        {
            set { _TimeBuckets = value; }
            get { return _TimeBuckets; }
        }
        #endregion Model
    }
}
