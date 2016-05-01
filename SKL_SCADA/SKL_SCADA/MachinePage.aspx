<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="MachinePage.aspx.cs" Inherits="SKL_SCADA.MachinePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="service-sec">
		<div class="container">	
			<h3>设备监控</h3>
			<p class="ser">实时生产车间状态监控：
                        1.灌装设备监控;
                        2.机器人监控;
                        3.高温杀菌釜监控;
                        4.包装机监控</p>
			<div class="service-grids">
            
                <div class="col-md-3 service-grid">							 
						<a href="MachineState.aspx?machineID=1"><img src="images/s3.jpg" alt=""/></a>
						<div class="tour-caption">
						<p>该设备的情况为：一切正常。</p>
						</div>
						<h4>灌装机</h4>
						<p class="sg">该设备的情况为：一切正常。</p>
						<a class="btn" href="MachineState.aspx?machineID=1">更多信息</a>							  
				</div>
                
                <div class="col-md-3 service-grid">							
						<a href="MachineState.aspx?machineID=2"><img src="images/s4.jpg" alt=""/></a>
						<div class="tour-caption">
						<p >该设备的情况为：一切正常。</p>
						</div>
						<h4>机器人</h4>
						<p class="sg">该设备的情况为：一切正常。</p>
						<a class="btn" href="MachineState.aspx?machineID=2">更多信息</a>							  
				</div>
                
                <div class="col-md-3 service-grid">							 
						<a href="MachineState.aspx?machineID=3"><img src="images/s5.jpg" alt=""/></a>
						<div class="tour-caption">
						<p>该设备的情况为：一切正常。</p>
						</div>
						<h4>高温杀菌釜</h4>
						<p class="sg">该设备的情况为：一切正常。</p>
						<a class="btn" href="MachineState.aspx?machineID=3">更多信息</a>							  
				</div>

				<div class="col-md-3 service-grid">							 
						<a href="MachineState.aspx?machineID=4"><img src="images/s5.jpg" alt=""/></a>
						<div class="tour-caption">
						<p>该设备的情况为：一切正常。</p>
						</div>
						<h4>包装机</h4>
						<p class="sg">该设备的情况为：一切正常。</p>
						<a class="btn" href="MachineState.aspx?machineID=4">更多信息</a>							 
				</div>

				<div class="clearfix"></div>
			</div>

		</div>
	</div>

</asp:Content>
