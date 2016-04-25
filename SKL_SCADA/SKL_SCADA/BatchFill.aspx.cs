using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxCallback;

namespace SKL_SCADA
{
    public partial class BatchFill : System.Web.UI.Page
    {
        private DataTable processTable;
        private DataTable proMatTable;
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
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitProcessTable();
                InitProMatTable();
            }

            ASPxGridView3.DataSource = Session["ProMatTable"] as DataTable;
            ASPxGridView3.DataBind();
            ASPxGridView4.DataSource = Session["supplierTable"] as DataTable;
            ASPxGridView4.DataBind();
        }

        #region Grid2
        
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
                dr["PPID"] = DateTime.Now.ToString();
                processTable.Rows.Add(dr);
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

        protected void ASPxGridView3_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            int ri = ASPxGridView3.FocusedRowIndex;
            proMatTable = (DataTable)Session["ProMatTable"];
            for (int i = 0; i < 5; i++)//????????????????????????
            {
                proMatTable.Rows[ri][i] = e.NewValues[i].ToString();
            }
            Session["ProMatTable"] = proMatTable;
            ASPxGridView3.DataSource = (DataTable)Session["ProMatTable"];
            ASPxGridView3.DataBind();
            ASPxGridView3.CancelEdit();
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