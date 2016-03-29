using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 原材料信息
    /// </summary>
    public class RawMaterial
    {
        private int _rid;
        private string _rName;
        private string _rType;
        private string _rSpecification;
        private string _unit;
        private int _sid;
        private string _rRemarks;
        /// <summary>
        /// 原材料备注
        /// </summary>
        public string rRemarks
        {
            get { return _rRemarks; }
            set { _rRemarks = value; }
        }
        /// <summary>
        /// 供应商
        /// </summary>
        public int sid
        {
            get { return _sid; }
            set { _sid = value; }
        }
        /// <summary>
        /// 计量单位
        /// </summary>
        public string rUnit
        {
            get { return _unit; }
            set { _unit = value; }
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
        /// 具体名称
        /// </summary>
        public string rType
        {
            get { return _rType; }
            set { _rType = value; }
        }
        /// <summary>
        /// 原材料名称
        /// </summary>
        public string rName
        {
            get { return _rName; }
            set { _rName = value; }
        }
        /// <summary>
        /// 原材料ID
        /// </summary>
        public int rid
        {
          get { return _rid; }
          set { _rid = value; }
        }

    }
}
