using System;
using System.Data;

namespace SKL_SCADA
{
    public partial class BatchFill : System.Web.UI.Page
    {
        private DataTable processTable;
        private DataTable proMatTable;
        private DataTable productTable;
        private DataTable batchFillTable;
        #region Init Function
        void InitProcessTable()
        {
            DataTable processTable = new DataTable();
            processTable.Columns.Add("ProdProcess");
            processTable.Columns.Add("PPRemarks");
            processTable.Columns.Add("PPID");
            Session["ProcessTable"] = processTable;
        }

        void InitProMatTable()
        {
            DataTable proMatTable = new DataTable();
            proMatTable.Columns.Add("PPID");
            proMatTable.Columns.Add("ProdProcess");
            proMatTable.Columns.Add("RID");
            proMatTable.Columns.Add("RName");
            proMatTable.Columns.Add("PPPID");
            Session["ProMatTable"] = proMatTable;
        }

        void InitProductTable()
        {
            DataTable productTable = new DataTable();
            productTable.Columns.Add("PName");
            productTable.Columns.Add("PSpecification");
            productTable.Columns.Add("PPID");
            productTable.Columns.Add("ProdProcess");
            productTable.Columns.Add("PRemarks");
            productTable.Columns.Add("PID");
            Session["ProductTable"] = productTable;
        }

        void InitBatchFillTable()
        {
            DataTable batchFillTable = new DataTable();
            batchFillTable.Columns.Add("PID");
            batchFillTable.Columns.Add("PName");
            batchFillTable.Columns.Add("FQuantity");
            batchFillTable.Columns.Add("FStartTime");
            batchFillTable.Columns.Add("FEndTime");
            batchFillTable.Columns.Add("BFRemarks");
            batchFillTable.Columns.Add("BFID");
            Session["BatchFillTable"] = batchFillTable;
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitProcessTable();
                InitProMatTable();
                InitProductTable();
                InitBatchFillTable();
            }
            ASPxGridView1.DataSource = Session["BatchFillTable"] as DataTable;
            ASPxGridView1.DataBind();
            ASPxGridView2.DataSource = Session["ProductTable"] as DataTable;
            ASPxGridView2.DataBind();
            ASPxGridView3.DataSource = Session["ProMatTable"] as DataTable;
            ASPxGridView3.DataBind();
            ASPxGridView4.DataSource = Session["supplierTable"] as DataTable;
            ASPxGridView4.DataBind();
        }

        #region Grid1
        protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[6] == "add")
            {
                DataTable batchFillTable = (DataTable)Session["BatchFillTable"];
                DataRow dr = batchFillTable.NewRow();
                dr["PID"] = temp[0];
                dr["PName"] = temp[1];
                dr["FQuantity"] = temp[2];
                dr["FStartTime"] = temp[3];
                dr["FEndTime"] = temp[4];
                dr["BFRemarks"] = temp[5];
                dr["BFID"] = DateTime.Now.ToString();
                batchFillTable.Rows.Add(dr);
                Session["BatchFillTable"] = batchFillTable;
            }
            else if (temp[6] == "drop")
            {
                DataTable insertTable = (DataTable)Session["BatchFillTable"];
                insertTable.Columns.Remove("PName");

                bool fillok = BLL.FillUtilityB.FillTableOk(insertTable, "insert into [BatchFill](PID,FQuantity,FStartTime,FEndTime,BFRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["BatchFillTable"] = null;
            }
            ASPxGridView1.DataSource = (DataTable)Session["BatchFillTable"];
            ASPxGridView1.DataBind();
        }

        protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView1.FocusedRowIndex;
            batchFillTable = (DataTable)Session["BatchFillTable"];
            batchFillTable.Rows.RemoveAt(ri);
            Session["BatchFillTable"] = batchFillTable;
            ASPxGridView1.DataSource = (DataTable)Session["BatchFillTable"];
            ASPxGridView1.DataBind();
            e.Cancel = true;
        }
        #endregion

        #region Grid2
        protected void ASPxGridView2_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[5] == "add")
            {
                DataTable productTable = (DataTable)Session["ProductTable"];
                DataRow dr = productTable.NewRow();
                dr["PName"] = temp[0];
                dr["PSpecification"] = temp[1];
                dr["PPID"] = temp[2];
                dr["ProdProcess"] = temp[3];
                dr["PRemarks"] = temp[4];
                dr["PID"] = DateTime.Now.ToString();
                productTable.Rows.Add(dr);
                Session["ProductTable"] = productTable;
            }
            else if (temp[5] == "drop")
            {
                DataTable insertTable = (DataTable)Session["ProductTable"];
                insertTable.Columns.Remove("ProdProcess");

                bool fillok = BLL.FillUtilityB.FillTableOk(insertTable, "insert into [Product](PName,PSpecification,PPID,PRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["ProductTable"] = null;
            }
            ASPxGridView2.DataSource = (DataTable)Session["ProductTable"];
            ASPxGridView2.DataBind();
        }

        protected void ASPxGridView2_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView2.FocusedRowIndex;
            productTable = (DataTable)Session["ProductTable"];
            productTable.Rows.RemoveAt(ri);
            Session["ProductTable"] = productTable;
            ASPxGridView2.DataSource = (DataTable)Session["ProductTable"];
            ASPxGridView2.DataBind();
            e.Cancel = true;
        }
        #endregion

        #region Grid3
        protected void ASPxGridView3_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[6] == "add")
            {
                DataTable proMatTable = (DataTable)Session["ProMatTable"];
                DataRow dr = proMatTable.NewRow();
                dr["PPID"] = temp[0];
                dr["ProdProcess"] = temp[1];
                dr["RID"] = temp[3];
                dr["RName"] = temp[4];
                dr["PPPID"] = DateTime.Now.ToString();
                proMatTable.Rows.Add(dr);
                Session["ProMatTable"] = proMatTable;
            }
            else if (temp[6] == "drop")
            {
                DataTable insertTable = (DataTable)Session["ProMatTable"];
                insertTable.Columns.Remove("ProdProcess");
                insertTable.Columns.Remove("RName");

                bool fillok = BLL.FillUtilityB.FillTableOk(insertTable, "insert into [ProcessMaterial](PPID,RID)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["ProMatTable"] = null;
            }
            ASPxGridView3.DataSource = (DataTable)Session["ProMatTable"];
            ASPxGridView3.DataBind();
        }

        protected void ASPxGridView3_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView3.FocusedRowIndex;
            proMatTable = (DataTable)Session["ProMatTable"];
            proMatTable.Rows.RemoveAt(ri);
            Session["ProMatTable"] = proMatTable;
            ASPxGridView3.DataSource = (DataTable)Session["ProMatTable"];
            ASPxGridView3.DataBind();
            e.Cancel = true;
        }

        #endregion

        #region Grid4
        protected void ASPxGridView4_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[2] == "add")
            {
                DataTable processTable = (DataTable)Session["ProcessTable"];
                DataRow dr = processTable.NewRow();
                dr["ProdProcess"] = temp[0];
                dr["PPRemarks"] = temp[1];
                dr["PPID"] = DateTime.Now.ToString();
                processTable.Rows.Add(dr);
                Session["ProcessTable"] = processTable;
            }
            else if (temp[2] == "drop")
            {
                bool fillok = BLL.FillUtilityB.FillTableOk((DataTable)Session["ProcessTable"], "insert into [ProductProcess](ProdProcess,PPRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["ProcessTable"] = null;
            }
            ASPxGridView4.DataSource = (DataTable)Session["ProcessTable"];
            ASPxGridView4.DataBind();
        }

        protected void ASPxGridView4_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView4.FocusedRowIndex;
            processTable = (DataTable)Session["ProcessTable"];
            processTable.Rows.RemoveAt(ri);
            Session["ProcessTable"] = processTable;
            ASPxGridView4.DataSource = (DataTable)Session["ProcessTable"];
            ASPxGridView4.DataBind();
            e.Cancel = true;
        }

        protected void ASPxGridView4_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            int ri = ASPxGridView4.FocusedRowIndex;
            processTable = (DataTable)Session["ProcessTable"];
            for (int i = 0; i < 3; i++)//????????????????????????????????????????????????????????
            {
                processTable.Rows[ri][i] = e.NewValues[i].ToString();
            }
            Session["ProcessTable"] = processTable;
            ASPxGridView4.DataSource = (DataTable)Session["ProcessTable"];
            ASPxGridView4.DataBind();
            ASPxGridView4.CancelEdit();
            e.Cancel = true;
        }
        #endregion
    }
}