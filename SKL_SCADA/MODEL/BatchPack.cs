using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 包装批次信息
    /// </summary>
    public class BatchPack
    {
        private int _bpid;
        private string _bPName;
        private int _pid;
        private string _pSpecification;
        private string _packSpec;
        private float _PackQuantity;
        private DateTime _packStartTime;
        private DateTime _packEndTime;
        private string _packRemarks;
        
        /// <summary>
        /// 备注
        /// </summary>
        public string packRemarks
        {
            get { return _packRemarks; }
            set { _packRemarks = value; }
        }

        /// <summary>
        /// 批次结束时间
        /// </summary>
        public DateTime packEndTime
        {
            get { return _packEndTime; }
            set { _packEndTime = value; }
        }
        
        /// <summary>
        /// 批次开始时间
        /// </summary>
        public DateTime packStartTime
        {
            get { return _packStartTime; }
            set { _packStartTime = value; }
        }
        
        /// <summary>
        /// 批次数量
        /// </summary>
        public float packQuantity
        {
          get { return _PackQuantity; }
          set { _PackQuantity = value; }
        }
        
        /// <summary>
        /// 包装规格
        /// </summary>
        public string packSpec
        {
          get { return _packSpec; }
          set { _packSpec = value; }
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
        /// 包装批次号
        /// </summary>
        public string bPName
        {
            get { return _bPName; }
            set { _bPName = value; }
        }
        /// <summary>
        /// 包装批次ID
        /// </summary>
        public int bpid
        {
            get { return _bpid; }
            set { _bpid = value; }
        }
    }
}
