using System.Data;

namespace BLL
{
    public static class FillUtilityB
    {
        public static bool FillTableOk(DataTable supTable, string insertStr)
        {
            bool isok = DAL.FillUtilityD.FillDataTable(supTable, insertStr);
            return isok;
        }
    }
}
