using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using DBUtility;

namespace DAL
{
    public class BatchRawD
    {
        /// <summary>
        /// 供应商表插入数据库
        /// </summary>
        /// <param name="supTable">供应商表</param>
        public bool FillSupTable(DataTable supTable)
        {
            for (int i = 0; i < supTable.Rows.Count; i++)
            {
                StringBuilder strSql = new StringBuilder();
                strSql.Append("insert into [Supplier]");
                strSql.Append("(SupplierName,STel,SEmail,SLinkman,SFax,SRemarks)");
                strSql.Append("values(");
                string tempStr = "";
                for (int j = 0; j < supTable.Columns.Count-1; j++)
                {
                    tempStr += ("\'" + supTable.Rows[i][j].ToString() + "\',");
                }
                strSql.Append(tempStr.Substring(0, tempStr.Length - 1));
                strSql.Append(")");
                int insertOk = DbHelperSQL.ExecuteSql(strSql.ToString());
                if (insertOk != 1)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
