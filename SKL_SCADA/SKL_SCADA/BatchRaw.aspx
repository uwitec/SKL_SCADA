<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="BatchRaw.aspx.cs" Inherits="SKL_SCADA.BatchRaw" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
                                <dx:ASPxTextBox ID="ASPxTextBox1" ClientInstanceName="B1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">原材料：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox1" ClientInstanceName="B2" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource1" 
                                TextFormatString="{0}|{1}|{3}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="RID" Caption="原材料编号" />
                                        <dx:ListBoxColumn FieldName="RName" Caption="原材料名称" />
                                        <dx:ListBoxColumn FieldName="RType" Caption="具体名称" />
                                        <dx:ListBoxColumn FieldName="RSpecification" Caption="具体名称" />
                                        <dx:ListBoxColumn FieldName="Unit" Caption="计量单位" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [RID],[RName],[RType],[RSpecification],[Unit] FROM [RawMaterial]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">数量：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox3" ClientInstanceName="B3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">入库时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" ClientInstanceName="B4"
                                Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxDateEdit>
                            </div>
                        </div>
                        <div class="conBlock">
                        </div>                               
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox2" ClientInstanceName="B5" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton1" AutoPostBack="False" runat="server" Text="插入记录" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid1.PerformCallback(
                                    B1.GetText()+'|'+
                                    B2.GetText()+'|'+
                                    B3.GetText()+'|'+
                                    B4.GetText()+'|'+
                                    B5.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton2" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid1.PerformCallback(''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+'drop');}"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="Grid1" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView1_CustomCallback"
                            KeyFieldName="BRID" onrowdeleting="ASPxGridView1_RowDeleting" 
                            onrowupdating="ASPxGridView1_RowUpdating" >
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
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="6">
                                    <EditButton Text="编辑" Visible="True">
                                    </EditButton>
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="BRID" Visible="False" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                            <SettingsEditing Mode="Inline" />
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
                                <dx:ASPxTextBox ID="ASPxTextBox4" ClientInstanceName="R1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">具体名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox7" ClientInstanceName="R2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox8" ClientInstanceName="R3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">计量单位：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox5" ClientInstanceName="R4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">供应商：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox6" ClientInstanceName="R5" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource2" TextFormatString="{0}|{1}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="SID" Caption="供应商编号"/>                                       
                                        <dx:ListBoxColumn FieldName="SupplierName" Caption="供应商名称" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [SID],[SupplierName] FROM [Supplier]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox6" ClientInstanceName="R6" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton3" AutoPostBack="False" runat="server" Text="插入原材料" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid2.PerformCallback(
                                    R1.GetText()+'|'+
                                    R2.GetText()+'|'+
                                    R3.GetText()+'|'+
                                    R4.GetText()+'|'+
                                    R5.GetText()+'|'+
                                    R6.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton4" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" 
                                    Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid2.PerformCallback(''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+'drop');}"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView2" ClientInstanceName="Grid2" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView2_CustomCallback"
                            KeyFieldName="RawID" onrowdeleting="ASPxGridView2_RowDeleting" 
                            onrowupdating="ASPxGridView2_RowUpdating" >
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
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="6">
                                    <EditButton Text="编辑" Visible="True">
                                    </EditButton>
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="RawID" Visible="False" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                            <SettingsEditing Mode="Inline" />
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
                                <dx:ASPxTextBox ID="ASPxTextBox9" ClientInstanceName="S1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">电话：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox10" ClientInstanceName="S2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">E-mail：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox11" ClientInstanceName="S3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">联系人：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox12" ClientInstanceName="S4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">传真：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox14" ClientInstanceName="S5" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox13" ClientInstanceName="S6" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton5" AutoPostBack="False" runat="server" Text="录入供应商" Width="100%" 
                                    Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid3.PerformCallback(
                                    S1.GetText()+'|'+
                                    S2.GetText()+'|'+
                                    S3.GetText()+'|'+
                                    S4.GetText()+'|'+
                                    S5.GetText()+'|'+
                                    S6.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton6" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" 
                                    Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid3.PerformCallback(''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+''+'|'+'drop');}"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView3" ClientInstanceName="Grid3" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView3_CustomCallback"
                            KeyFieldName="SupID" onrowdeleting="ASPxGridView3_RowDeleting" 
                            onrowupdating="ASPxGridView3_RowUpdating" >
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
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="6">
                                    <EditButton Text="编辑" Visible="True">
                                    </EditButton>
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="SupID" Visible="False" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                            <SettingsEditing Mode="Inline" />
                        </dx:ASPxGridView>
                    </div>
                </div>
			</div>
		</div>	
	</div>

</asp:Content>
