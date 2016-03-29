using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 供应商
    /// </summary>
    public class Supplier
    {
        private int _sid;
        private string _supplierName;
        private string _sTel;
        private string _sEmail;
        private string _sLinkman;
        private string _sFax;
        private string _sRmarks;
        /// <summary>
        /// 供应商ID
        /// </summary>
        public int sid
        {
            get { return _sid; }
            set { _sid = value; }
        }
        /// <summary>
        /// 供应商名称
        /// </summary>
        public string supplierName
        {
            get { return _supplierName; }
            set { _supplierName = value; }
        }
        /// <summary>
        /// 供应商电话
        /// </summary>
        public string sTel
        {
            get { return _sTel; }
            set { _sTel = value; }
        }
        /// <summary>
        /// 供应商Email
        /// </summary>
        public string sEmail
        {
            get { return _sEmail; }
            set { _sEmail = value; }
        }
        /// <summary>
        /// 供应商联系人
        /// </summary>
        public string sLinkman
        {
            get { return _sLinkman; }
            set { _sLinkman = value; }
        }
        /// <summary>
        /// 供应商传真
        /// </summary>
        public string sFax
        {
            get { return _sFax; }
            set { _sFax = value; }
        }
        /// <summary>
        /// 供应商备注
        /// </summary>
        public string sRmarks
        {
            get { return _sRmarks; }
            set { _sRmarks = value; }
        }

    }
}
