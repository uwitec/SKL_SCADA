using System;
using System.Data;
using DevExpress.Web.ASPxGridView;

namespace SKL_SCADA
{
    public partial class BatchRaw : System.Web.UI.Page
    {
        private DataTable supplierTable ;

        void InitSupTable()
        {
            DataTable supplierTable = new DataTable();
            supplierTable.Columns.Add("SupplierName");
            supplierTable.Columns.Add("STel");
            supplierTable.Columns.Add("SEmail");
            supplierTable.Columns.Add("SLinkman");
            supplierTable.Columns.Add("SFax");
            supplierTable.Columns.Add("SRemarks");
            Session["supplierTable"] = supplierTable;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitSupTable();


            }
            ASPxGridView3.DataSource = Session["supplierTable"] as DataTable;
            ASPxGridView3.DataBind();
        }
        /// <summary>
        /// 录入供应商的一条信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ASPxGridView3_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            supplierTable = (DataTable)Session["supplierTable"];
            DataRow dr = supplierTable.NewRow();
            dr["SupplierName"] = temp[0];
            dr["STel"] = temp[1];
            dr["SEmail"] = temp[2];
            dr["SLinkman"] = temp[3];
            dr["SFax"] = temp[4];
            dr["SRemarks"] = temp[5];
            supplierTable.Rows.Add(dr);
            Session["supplierTable"] = supplierTable;
            ASPxGridView3.DataSource = Session["supplierTable"] as DataTable;
            ASPxGridView3.DataBind();
        }
    }
}