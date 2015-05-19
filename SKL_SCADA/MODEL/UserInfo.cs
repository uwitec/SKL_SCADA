using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// UserInfo:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class UserInfo
    {
        public UserInfo()
        { }
        #region Model
        private int _id;
        private string _name;
        private string _password;
        private string _voicequery;
        private string _question;
        private string _answer;
        private string _realname;
        private string _sex;
        private string _birthday;
        private string _countries;
        private string _certificate;
        private string _number;
        private string _telephone;
        private string _fixedx;
        private string _email;
        private string _address;
        private string _postcode;
        private string _passengers;
        /// <summary>
        /// 用户ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 用户名
        /// </summary>
        public string name
        {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 密码
        /// </summary>
        public string password
        {
            set { _password = value; }
            get { return _password; }
        }
        /// <summary>
        /// 语音密码
        /// </summary>
        public string voicequery
        {
            set { _voicequery = value; }
            get { return _voicequery; }
        }
        /// <summary>
        /// 提示问题
        /// </summary>
        public string question
        {
            set { _question = value; }
            get { return _question; }
        }
        /// <summary>
        /// 提示答案
        /// </summary>
        public string answer
        {
            set { _answer = value; }
            get { return _answer; }
        }
        /// <summary>
        /// 真实姓名
        /// </summary>
        public string realname
        {
            set { _realname = value; }
            get { return _realname; }
        }
        /// <summary>
        /// 性别
        /// </summary>
        public string sex
        {
            set { _sex = value; }
            get { return _sex; }
        }
        /// <summary>
        /// 出生日期
        /// </summary>
        public string birthday
        {
            set { _birthday = value; }
            get { return _birthday; }
        }
        /// <summary>
        /// 国家
        /// </summary>
        public string countries
        {
            set { _countries = value; }
            get { return _countries; }
        }
        /// <summary>
        /// 证件类型
        /// </summary>
        public string certificate
        {
            set { _certificate = value; }
            get { return _certificate; }
        }
        /// <summary>
        /// 证件号码
        /// </summary>
        public string number
        {
            set { _number = value; }
            get { return _number; }
        }
        /// <summary>
        /// 手机号码
        /// </summary>
        public string telephone
        {
            set { _telephone = value; }
            get { return _telephone; }
        }
        /// <summary>
        /// 固定电话
        /// </summary>
        public string fixedx
        {
            set { _fixedx = value; }
            get { return _fixedx; }
        }
        /// <summary>
        /// 电子邮件
        /// </summary>
        public string email
        {
            set { _email = value; }
            get { return _email; }
        }
        /// <summary>
        /// 地址
        /// </summary>
        public string address
        {
            set { _address = value; }
            get { return _address; }
        }
        /// <summary>
        /// 邮编
        /// </summary>
        public string postcode
        {
            set { _postcode = value; }
            get { return _postcode; }
        }
        /// <summary>
        /// 旅客类型
        /// </summary>
        public string passengers
        {
            set { _passengers = value; }
            get { return _passengers; }
        }
        #endregion Model
    }
}
