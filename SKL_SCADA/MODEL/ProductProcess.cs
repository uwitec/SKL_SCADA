using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 产品工艺
    /// </summary>
    public class ProductProcess
    {
        private int _ppid;
        private string _prodProcess;
        private string _pPRemarks;
        
        /// <summary>
        /// 备注
        /// </summary>
        public string pPRemarks
        {
            get { return _pPRemarks; }
            set { _pPRemarks = value; }
        }

        /// <summary>
        /// 工艺名称
        /// </summary>
        public string prodProcess
        {
            get { return _prodProcess; }
            set { _prodProcess = value; }
        }

        /// <summary>
        /// 工艺ID 
        /// </summary>
        public int ppid
        {
            get { return _ppid; }
            set { _ppid = value; }
        }
    }
}
