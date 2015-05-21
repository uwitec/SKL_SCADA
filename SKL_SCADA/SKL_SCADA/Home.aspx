<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SKL_SCADA.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
	<div class="welcome-note">
		<div class="welcome-note-grids">
			<div class="col-md-4 wow fadeInLeft">
				<div class="welcome-note-left text-right">
					<h2>斯开龙</h2>
					<span>食品灌装生产线管控系统</span>
				</div>
			</div> 
			<div class="col-md-8 welcome-grid">
				<div class="welcome-note-right ">
					<div class="col-md-8">
						<div class="welcome-note-right-left">
							<h3>系统概要</h3>
							<p>食品无菌纸盒包装一体化管控系统主要分为三个主要的模块，分别是数据采集模块，生产过程追踪模块，生产状态可视化模块。</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="welcome-note-right-right">
							<a href="#">更多信息</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div> 
			<div class="clearfix"> </div>
		</div>
	</div>
</div>

<div class="mid-grids">
	<div class="container">
		<div class="mid-grid">
				<div class="col-md-4 mid-grid-left  wow bounceInRight">
					<img src="images/banner1.jpg" title="name" alt="" />
				</div>
				<div class="col-md-8 mid-grid-right  wow bounceInLeft">
					<h3>系统构成</h3>
                    <h4>生产线数据采集</h4>
					<p>数据采集子模块主要完成底层的数据搜集和数据预处理，包括对设备状态变量数据的采集，
                    产线环境数据的采集，原材料批次信息，灌装批次，包装批次的统一编码和存储。</p>
                    <h4>生产过程追踪</h4>
					<p>生产过程追踪子模块主要通过设备状态、产线监测信息与编码位置信息的匹配，
                    实现对包装生产过程的实时跟踪，获取产线上的批次位置、原料及供应商、
                    关键参数、工艺信息、报警和非正常生产信息。生产过程追踪模块完成对产品的全生命周期管理。</p>
                    <h4>生产过程可视化</h4>
					<p>生产状态可视化子模块主要完成实时的生产状态监控。主要实现两个维度的监控（车间维度与设备维度）。</p>
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>

<div class="bottom-grids">
	<div class="container">
		<div class="col-md-4 recent">
			<div class="recent-news">
				<h2>批次信息录入</h2>
				<div class="recent-news-grid wow fadeInLeft">
					<div class="recent-news-left text-center">
						<label>STEP</label>
                        <span>1</span>
					</div>
					<div class="recent-news-right">
						<h3>原材料</h3>
						<span>批次信息录入</span>
                        <p>控制来料信息，确保食品源头安全。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="recent-news-grid wow fadeInRight" data-wow-delay="0.5s">
					<div class="recent-news-left text-center">
						<label>STEP</label>
                        <span>2</span>
					</div>
					<div class="recent-news-right">
						<h3>灌装</h3>
						<span>批次信息录入</span>
                        <p>控制灌装信息，确保灌装过程规范性。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="recent-news-grid wow fadeInLeft" data-wow-delay="0.5s">
					<div class="recent-news-left text-center">
						<label>STEP</label>
                        <span>3</span>
					</div>
					<div class="recent-news-right">
						<h3>包装</h3>
						<span>批次信息录入</span>
                        <p>控制包装信息，确保食品出厂信息完整。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!----->
	    <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
		    <div class="about-us">
			    <h2>产线监控</h2>
			    <img src="images/banner1.jpg" alt="" title="name" />
			    <p>通过设备模拟图的形式，实时展示当天生产线的运行状态。</p>
		    </div>
	    </div>
	<!----->
	<!----->
	<div class="col-md-4">
		<div class="ourservices">
			<h2>设备监控</h2>
			<ul>
				<li><a href="#"><span> </span>无菌灌装机</a></li>
				<li><a href="#"><span> </span>杀菌设备</a></li>
				<li><a href="#"><span> </span>输送设备</a></li>
				<li><a href="#"><span> </span>其他设备</a></li>
			</ul>
		</div>
	</div>
	<!----->
	<div class="clearfix"> </div>
	</div>
</div>

</asp:Content>
