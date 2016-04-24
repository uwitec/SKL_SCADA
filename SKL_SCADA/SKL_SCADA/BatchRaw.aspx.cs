using System;
using System.Data;

namespace SKL_SCADA
{
    public partial class BatchRaw : System.Web.UI.Page
    {
        private DataTable supplierTable;
        private DataTable rawTable;
        private DataTable batchRawTable;
        #region Init Function
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
        void InitRawTable()
        {
            DataTable rawTable = new DataTable();
            rawTable.Columns.Add("RName");
            rawTable.Columns.Add("RType");
            rawTable.Columns.Add("RSpecification");
            rawTable.Columns.Add("Unit");
            rawTable.Columns.Add("SID");
            rawTable.Columns.Add("RRemarks");
            rawTable.Columns.Add("RawID");
            Session["RawTable"] = rawTable;
        }
        void InitBatchRawTable()
        {
            DataTable batchRawTable = new DataTable();
            batchRawTable.Columns.Add("BRNumber");
            batchRawTable.Columns.Add("RID");
            batchRawTable.Columns.Add("RSpecification");
            batchRawTable.Columns.Add("Quantity");
            batchRawTable.Columns.Add("ApproachTime");
            batchRawTable.Columns.Add("BRRemarks");
            batchRawTable.Columns.Add("BRID");
            Session["BatchRawTable"] = batchRawTable;
        }
        #endregion
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitSupTable();
                InitRawTable();
                InitBatchRawTable();
            }
            ASPxGridView1.DataSource = Session["BatchRawTable"] as DataTable;
            ASPxGridView1.DataBind();
            ASPxGridView2.DataSource = Session["RawTable"] as DataTable;
            ASPxGridView2.DataBind();
            ASPxGridView3.DataSource = Session["supplierTable"] as DataTable;
            ASPxGridView3.DataBind();
        }

        #region Grid1
        protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[7] == "add")
            {
                DataTable batchRawTable = (DataTable)Session["BatchRawTable"];
                DataRow dr = batchRawTable.NewRow();
                dr["BRNumber"] = temp[0];
                dr["RID"] = temp[1];
                dr["RSpecification"] = temp[3];
                dr["Quantity"] = temp[4];
                dr["ApproachTime"] = temp[5];
                dr["BRRemarks"] = temp[6];
                dr["BRID"] = DateTime.Now.ToString();
                batchRawTable.Rows.Add(dr);
                Session["BatchRawTable"] = batchRawTable;
            }
            else if (temp[7] == "drop")
            {
                bool fillok = BLL.FillUtilityB.FillTableOk((DataTable)Session["BatchRawTable"], "insert into [BatchRaw](BRNumber,RID,RSpecification,Quantity,ApproachTime,BRRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["BatchRawTable"] = null;
            }
            ASPxGridView1.DataSource = (DataTable)Session["BatchRawTable"];
            ASPxGridView1.DataBind();
        }

        protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView1.FocusedRowIndex;
            batchRawTable = (DataTable)Session["BatchRawTable"];
            batchRawTable.Rows.RemoveAt(ri);
            Session["BatchRawTable"] = batchRawTable;
            ASPxGridView1.DataSource = (DataTable)Session["BatchRawTable"];
            ASPxGridView1.DataBind();
            e.Cancel = true;
        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            int ri = ASPxGridView1.FocusedRowIndex;
            batchRawTable = (DataTable)Session["BatchRawTable"];
            for (int i = 0; i < 6; i++)
            {
                batchRawTable.Rows[ri][i] = e.NewValues[i].ToString();
            }
            Session["BatchRawTable"] = batchRawTable;
            ASPxGridView1.DataSource = (DataTable)Session["BatchRawTable"];
            ASPxGridView1.DataBind();
            ASPxGridView1.CancelEdit();
            e.Cancel = true;
        }
        #endregion

        #region Grid2
        protected void ASPxGridView2_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[7] == "add")
            {
                DataTable RawTable = (DataTable)Session["RawTable"];
                DataRow dr = RawTable.NewRow();
                dr["RName"] = temp[0];
                dr["RType"] = temp[1];
                dr["RSpecification"] = temp[2];
                dr["Unit"] = temp[3];
                dr["SID"] = temp[4];
                dr["RRemarks"] = temp[6];
                dr["RawID"] = DateTime.Now.ToString();
                RawTable.Rows.Add(dr);
                Session["RawTable"] = RawTable;
            }
            else if (temp[7] == "drop")
            {
                bool fillok = BLL.FillUtilityB.FillTableOk((DataTable)Session["RawTable"], "insert into [RawMaterial](RName,RType,RSpecification,Unit,SID,RRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["RawTable"] = null;
            }
            ASPxGridView2.DataSource = (DataTable)Session["RawTable"];
            ASPxGridView2.DataBind();
        }

        protected void ASPxGridView2_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView2.FocusedRowIndex;
            rawTable = (DataTable)Session["RawTable"];
            rawTable.Rows.RemoveAt(ri);
            Session["RawTable"] = rawTable;
            ASPxGridView2.DataSource = (DataTable)Session["RawTable"];
            ASPxGridView2.DataBind();
            e.Cancel = true;
        }

        protected void ASPxGridView2_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            int ri = ASPxGridView2.FocusedRowIndex;
            rawTable = (DataTable)Session["RawTable"];
            for (int i = 0; i < 6; i++)
            {
                rawTable.Rows[ri][i] = e.NewValues[i].ToString();
            }
            Session["RawTable"] = rawTable;
            ASPxGridView2.DataSource = (DataTable)Session["RawTable"];
            ASPxGridView2.DataBind();
            ASPxGridView2.CancelEdit();
            e.Cancel = true;
        }
        #endregion
        
        #region Grid3
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
            else if (temp[6] == "drop")
            {
                bool fillok = BLL.FillUtilityB.FillTableOk((DataTable)Session["supplierTable"], "insert into [Supplier](SupplierName,STel,SEmail,SLinkman,SFax,SRemarks)values(");
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
            ASPxGridView3.DataSource = (DataTable)Session["supplierTable"];
            ASPxGridView3.DataBind();
        }

        protected void ASPxGridView3_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView3.FocusedRowIndex;
            supplierTable = (DataTable)Session["supplierTable"];
            supplierTable.Rows.RemoveAt(ri);
            Session["supplierTable"] = supplierTable;
            ASPxGridView3.DataSource = (DataTable)Session["supplierTable"];
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
            ASPxGridView3.DataSource = (DataTable)Session["supplierTable"];
            ASPxGridView3.DataBind();
            ASPxGridView3.CancelEdit();
            e.Cancel = true;
        }
        #endregion

    }
}