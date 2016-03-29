using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 产品工艺与原材料关系
    /// </summary>
    public class ProcessMaterial
    {
        private int _ppid;
        private int _rid;
        
        /// <summary>
        /// 原材料ID
        /// </summary>
        public int rid
        {
            get { return _rid; }
            set { _rid = value; }
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
