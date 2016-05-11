using System;
using System.Data;

namespace SKL_SCADA
{
    public partial class BatchPack : System.Web.UI.Page
    {
        private DataTable packTable;

        void InitPackTable()
        {
            DataTable packTable = new DataTable();
            packTable.Columns.Add("BPName");
            packTable.Columns.Add("PID");
            packTable.Columns.Add("PName");
            packTable.Columns.Add("PSpecification");
            packTable.Columns.Add("PackSpec");
            packTable.Columns.Add("PackQuantity");
            packTable.Columns.Add("PackStartTime");
            packTable.Columns.Add("PackEndTime");
            packTable.Columns.Add("PackRemarks");
            packTable.Columns.Add("BPID");
            Session["PackTable"] = packTable;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitPackTable();
            }
            ASPxGridView1.DataSource = Session["PackTable"] as DataTable;
            ASPxGridView1.DataBind();
        }

        #region Grid1
        protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            string[] temp = e.Parameters.Split('|');
            if (temp[9] == "add")
            {
                DataTable packTable = (DataTable)Session["PackTable"];
                DataRow dr = packTable.NewRow();
                dr["BPName"] = temp[0];
                dr["PID"] = temp[1];
                dr["PName"] = temp[2];
                dr["PSpecification"] = temp[3];
                dr["PackSpec"] = temp[4];
                dr["PackQuantity"] = temp[5];
                dr["PackStartTime"] = temp[6];
                dr["PackEndTime"] = temp[7];
                dr["PackRemarks"] = temp[8];
                dr["BPID"] = DateTime.Now.ToString();
                packTable.Rows.Add(dr);
                Session["PackTable"] = packTable;
            }
            else if (temp[9] == "drop")
            {
                DataTable insertTable = (DataTable)Session["PackTable"];
                insertTable.Columns.Remove("PName");
                insertTable.Columns.Remove("PSpecification");

                bool fillok = BLL.FillUtilityB.FillTableOk(insertTable,
                    "insert into [BatchPack](BPName,PID,PackSpec,PackQuantity,PackStartTime,PackEndTime,PackRemarks)values(");
                if (!fillok)
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入数据库发生错误！\n供应商名称不可为空');</Script>");
                }
                else
                {
                    //                    Response.Write("<Script Language=JavaScript>alert('插入成功！');</Script>");
                }
                Session["PackTable"] = null;
            }
            ASPxGridView1.DataSource = (DataTable)Session["PackTable"];
            ASPxGridView1.DataBind();
        }

        protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ri = ASPxGridView1.FocusedRowIndex;
            packTable = (DataTable)Session["PackTable"];
            packTable.Rows.RemoveAt(ri);
            Session["PackTable"] = packTable;
            ASPxGridView1.DataSource = (DataTable)Session["PackTable"];
            ASPxGridView1.DataBind();
            e.Cancel = true;
        }
        #endregion

    }
}