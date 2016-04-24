using System.Data;
using System.Text;
using DBUtility;

namespace DAL
{
    public static class FillUtilityD
    {
        public static bool FillDataTable(DataTable fillDataTable, string insertStr)
        {
            for (int i = 0; i < fillDataTable.Rows.Count; i++)
            {
                StringBuilder strSql = new StringBuilder();
                strSql.Append(insertStr);
                string tempStr = "";
                for (int j = 0; j < fillDataTable.Columns.Count - 1; j++)
                {
                    tempStr += ("\'" + fillDataTable.Rows[i][j].ToString() + "\',");
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
