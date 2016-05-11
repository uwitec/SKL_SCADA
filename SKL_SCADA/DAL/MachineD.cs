using System.Data;
using System.Data.SqlClient;
using System.Text;
using DBUtility;
using MODEL;

namespace DAL
{
    public static class MachineD
    {
        public static MODEL.MachineM GetMachine(string machineid)
        {
            int machineID = int.Parse(machineid);
            StringBuilder strSql = new StringBuilder();
            strSql.Clear();
            strSql.Append("select * from Machine where MachineID = @machineid");
            SqlParameter[] parameters = {
                new SqlParameter("@machineid",SqlDbType.Int)
            };
            parameters[0].Value = machineID;
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            MODEL.MachineM machineDetail = new MachineM();
            machineDetail.MachineId = int.Parse(ds.Tables[0].Rows[0][0].ToString());
            machineDetail.MachineName = ds.Tables[0].Rows[0][1].ToString();
            machineDetail.MRemarks = ds.Tables[0].Rows[0][2].ToString();
            return machineDetail;
        }
    }
}
