using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 产品
    /// </summary>
    public class Product
    {
        private int _pid;
        private string _pName;
        private string _pSpecification;
        private int _ppid;
        private string _pRemarks;
                
        /// <summary>
        /// 产品备注
        /// </summary>
        public string pRemarks
        {
            get { return _pRemarks; }
            set { _pRemarks = value; }
        }
        /// <summary>
        /// 产品工艺
        /// </summary>
        public int ppid
        {
            get { return _ppid; }
            set { _ppid = value; }
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
        public string pName
        {
            get { return _pName; }
            set { _pName = value; }
        }

        /// <summary>
        /// 产品ID
        /// </summary>
        public int pid
        {
            get { return _pid; }
            set { _pid = value; }
        }

    }
}
