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
//            ASPxGaugeControl1.Value = "red";
            ASPxLabel1.Text = "1234";
            ASPxImage1.ImageUrl = "~/images/s2.jpg"
        }
    }
}