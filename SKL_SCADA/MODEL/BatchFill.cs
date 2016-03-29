using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 灌装批次信息表设计
    /// </summary>
    public class BatchFill
    {
        private int _bfid;
        private int _pid;
        private string _pSpecification;
        private float _fQuantity;
        private DateTime _fStartTime;
        private DateTime _fEndTime;
        private string _bFRemarks;
        
        /// <summary>
        /// 备注
        /// </summary>
        public string bFRemarks
        {
            get { return _bFRemarks; }
            set { _bFRemarks = value; }
        }

        /// <summary>
        /// 批次结束时间
        /// </summary>
        public DateTime fEndTime
        {
            get { return _fEndTime; }
            set { _fEndTime = value; }
        }
        /// <summary>
        /// 批次开始时间
        /// </summary>
        public DateTime fFStartTime
        {
            get { return _fStartTime; }
            set { _fStartTime = value; }
        }

        /// <summary>
        /// 灌装批次数量
        /// </summary>
        public float fQuantity
        {
            get { return _fQuantity; }
            set { _fQuantity = value; }
        }

        /// <summary>
        /// 产品规格
        /// </summary>
        public string pSpecification
        {
            get { return _pSpecification; }
            set { _pSpecification = value; }
        }

        /// <summary>
        /// 产品名称
        /// </summary>
        public int pid
        {
            get { return _pid; }
            set { _pid = value; }
        }
        /// <summary>
        /// 灌装批次ID
        /// </summary>
        public int bfid
        {
            get { return _bfid; }
            set { _bfid = value; }
        }
    }
}
