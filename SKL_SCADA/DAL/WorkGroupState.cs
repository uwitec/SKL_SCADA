using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DBUtility;

namespace DAL
{
    public class WorkGroupState
    {

        /// <summary>
        /// 得到一个工位的所有对象实体
        /// </summary>
        public List<object> GetModelStation(int PositionID)
        {
            List<object> WorkGroupStatePosition=new List<object>();
            //获取当前站位对应的班组
                StringBuilder strSql = new StringBuilder();
                strSql.Append("select * from WorkGroup Where StationID=@id");
                SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,5),
			     };
                parameters[0].Value = PositionID;
                DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    WorkGroupStatePosition.Add(DataRowToModel(ds.Tables[0].Rows[i]));
                }
                return WorkGroupStatePosition;
        }
        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public MODEL.WorkGroupState DataRowToModel(DataRow row)
        {
            MODEL.WorkGroupState model = new MODEL.WorkGroupState();
            if (row != null)
            {

                if (row[0] != null && row[0].ToString() != "")
                {
                    model.GroupID = (int)row[0];
                }
                if (row[1] != null && row[1].ToString() != "")
                {
                    model.ImageAdd = (string)row[1];
                }
                if (row[2] != null && row[2].ToString() != "")
                {
                    model.Describe = (string)row[2];
                }
                if (row[3] != null && row[3].ToString() != "")
                {
                    model.WorkShopID = (int)row[3];
                }
                if (row[4] != null && row[4].ToString() != "")
                {
                    model.StationID = (int)row[4];
                }
                if (row[5] != null && row[5].ToString() != "")
                {
                    model.PositionID = (int)row[5];
                }
                if (row[6] != null && row[6].ToString() != "")
                {
                    model.TimeBuckets = (int)row[6];
                }
            }
            return model;
        }
        /// <summary>
        /// 新增一条记录
        /// </summary>
        public int Add(MODEL.WorkGroupState model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into WorkGroup(");
            strSql.Append("ImageAdd,Describe,WorkShopID,StationID)");
            strSql.Append(" values (");
            strSql.Append("@ImageAdd,@Describe,@WorkShopID,@StationID)");
            SqlParameter[] parameters = {
					new SqlParameter("@ImageAdd", SqlDbType.VarChar,50),
					new SqlParameter("@Describe", SqlDbType.VarChar,50),
					new SqlParameter("@WorkShopID", SqlDbType.VarChar,50),
					new SqlParameter("@StationID", SqlDbType.VarChar,50),};					;
            parameters[0].Value = model.ImageAdd;
            parameters[1].Value = model.Describe;
            parameters[2].Value = model.WorkShopID;
            parameters[3].Value = model.StationID;
            
            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
      
        }
        /// <summary>
        /// 更新一条记录
        /// </summary>
        public int Update(MODEL.WorkGroupState model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update WorkGroup set ");
            strSql.Append("ImageAdd=@ImageAdd,");
            strSql.Append("Describe=@Describe,");
            strSql.Append("WorkShopID=@WorkShopID,");
            strSql.Append("StationID=@StationID ");
            strSql.Append("where GroupID=@GroupID");


            SqlParameter[] parameters = {
					new SqlParameter("@ImageAdd", SqlDbType.VarChar,500),
					new SqlParameter("@Describe", SqlDbType.VarChar,1000),
					new SqlParameter("@WorkShopID", SqlDbType.Int,50),
					new SqlParameter("@StationID", SqlDbType.Int,50),
					new SqlParameter("@GroupID", SqlDbType.Int,50),}; 
            parameters[0].Value = model.ImageAdd;
            parameters[1].Value = model.Describe;
            parameters[2].Value = model.WorkShopID;
            parameters[3].Value = model.StationID;
            parameters[4].Value = model.GroupID;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }

        }

    }
}
