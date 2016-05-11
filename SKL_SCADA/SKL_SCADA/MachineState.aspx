<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="MachineState.aspx.cs" Inherits="SKL_SCADA.MachineState" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGauges" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="team">
	<div class="container">
		<h3>设备简介</h3>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
	</div>
</div>
		  
<div class="team-sec">
    <div class="container">	
	    <div class="col-md-8 team-grid text-center">										 
		    <h2>设备当前状态</h2>
            <div class="infoInput">
                <div class="bigconBlock">
                    <dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true" 
                        Theme="Glass" ImageUrl="~/images/s1.jpg">
                    </dx:ASPxImage>
                </div>
                <div class="conBlock">
                    <div class="conBlockR"><h3 class="text-left">开关机状态：</h3></div>
                    <div class="conBlockL">
                         <dx:ASPxGaugeControl ID="ASPxGaugeControl1" runat="server" Height="30px" 
                                Width="30px" BackColor="White" Value="3">
                            <Gauges>
                                <dx:StateIndicatorGauge Bounds="0, 0, 40, 40" Name="Gauge0">
                                    <indicators>
                                        <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" 
                                            Name="stateIndicatorComponent1" Size="200, 200" StateIndex="3">
                                            <states>
                                                <dx:IndicatorStateWeb Name="State1" ShapeType="ElectricLight1" />
                                                <dx:IndicatorStateWeb Name="State2" ShapeType="ElectricLight2" />
                                                <dx:IndicatorStateWeb Name="State3" ShapeType="ElectricLight3" />
                                                <dx:IndicatorStateWeb Name="State4" ShapeType="ElectricLight4" />
                                            </states>
                                        </dx:StateIndicatorComponent>
                                    </indicators>
                                </dx:StateIndicatorGauge>
                            </Gauges>
                            <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                        </dx:ASPxGaugeControl>
                    </div>
                </div>
                <div class="conBlock">
                    <div class="conBlockR"><h3 class="text-left">报警状态：</h3></div>
                    <div class="conBlockL">
                         <dx:ASPxGaugeControl ID="ASPxGaugeControl2" runat="server" Height="30px" 
                                Width="30px" BackColor="White" Value="3">
                            <Gauges>
                                <dx:StateIndicatorGauge Bounds="0, 0, 40, 40" Name="Gauge0">
                                    <indicators>
                                        <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" 
                                            Name="stateIndicatorComponent1" Size="200, 200" StateIndex="3">
                                            <states>
                                                <dx:IndicatorStateWeb Name="State1" ShapeType="ElectricLight1" />
                                                <dx:IndicatorStateWeb Name="State2" ShapeType="ElectricLight2" />
                                                <dx:IndicatorStateWeb Name="State3" ShapeType="ElectricLight3" />
                                                <dx:IndicatorStateWeb Name="State4" ShapeType="ElectricLight4" />
                                            </states>
                                        </dx:StateIndicatorComponent>
                                    </indicators>
                                </dx:StateIndicatorGauge>
                            </Gauges>
                            <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                        </dx:ASPxGaugeControl>
                    </div>
                </div>
                <div class="conBlock">
                    <div class="conBlockR"><h3 class="text-left">运行状态：</h3></div>
                    <div class="conBlockL">
                         <dx:ASPxGaugeControl ID="ASPxGaugeControl3" runat="server" Height="30px" 
                                Width="30px" BackColor="White" Value="3">
                            <Gauges>
                                <dx:StateIndicatorGauge Bounds="0, 0, 40, 40" Name="Gauge0">
                                    <indicators>
                                        <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" 
                                            Name="stateIndicatorComponent1" Size="200, 200" StateIndex="3">
                                            <states>
                                                <dx:IndicatorStateWeb Name="State1" ShapeType="ElectricLight1" />
                                                <dx:IndicatorStateWeb Name="State2" ShapeType="ElectricLight2" />
                                                <dx:IndicatorStateWeb Name="State3" ShapeType="ElectricLight3" />
                                                <dx:IndicatorStateWeb Name="State4" ShapeType="ElectricLight4" />
                                            </states>
                                        </dx:StateIndicatorComponent>
                                    </indicators>
                                </dx:StateIndicatorGauge>
                            </Gauges>
                            <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                        </dx:ASPxGaugeControl>
                    </div>
                </div>
                <div class="conBlock">
                    <div class="conBlockR"><h3 class="text-left">其他状态：</h3></div>
                    <div class="conBlockL">
                         <dx:ASPxGaugeControl ID="ASPxGaugeControl6" runat="server" Height="30px" 
                                Width="30px" BackColor="White" Value="3">
                            <Gauges>
                                <dx:StateIndicatorGauge Bounds="0, 0, 40, 40" Name="Gauge0">
                                    <indicators>
                                        <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" 
                                            Name="stateIndicatorComponent1" Size="200, 200" StateIndex="3">
                                            <states>
                                                <dx:IndicatorStateWeb Name="State1" ShapeType="ElectricLight1" />
                                                <dx:IndicatorStateWeb Name="State2" ShapeType="ElectricLight2" />
                                                <dx:IndicatorStateWeb Name="State3" ShapeType="ElectricLight3" />
                                                <dx:IndicatorStateWeb Name="State4" ShapeType="ElectricLight4" />
                                            </states>
                                        </dx:StateIndicatorComponent>
                                    </indicators>
                                </dx:StateIndicatorGauge>
                            </Gauges>
                            <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                        </dx:ASPxGaugeControl>
                    </div>
                </div>
                <div class="conBlock">
                    <div class="conBlockR"><h3 class="text-left">运动节拍树：</h3></div>
                    <div class="conBlockL">
                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" CssClass="h3bold">
                        </dx:ASPxLabel>
                    </div>
                </div>
            </div>
	    </div>			 		 
        <div class="col-md-4">
            <div class="team-sidebar">
		        <h3>其他设备</h3>
		        <ul>
		        <li><a href="MachineState.aspx?machineID=1"><span> </span>无菌灌装机</a></li>
		        <li><a href="MachineState.aspx?machineID=2"><span> </span>高温杀菌釜</a></li>
		        <li><a href="MachineState.aspx?machineID=3"><span> </span>机器人</a></li>
		        <li><a href="MachineState.aspx?machineID=4"><span> </span>包装机</a></li>
		        </ul>
	        </div>
	        <div class="clear"> </div>
        </div>
    </div>	
</div>
<div class="clearfix"></div>	
<!--history-->
<div class="container">
	 <div class="team-history">
        <h3>历史状态</h3>
        <div class="history-lines">
        <ul>
        <li class="date"><span>2016/1/30</span></li>
        <li class="date-info"><p><label>设备状态：正常；</label>开机状态：正常；报警状态：正常；运行状态正常；其他状态：正常；运动节拍数：8000000。</p></li>
        </ul>
        <div class="clearfix"> </div>
        </div>
        
        <div class="history-lines">
        <ul>
        <li class="date"><span>2016/1/29</span></li>
        <li class="date-info"><p><label>开机状态：正常；</label>开机状态：正常；报警状态：正常；运行状态正常；其他状态：正常；运动节拍数：8000000。</p></li>
        </ul>
        <div class="clearfix"> </div>
        </div>
        
        <div class="history-lines">
        <ul>
        <li class="date"><span>2016/1/28</span></li>
        <li class="date-info"><p><label>开机状态：正常；</label>开机状态：正常；报警状态：正常；运行状态正常；其他状态：正常；运动节拍数：8000000。</p></li>
        </ul>
        <div class="clearfix"> </div>
        </div>
        
        <div class="history-lines">
        <ul>
        <li class="date"><span>2016/1/27</span></li>
        <li class="date-info"><p><label>开机状态：正常；</label>开机状态：正常；报警状态：正常；运行状态正常；其他状态：正常；运动节拍数：8000000。</p></li>
        </ul>
        <div class="clearfix"> </div>
        </div>
     </div>
</div>
<!--history-->	
</asp:Content>
