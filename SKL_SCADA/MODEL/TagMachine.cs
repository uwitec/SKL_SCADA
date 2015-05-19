using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class TagMachine
    {
        #region Model
        private int _MachineID;
        private int _RotateSpeed;
        private int _MachineFeed;
        private int _MachineRate;
        private int _XPosition;
        private int _YPosition;
        private int _ZPosition;
        private int _ProgramNumber;
        private int _MachineState;


        /// <summary>
        /// 机床ID
        /// </summary>
        public int TagMachineID
        {
            set { _MachineID = value; }
            get { return _MachineID; }
        }
        /// <summary>
        /// 机床转速对应的TagID
        /// </summary>
        public int TagRotateSpeed
        {
            set { _RotateSpeed = value; }
            get { return _RotateSpeed; }
        }
        /// <summary>
        /// 机床进给量对应的TagID
        /// </summary>
        public int TagMachineFeed
        {
            set { _MachineFeed = value; }
            get { return _MachineFeed; }
        }
        /// <summary>
        /// 机床倍率对应的TagID
        /// </summary>
        public int TagMachineRate
        {
            set { _MachineRate = value; }
            get { return _MachineRate; }
        }
        /// <summary>
        /// 机床主轴X轴位置对应的TagID
        /// </summary>
        public int TagXPosition
        {
            set { _XPosition = value; }
            get { return _XPosition; }
        }
        /// <summary>
        /// 机床主轴Y位置对应的TagID
        /// </summary>
        public int TagYPosition
        {
            set { _YPosition = value; }
            get { return _YPosition; }
        }
        /// <summary>
        /// 机床主轴Z位置对应的TagID
        /// </summary>
        public int TagZPosition
        {
            set { _ZPosition = value; }
            get { return _ZPosition; }
        }
        /// <summary>
        /// 机床程序号对应的TagID
        /// </summary>
        public int TagProgramNumber
        {
            set { _ProgramNumber = value; }
            get { return _ProgramNumber; }
        }
        /// <summary>
        /// 机床状态对应的TagID
        /// </summary>
        public int TagMachineState
        {
            set { _MachineState = value; }
            get { return _MachineState; }
        }
        

        #endregion Model
    }
}
