using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SKL_SCADA
{
    public partial class MachineState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
//            string machineID = Request.QueryString["machineID"];
            string machineID = "1";
            MODEL.MachineM machineDetail = BLL.MachineB.GetMachine(machineID);
            Label1.Text = machineDetail.MRemarks;
            ASPxLabel1.Text = "8000";

        }
    }
}