<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="BatchFill.aspx.cs" Inherits="SKL_SCADA.BatchFill" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="team">
		<div class="container">
			<h3>灌装批次信息录入</h3>
			<p>灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，
            灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，
            灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入，灌装批次信息录入。
            </p>
		</div>
	</div>

    <div class="team-sec">
		<div class="container">	
			<div class="col-md-3">
			  <div class="team-sidebar">
					<h3>业务流程</h3>
						<ul>
						    <li><a href="#"><span> </span>录入产品工艺信息</a></li>
                            <li><a href="#"><span> </span>录入产品信息</a></li>
                            <li><a href="#"><span> </span>录入灌装批次信息</a></li>
					 	</ul>
					<h3 class="arch">信息查看</h3>
					 	<ul class="arch">
					        <li><a href="#"><span> </span>产品工艺信息</a></li>
                            <li><a href="#"><span> </span>产品信息</a></li>
					        <li><a href="#"><span> </span>灌装批次信息</a></li>					 		 
					 	</ul>
				</div>
				<div class="clear"> </div>
			</div>
            <div class="col-md-9 team-grid text-center">
                <div class="bigBlock">									 
				    <h2>产品工艺录入</h2>
				    <p class="text-left">在产品工艺信息录入过程中应该注意：
                    1.首先创建工艺名称；2.选择工艺名称，插入所使用的原材料。
                    在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">工艺名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton7" runat="server" Text="工艺录入" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                         <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton8" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>

                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">原材料：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="关联原材料" Width="100%" Height="30px" Theme="Glass">
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
                                <dx:GridViewDataTextColumn Caption="工艺名称" FieldName="PPID" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RID" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>产品信息录入</h2>
				    <p class="text-left">在产品信息录入过程中应该注意：产品名称和产品工艺这两项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品工艺：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="插入产品记录" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="产品名称" FieldName="PName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品规格" FieldName="PSpecification" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品工艺" FieldName="PPID" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品备注" FieldName="PRemarks" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>灌装批次信息录入</h2>
				    <p class="text-left">在灌装信息录入过程中应该注意：产品名称、批次数量、批次开始时间这三项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox4" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">批次数量：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">开始时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">结束时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox13" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="录入供应商" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton6" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="产品名称" FieldName="PID" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品规格" FieldName="PSpecification" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次数量" FieldName="FQuantity" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次开始时间" FieldName="FStartTime" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次结束时间" FieldName="FEndTime" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="SRemarks" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
			</div>
		</div>	
	</div>

</asp:Content>
