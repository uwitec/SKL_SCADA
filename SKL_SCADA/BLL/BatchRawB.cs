using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public static class BatchRawB
    {
        public static bool FillSupTableOK(DataTable supTable)
        {
            DAL.BatchRawD br = new BatchRawD();
            bool isok = br.FillSupTable(supTable);
            return isok;
        }
    }
}
