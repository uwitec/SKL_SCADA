using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 原材料批次信息
    /// </summary>
    public class BatchRaw
    {
        private int _brid;
        private string _bRNumber;
        private int _rid;
        private string _rSpecification;
        private float _quantity;
        private DateTime _approachTime;
        private string _bRRemarks;
        
        /// <summary>
        /// 原材料批次信息备注
        /// </summary>
        public string bRRemarks
        {
            get { return _bRRemarks; }
            set { _bRRemarks = value; }
        }

        /// <summary>
        /// 原材料批次数量
        /// </summary>
        public float quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
        /// <summary>
        /// 原材料规格
        /// </summary>
        public string rSpecification
        {
            get { return _rSpecification; }
            set { _rSpecification = value; }
        }

        /// <summary>
        /// 原材料
        /// </summary>
        public int rid
        {
            get { return _rid; }
            set { _rid = value; }
        }

        /// <summary>
        /// BRNumber
        /// </summary>
        public string bRNumber
        {
            get { return _bRNumber; }
            set { _bRNumber = value; }
        }

        /// <summary>
        /// 原材料批次ID
        /// </summary>
        public int brid
        {
            get { return _brid; }
            set { _brid = value; }
        }
        /// <summary>
        /// 到达时间
        /// </summary>
        public DateTime ApproachTime
        {
            get { return _approachTime; }
            set { _approachTime = value; }
        }
    }
}
