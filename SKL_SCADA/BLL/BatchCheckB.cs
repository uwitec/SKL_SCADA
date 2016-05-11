using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class BatchCheckB
    {
        #region Supplier
        public static DataTable GetAllSupplier()
        {
            return DAL.BatchCheckD.GetAllData("Select * from Supplier");
        }
        public static bool DeleteSupplierItem(int SID)
        {
            return DAL.BatchCheckD.DeleteItem("update Supplier set SRemarks = '已删除' where SID = ", SID);
        }
        #endregion
        #region RawMaterial
        public static DataTable GetAllRawMaterial()
        {
            return DAL.BatchCheckD.GetAllData("Select * from RawMaterial");
        }
        public static bool DeleteRawMaterialItem(int RID)
        {
            return DAL.BatchCheckD.DeleteItem("update RawMaterial set RRemarks = '已删除' where RID = ", RID);
        }
        #endregion
        #region BatchRaw
        public static DataTable GetAllBatchRaw()
        {
            return DAL.BatchCheckD.GetAllData("Select * from BatchRaw");
        }
        public static bool DeleteBatchRawItem(int BRID)
        {
            return DAL.BatchCheckD.DeleteItem("update BatchRaw set BRRemarks = '已删除' where BRID = ", BRID);
        }
        #endregion

    }
}
