using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using DBUtility;

namespace DAL
{
    public static class BatchCheckD
    {
        public static DataTable GetAllData(string strSelect)
        {
            return DbHelperSQL.Query(strSelect).Tables[0];
        }

        public static bool DeleteItem(string strUpdate, int itemID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(strUpdate);
            strSql.Append("@id");
            SqlParameter[] parameters = { new SqlParameter("@id",SqlDbType.Int)};
            parameters[0].Value = itemID;
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
            return rows > 0 ? true : false;
        }
    }
}
