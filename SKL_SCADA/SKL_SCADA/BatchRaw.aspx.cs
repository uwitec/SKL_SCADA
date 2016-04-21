using System;
using System.Data;

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
            supplierTable.Columns.Add("SupID");
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
            if (temp[6] == "add")
            {
                DataTable supplierTable = (DataTable)Session["supplierTable"];
                DataRow dr = supplierTable.NewRow();
                dr["SupplierName"] = temp[0];
                dr["STel"] = temp[1];
                dr["SEmail"] = temp[2];
                dr["SLinkman"] = temp[3];
                dr["SFax"] = temp[4];
                dr["SRemarks"] = temp[5];
                dr["SupID"] = DateTime.Now.ToString();
                supplierTable.Rows.Add(dr);
                Session["supplierTable"] = supplierTable;
            }
            else if(temp[6] == "drop")
            {
                bool fillok = BLL.BatchRawB.FillSupTableOK((DataTable)Session["supplierTable"]);
                if (!fillok)
                {
//                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
//                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["supplierTable"] = null;
            }
            ASPxGridView3.DataSource = (DataTable) Session["supplierTable"];
            ASPxGridView3.DataBind();
        }
        
        protected void ASPxGridView3_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView3.FocusedRowIndex;
            supplierTable = (DataTable)Session["supplierTable"];
            supplierTable.Rows.RemoveAt(ri);
            Session["supplierTable"] = supplierTable;
            ASPxGridView3.DataSource = (DataTable) Session["supplierTable"];
            ASPxGridView3.DataBind();
            e.Cancel = true;
        }

        protected void ASPxGridView3_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            int ri = ASPxGridView3.FocusedRowIndex;
            supplierTable = (DataTable)Session["supplierTable"];
            for (int i = 0; i < 6; i++)
            {
                supplierTable.Rows[ri][i] = e.NewValues[i].ToString();
            }
            Session["supplierTable"] = supplierTable;
            ASPxGridView3.DataSource = (DataTable) Session["supplierTable"];
            ASPxGridView3.DataBind();
            ASPxGridView3.CancelEdit();
            e.Cancel = true;
        }

    }
}