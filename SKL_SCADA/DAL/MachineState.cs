using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DBUtility;
using System.Data.SqlClient;
using System.Data;
using MODEL;


namespace DAL
{
    public class MachineState
    {
        #region  BasicMethod

        /// <summary>
        /// 得到最新对象实体
        /// </summary>
        public MODEL.MachineState GetModel(int MachineID)
        {
            //获取当前机器所拥有的状态变量对应的TagID
            DAL.TagMachine TagID = new TagMachine();
            MODEL.TagMachine TagIDModel = TagID.GetModel(MachineID);
            DataTable MachineStates = new DataTable();
             System.Type typeInt32 =System.Type.GetType("System.Int32");
             MachineStates.Columns.Add("MachineID", typeInt32);
             MachineStates.Columns.Add("RotateSpeed", typeInt32);
             MachineStates.Columns.Add("MachineFeed", typeInt32);
             MachineStates.Columns.Add("MachineRate", typeInt32);
             MachineStates.Columns.Add("XPosition", typeInt32);
             MachineStates.Columns.Add("YPosition", typeInt32);
             MachineStates.Columns.Add("ZPosition", typeInt32);
             MachineStates.Columns.Add("ProgramNumber", System.Type.GetType("System.String"));
             MachineStates.Columns.Add("MachineStateNow", System.Type.GetType("System.String"));
             MachineStates.Columns.Add("TimeStamp", System.Type.GetType("System.DateTime"));
             MachineStates.Rows.Add();
             //MachineStates.Rows.Add();
             MachineStates.Rows[0][0] = MachineID;
       
            int[] TagIDNum ={TagIDModel.TagRotateSpeed,TagIDModel.TagMachineFeed,
                               TagIDModel.TagMachineRate,TagIDModel.TagXPosition,
                               TagIDModel.TagYPosition,TagIDModel.TagZPosition,
                           TagIDModel.TagProgramNumber,TagIDModel.TagMachineState};
            for (int i = 0; i < 8; i++)
            {
                StringBuilder strSql = new StringBuilder();
                strSql.Append("select Value,InsertTime from Data Where DataID=( select  max( DataID) from Data ");
                strSql.Append(" where TagID=@id)");
                SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,5),
			     };
                parameters[0].Value = TagIDNum[i];
                DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
                MachineStates.Rows[0][i + 1] = ds.Tables[0].Rows[0][0];
                MachineStates.Rows[0][9] = ds.Tables[0].Rows[0][1];

            }
            //MachineStates.Rows[0][9] = (DateTime)MachineStates.Rows[1][1];
            return DataRowToModel(MachineStates.Rows[0]);

        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public MODEL.MachineState DataRowToModel(DataRow row)
        {
            MODEL.MachineState model = new MODEL.MachineState();
            if (row != null)
            {
                
                if (row[0] != null && row[0].ToString() != "")
                {
                    model.MachineID = int.Parse(row[0].ToString());
                }
                if (row[1] != null)
                {
                    model.RotateSpeed = (int)row[1];
                }
                if (row[2] != null)
                {
                    model.MachineFeed = (int)row[2];
                }
                if (row[3] != null)
                {
                    model.MachineRate = (int)row[3];
                }
                if (row[4] != null)
                {
                    model.XPosition = (int)row[4];
                }
                if (row[5] != null)
                {
                    model.YPosition = (int)row[5];
                }
                if (row[6] != null)
                {
                    model.ZPosition = (int)row[6];
                }
                if (row[7] != null)
                {
                    model.ProgramNumber = (string)row[7];
                }
                if (row[8] != null)
                {
                    model.MachineStateNow = (string)row[8];
                }
                    if (row[9] != null)
                {
                    model.TimeStamp = (DateTime)row[9];
                }
            }
            return model;
        }

        /// <summary>
        /// 获得全部数据
        /// </summary>
        public DataTable GetList(int MachineID)
        {
            DateTime SpeedTime=System.DateTime.Now;//spped 获取的时间
            //get TagID
            DAL.TagMachine TagID = new TagMachine();
            MODEL.TagMachine TagIDModel = TagID.GetModel(MachineID);

            DataTable MachineStates = new DataTable();
            System.Type typeInt32 = System.Type.GetType("System.Int32");
            MachineStates.Columns.Add("MachineID", typeInt32);
            MachineStates.Columns.Add("RotateSpeed", typeInt32);
            MachineStates.Columns.Add("MachineFeed", typeInt32);
            MachineStates.Columns.Add("MachineRate", typeInt32);
            MachineStates.Columns.Add("XPosition", typeInt32);
            MachineStates.Columns.Add("YPosition", typeInt32);
            MachineStates.Columns.Add("ZPosition", typeInt32);
            MachineStates.Columns.Add("ProgramNumber", System.Type.GetType("System.String"));
            MachineStates.Columns.Add("MachineState", System.Type.GetType("System.String"));
            MachineStates.Columns.Add("TimeStamp", System.Type.GetType("System.DateTime"));
            MachineStates.Rows.Add();
            //MachineStates.Rows.Add();
            //MachineStates.Rows[0][0] = MachineID;

            int[] TagIDNum ={TagIDModel.TagRotateSpeed,TagIDModel.TagMachineFeed,
                               TagIDModel.TagMachineRate,TagIDModel.TagXPosition,
                               TagIDModel.TagYPosition,TagIDModel.TagZPosition,
                           TagIDModel.TagProgramNumber,TagIDModel.TagMachineState};
           
            //get all data
                StringBuilder strSql = new StringBuilder();
                strSql.Append("select * from Data Where TagID=@id1 or TagID=@id2  or TagID=@id3  or TagID=@id4  or TagID=@id5 or TagID=@id6  or TagID=@id7  or TagID=@id8  ");
                SqlParameter[] parameters = {
					new SqlParameter("@id1", SqlDbType.Int,5),
					new SqlParameter("@id2", SqlDbType.Int,5),
					new SqlParameter("@id3", SqlDbType.Int,5),
					new SqlParameter("@id4", SqlDbType.Int,5),
					new SqlParameter("@id5", SqlDbType.Int,5),
					new SqlParameter("@id6", SqlDbType.Int,5),
					new SqlParameter("@id7", SqlDbType.Int,5),
					new SqlParameter("@id8", SqlDbType.Int,5),
			     };
            int ik=0;
            foreach(int u in TagIDNum)
            {
                parameters[ik].Value = u;
                ik++;
            }
            DataSet DataAll = DbHelperSQL.Query(strSql.ToString(), parameters);
            int counter=DataAll.Tables[0].Rows.Count;
             int StateCounter=0;//MachineStates counter
            while(counter>0)
            {
                MachineStates.Rows.Add();
                for (int i = 0; i < 8; i++)
               {
                    counter--;
                    DataRow[] TagRow =DataAll.Tables[0].Select("TagID='" + TagIDNum[i] + "'");
                    int MaxLong=TagRow.Length-1;
                    if (i==0)
                    {
                        MachineStates.Rows[StateCounter][9] = TagRow[MaxLong][4]; //timestamp
                        MachineStates.Rows[StateCounter][i + 1] = TagRow[MaxLong][3];//RotateSpeed value
                        SpeedTime = (DateTime)TagRow[MaxLong][4];
                        DataAll.Tables[0].Rows.Remove(TagRow[MaxLong]);
                    }
                    else if(i == 7)
                    {
                        int j = MaxLong;
                        DateTime StateTime = (DateTime)TagRow[j][4];
                        try
                        {
                            while (SpeedTime <= StateTime)
                            {
                                MachineStates.Rows[StateCounter][i + 1] = TagRow[j][3];
                                StateTime = (DateTime)TagRow[j][4];
                                j--;
                            }
                        }
                        catch (Exception)
                        {
                            
                        }
                    }
                    else 
                    {
                        MachineStates.Rows[StateCounter][i + 1] = TagRow[MaxLong][3];//value
                        DataAll.Tables[0].Rows.Remove(TagRow[MaxLong]);
                    }
                    
                     MachineStates.Rows[StateCounter][0] = MachineID; //timestamp
              }    

                StateCounter++;
            }
            //rebuild data
            return MachineStates;
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" id,name,password,voicequery,question,answer,realname,sex,birthday,countries,certificate,number,telephone,fixedx,email,address,postcode,passengers ");
            strSql.Append(" FROM UserInfo ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }
        #endregion  BasicMethod
    }
}
 