<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="BatchRaw.aspx.cs" Inherits="SKL_SCADA.BatchRaw" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="team">
		<div class="container">
			<h3>批次信息录入业务流程介绍</h3>
			<p>在原材料进入公司时，为了规范化企业信息的完整性，需进行原材料的批次信息录入。
            首先需要建立供应商信息，若原料来源没有供应商信息，则首先要进行供应商信息的录入。
            当建立完供应商信息后，需要基于供应商来建立原材料的完整信息。
            最后完成原材料批次信息的录入。
            </p>
		</div>
	</div>

    <div class="team-sec">
		<div class="container">	
			<div class="col-md-3">
			  <div class="team-sidebar">
					<h3>业务流程</h3>
						<ul>
						    <li><a href="#"><span> </span>录入供应商信息</a></li>
						    <li><a href="#"><span> </span>录入原材料信息</a></li>
						    <li><a href="#"><span> </span>录入原材料批次信息</a></li>
					 	</ul>
					<h3 class="arch">信息查看</h3>
					 	<ul class="arch">
					        <li><a href="#"><span> </span>供应商信息</a></li>
					        <li><a href="#"><span> </span>原材料信息</a></li>
					        <li><a href="#"><span> </span>原材料批次信息</a></li>					 		 
					 	</ul>
				</div>
				<div class="clear"> </div>
			</div>
            <div class="col-md-9 team-grid text-center">
                <div class="bigBlock">									 
				    <h2>原材料批次信息录入</h2>
				    <p class="text-left">在原材料批次录入过程中应该注意：批次号、原材料、数量、进入时间这四栏禁止为“空”，
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
                            <div class="conBlockL"><h3 class="text-left">原材料：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">数量：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">入库时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" ValueType="System.String"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxComboBox>
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
                        <div class="conBlock"></div>
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
                                <dx:GridViewDataTextColumn Caption="批次号" FieldName="BRNumber" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RID" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料规格" FieldName="RSpecification" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="数量" FieldName="Quantity" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="入库时间" FieldName="ApproachTime" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="BRRemarks" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>原材料信息录入</h2>
				    <p class="text-left">在原材料信息录入过程中应该注意：原材料名称、计量单位、供应商这三项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">原材料：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">具体名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox8" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">计量单位：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox5" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">供应商：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox6" runat="server" ValueType="System.String"
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
                                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="插入原材料" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock"></div>
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
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="具体名称" FieldName="RType" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料规格" FieldName="RSpecification" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="计量单位" FieldName="Unit" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="供应商" FieldName="SID" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="RRemarks" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>供应商信息录入</h2>
				    <p class="text-left">在供应商信息录入过程中应该注意：供应商这项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">供应商：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">电话：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox10" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">E-mail：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox11" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">联系人：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">传真：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox14" runat="server" Width="100%" Height="30px" Theme="Glass">
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
                        <div class="conBlock"></div>
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
                                <dx:GridViewDataTextColumn Caption="供应商名称" FieldName="SupplierName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="电话" FieldName="STel" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Email" FieldName="SEmail" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="联系人" FieldName="SLinkman" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="传真" FieldName="SFax" VisibleIndex="4">
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
