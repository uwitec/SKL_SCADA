<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="BatchPack.aspx.cs" Inherits="SKL_SCADA.BatchPack" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="team">
		<div class="container">
			<h3>包装批次信息录入业务流程介绍</h3>
			<p>包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，
            包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，
            包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍，包装批次信息录入业务流程介绍。
            </p>
		</div>
	</div>

    <div class="team-sec">
		<div class="container">	
			<div class="col-md-3">
			  <div class="team-sidebar">
					<h3>业务流程</h3>
						<ul>
						    <li><a href="#"><span> </span>录入包装批次信息</a></li>
					 	</ul>
					<h3 class="arch">信息查看</h3>
					 	<ul class="arch">
					        <li><a href="#"><span> </span>包装批次信息</a></li>				 		 
					 	</ul>
				</div>
				<div class="clear"> </div>
			</div>
            <div class="col-md-9 team-grid text-center">
                <div class="bigBlock">									 
				    <h2>包装批次信息录入</h2>
				    <p class="text-left">在原材料批次录入过程中应该注意：包装批次号、产品名称、批次数量、批次开始时间这四项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">批次号：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">包装规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">批次数量：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox15" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">开始时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox16" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">结束时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox17" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="插入记录" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="包装批次号" FieldName="BPName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品名称" FieldName="PID" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品规格" FieldName="PSpecification" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="包装规格" FieldName="PackSpec" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次数量" FieldName="PackQuantity" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="开始时间" FieldName="PackStartTime" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="结束时间" FieldName="PackEndTime" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="PackRRemarks" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
			</div>
		</div>	
	</div>

</asp:Content>
