using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODEL;

namespace SKL_SCADA
{
    public partial class BatchRaw : System.Web.UI.Page
    {
        DataTable supplierTable ;

//        public void BatchRaw()
//        {
//        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable supplierTable = new DataTable();
                supplierTable.Columns.Add("SupplierName");
                supplierTable.Columns.Add("STel");
                supplierTable.Columns.Add("SEmail");
                supplierTable.Columns.Add("SLinkman");
                supplierTable.Columns.Add("SFax");
                supplierTable.Columns.Add("SRemarks");
//                Session["supplierTable"] = supplierTable;
            }
        }

        /// <summary>
        /// 录入供应商的一条信息
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void ASPxCallback_Supplier_Callback(object source, DevExpress.Web.ASPxCallback.CallbackEventArgs e)
        {
            string[] temp = e.Parameter.Split('|');
//            supplierTable = Session["supplierTable"] as DataTable;
//            DataRow dr = supplierTable.NewRow();
//            dr["SupplierName"] = temp[0];
//            dr["STel"] = temp[1];
//            dr["SEmail"] = temp[2];
//            dr["SLinkman"] = temp[3];
//            dr["SFax"] = temp[4];
//            dr["SRemarks"] = temp[5];
//            supplierTable.Rows.Add(dr);
//            GridViewBind(supplierTable);
        }
        /// <summary>
        /// 动态绑定供应商表后台gridview
        /// </summary>
        /// <param name="supTable"></param>
        protected void GridViewBind(DataTable supTable)
        {
//            Session["supplierTable"] = supTable;
            
        }

        protected void ASPxGridView3_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
//            ASPxGridView3.DataSource = Session["supplierTable"] as DataTable;
//            ASPxGridView3.DataBind();
        }
    }
}