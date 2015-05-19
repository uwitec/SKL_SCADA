using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class MachineState
    {

        #region Model
        private int _MachineID;
        private float _RotateSpeed;
        private float _MachineFeed;
        private float _MachineRate;
        private float _XPosition;
        private float _YPosition;
        private float _ZPosition;
        private string _ProgramNumber;
        private string _MachineState;
        private DateTime _TimeStamp;


        /// <summary>
        /// 机床ID
        /// </summary>
        public int MachineID
        {
            set { _MachineID = value; }
            get { return _MachineID; }
        }
        /// <summary>
        /// 机床转速
        /// </summary>
        public float RotateSpeed
        {
            set { _RotateSpeed = value; }
            get { return _RotateSpeed; }
        }
        /// <summary>
        /// 机床进给量
        /// </summary>
        public float MachineFeed
        {
            set { _MachineFeed = value; }
            get { return _MachineFeed; }
        }
        /// <summary>
        /// 机床倍率
        /// </summary>
        public float MachineRate
        {
            set { _MachineRate = value; }
            get { return _MachineRate; }
        }
        /// <summary>
        /// 机床主轴X轴位置
        /// </summary>
        public float XPosition
        {
            set { _XPosition = value; }
            get { return _XPosition; }
        }
        /// <summary>
        /// 机床主轴Y位置
        /// </summary>
        public float YPosition
        {
            set { _YPosition = value; }
            get { return _YPosition; }
        }
        /// <summary>
        /// 机床主轴Z位置
        /// </summary>
        public float ZPosition
        {
            set { _ZPosition = value; }
            get { return _ZPosition; }
        }
        /// <summary>
        /// 机床程序号
        /// </summary>
        public string ProgramNumber
        {
            set { _ProgramNumber = value; }
            get { return _ProgramNumber; }
        }
        /// <summary>
        /// 机床状态
        /// </summary>
        public string MachineStateNow
        {
            set { _MachineState = value; }
            get { return _MachineState; }
        }/// <summary>
        /// 记录时间戳
        /// </summary>
        public DateTime TimeStamp
        {
            set { _TimeStamp = value; }
            get { return _TimeStamp; }
        }
        #endregion Model
    }
}
