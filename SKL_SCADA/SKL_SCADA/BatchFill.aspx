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
                    <h2>灌装批次信息录入</h2>
				    <p class="text-left">在灌装信息录入过程中应该注意：产品名称、批次数量、批次开始时间这三项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox3" ClientInstanceName="Fill1" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource3" 
                                TextFormatString="{0}|{1}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="PID" Caption="产品编号" />
                                        <dx:ListBoxColumn FieldName="PName" Caption="产品名称" />
                                        <dx:ListBoxColumn FieldName="PSpecification" Caption="规格" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [PID],[PName],[PSpecification] FROM [Product]">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">批次数量：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox9" ClientInstanceName="Fill2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">开始时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxDateEdit ID="ASPxDateEdit1" ClientInstanceName="Fill3" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxDateEdit>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">结束时间：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxDateEdit ID="ASPxDateEdit2" ClientInstanceName="Fill4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxDateEdit>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox13" ClientInstanceName="Fill5" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton5" AutoPostBack="False" runat="server" Text="插入灌装记录" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid1.PerformCallback(
                                    Fill1.GetText()+'|'+
                                    Fill2.GetText()+'|'+
                                    Fill3.GetText()+'|'+
                                    Fill4.GetText()+'|'+
                                    Fill5.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton6" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {Grid1.PerformCallback('||||||drop');}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="Grid1" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView1_CustomCallback"
                            KeyFieldName="BFID" onrowdeleting="ASPxGridView1_RowDeleting" >
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="PID" Visible="False" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品名称" FieldName="PName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次数量" FieldName="FQuantity" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次开始时间" FieldName="FStartTime" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次结束时间" FieldName="FEndTime" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="BFRemarks" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="6">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="BFID" Visible="False" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
<%------------------------------------------产品工艺关联---------------------------------------%>
                <div class="bigBlock">
                    <h2>产品信息录入</h2>
				    <p class="text-left">在产品信息录入过程中应该注意：产品名称和产品工艺这两项禁止为“空”，
                    否则无法提交，在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox4" ClientInstanceName="Prod1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品规格：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox7" ClientInstanceName="Prod2" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">产品工艺：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox2" ClientInstanceName="Prod3" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource1" 
                                TextFormatString="{0}|{1}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="PPID" Caption="工艺编号" />
                                        <dx:ListBoxColumn FieldName="ProdProcess" Caption="工艺名称" />
                                        <dx:ListBoxColumn FieldName="PPRemarks" Caption="备注" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [PPID],[ProdProcess],[PPRemarks] FROM [ProductProcess]">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox6" ClientInstanceName="Prod4" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton3" AutoPostBack="False" runat="server" Text="插入产品记录" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid2.PerformCallback(
                                    Prod1.GetText()+'|'+
                                    Prod2.GetText()+'|'+
                                    Prod3.GetText()+'|'+
                                    Prod4.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton4" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {Grid2.PerformCallback('|||||drop');}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView2" ClientInstanceName="Grid2" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView2_CustomCallback"
                            KeyFieldName="PID" onrowdeleting="ASPxGridView2_RowDeleting" >
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="产品名称" FieldName="PName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品规格" FieldName="PSpecification" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="PPID" VisibleIndex="2" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品工艺" FieldName="ProdProcess" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="产品备注" FieldName="PRemarks" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="4">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="PID" Visible="False" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
<%------------------------------------------产品工艺关联---------------------------------------%>
                <div class="bigBlock">									 
				    <h2>产品工艺关联原材料</h2>
				    <p class="text-left">在产品工艺信息录入过程中应该注意：
                    1.选择工艺名称，插入所使用的原材料。
                    在预览确认无误以后，方可提交。否则无法录入数据库中。</p>
                    <div class="infoInput">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">选择工艺：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox5" ClientInstanceName="PS1" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource1" 
                                TextFormatString="{0}|{1}|{2}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="PPID" Caption="工艺编号" />
                                        <dx:ListBoxColumn FieldName="ProdProcess" Caption="工艺名称" />
                                        <dx:ListBoxColumn FieldName="PPRemarks" Caption="备注" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [PPID],[ProdProcess],[PPRemarks] FROM [ProductProcess]">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">选择原材料：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxComboBox ID="ASPxComboBox1" ClientInstanceName="PS2" runat="server"
                                Width="100%" Height="30px" Theme="Glass" DataSourceID="SqlDataSource2" 
                                TextFormatString="{0}|{1}|{3}" >
                                    <Columns>
                                        <dx:ListBoxColumn FieldName="RID" Caption="原材料编号" />
                                        <dx:ListBoxColumn FieldName="RName" Caption="原材料名称" />
                                        <dx:ListBoxColumn FieldName="RType" Caption="具体名称" />
                                        <dx:ListBoxColumn FieldName="RSpecification" Caption="具体名称" />
                                        <dx:ListBoxColumn FieldName="Unit" Caption="计量单位" />
                                    </Columns>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SKL_SCADAConnectionString %>" 
                                    SelectCommand="SELECT [RID],[RName],[RType],[RSpecification],[Unit] FROM [RawMaterial]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="conBlock">
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton1" AutoPostBack="False" runat="server" Text="插入关联关系" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid3.PerformCallback(
                                    PS1.GetText()+'|'+
                                    PS2.GetText()+'|'+'add');
                                    }"/>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock">
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton2" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {Grid3.PerformCallback('||||||drop');}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                    <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView3" ClientInstanceName="Grid3" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" 
                            oncustomcallback="ASPxGridView3_CustomCallback"
                            KeyFieldName="PPPID" onrowdeleting="ASPxGridView3_RowDeleting" >
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="工艺编号" FieldName="PPID" Visible="False" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="工艺名称" FieldName="ProdProcess" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料编号" FieldName="RID" Visible="False" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RName" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="4">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="PPPID" Visible="False" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
<%------------------------------------------创建产品工艺---------------------------------------%>
                <div class="bigBlock">
                    <h2>创建产品工艺</h2>
                    <div class="infoCheck">
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">工艺名称：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox1" ClientInstanceName="P0" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock">
                            <div class="conBlockL"><h3 class="text-left">工艺备注：</h3></div>
                            <div class="conBlockR">
                                <dx:ASPxTextBox ID="ASPxTextBox5" ClientInstanceName="P1" runat="server" Width="100%" Height="30px" Theme="Glass">
                                </dx:ASPxTextBox>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL">
                            </div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton7" AutoPostBack="False" runat="server" Text="创建工艺" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid4.PerformCallback(
                                    P0.GetText()+'|'+P1.GetText()+'|add'
                                    );}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="conBlock"></div>
                        <div class="conBlock">
                            <div class="conBlockL"></div>
                            <div class="conBlockR">
                                <dx:ASPxButton ID="ASPxButton8" AutoPostBack="False" runat="server" Text="录入数据库" Width="100%" Height="30px" Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                    Grid4.PerformCallback(
                                    ''+'|'+''+'|drop'
                                    );}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <div class="infoCheck">
                        <dx:ASPxGridView ID="ASPxGridView4" ClientInstanceName="Grid4" runat="server" AutoGenerateColumns="False" 
                            EnableTheming="True" Theme="Glass" Width="100%" Font-Size="14px" oncustomcallback="ASPxGridView4_CustomCallback" 
                            KeyFieldName="PPID" onrowdeleting="ASPxGridView4_RowDeleting" onrowupdating="ASPxGridView4_RowUpdating" >
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="工艺名称" FieldName="ProdProcess" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="工艺备注" FieldName="PPRemarks" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" 
                                    VisibleIndex="5">
                                    <EditButton Text="编辑" Visible="True">
                                    </EditButton>
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="PPID" Visible="False" VisibleIndex="7">
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
	</div>

</asp:Content>
