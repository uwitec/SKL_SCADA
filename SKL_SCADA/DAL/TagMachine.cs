using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DBUtility;
using MODEL;

namespace DAL
{
    class TagMachine
    {
        //存储状态变量
        public readonly string[] parameter = { "RotateSpeed", "MachineFeed", "MachineRate", "XPosition", 
                                     "YPosition", "ZPosition", "ProgramNumber", "MachineState" };
        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public MODEL.TagMachine GetModel(int MachineID)
        {
        
            MODEL.TagMachine model = new MODEL.TagMachine();
            int[] TagMachineID=new int[9];
            TagMachineID[0] = MachineID;
            /// <summary>
            /// 获取RotateSpeed所对应的TagID
            /// </summary>
             
            for(int i=0;i<8;i++)
            {
                StringBuilder strSql = new StringBuilder();
                strSql.Append("select  TagID from Tag ");
                strSql.Append(" where Equipment=@id and Description=@para");
                SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50),
                    new SqlParameter("@para", SqlDbType.NVarChar,50)
			     };
                parameters[0].Value = MachineID;
                parameters[1].Value = parameter[i];
                DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
                TagMachineID[i+1] =Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }

            if (TagMachineID.Length > 1)
            {
                return DataRowToModel(TagMachineID);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public MODEL.TagMachine DataRowToModel(int[] row)
        {
            MODEL.TagMachine model = new MODEL.TagMachine();
            if (row != null)
            {
                if (row[0] != null && row[0].ToString() != "")
                {
                    model.TagMachineID = (int)row[0];
                }
                if (row[1] != null)
                {
                    model.TagRotateSpeed = (int)row[1];
                }
                if (row[2] != null)
                {
                    model.TagMachineFeed = (int)row[2];
                }
                if (row[3] != null)
                {
                    model.TagMachineRate = (int)row[3];
                }
                if (row[4] != null)
                {
                    model.TagXPosition = (int)row[4];
                }
                if (row[5] != null)
                {
                    model.TagYPosition = (int)row[5];
                }
                if (row[6] != null)
                {
                    model.TagZPosition = (int)row[6];
                }
                if (row[7] != null)
                {
                    model.TagProgramNumber = (int)row[7];
                }
                if (row[8] != null)
                {
                    model.TagMachineState = (int)row[8];
                }
                
               
            }
            return model;
        }
    }
}
