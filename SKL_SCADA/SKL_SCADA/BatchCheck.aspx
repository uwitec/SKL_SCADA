<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="BatchCheck.aspx.cs" Inherits="SKL_SCADA.BatchCheck" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function display(divId) {
            var odiv1 = document.getElementById('play1');
            odiv1.style.display = "none";
            var odiv2 = document.getElementById('play2');
            odiv2.style.display = "none";
            var odiv3 = document.getElementById('play3');
            odiv3.style.display = "none";
            odivdisplay = document.getElementById(divId);
            odivdisplay.style.display = "block";
        }
    </script>>
    <div class="team-sec">
		<div class="container">	
			<div class="col-md-3">
			  <div class="team-sidebar">
					<h3 onclick="display('play1')">原材料批次信息查看</h3>
					 	<ul class="arch">
					        <li onclick="display('play1')"><a href="#"><span> </span>供应商信息</a></li>
					        <li onclick="display('play1')"><a href="#"><span> </span>原材料信息</a></li>
					        <li onclick="display('play1')"><a href="#"><span> </span>原材料批次信息</a></li>					 		 
					 	</ul>
				</div>
				<div class="clear"> </div>
			</div>
            <div class="col-md-9 team-grid text-center">
                <div id="play1" style="display: block">
                <div class="bigBlock">
				    <h2>原材料批次信息查看</h2>
				    <p class="text-left">默认显示所有的原材料批次信息,可以通过选择下面原材料表中的数据进行筛选,确认存在错误时，可以选择“删除”。</p>
                    <div class="infoCheck">
                        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                            SelectMethod="GetAllBatchRaw" TypeName="BLL.BatchCheckB" 
                            DeleteMethod="DeleteBatchRawItem">
                            <DeleteParameters>
                                <asp:Parameter Name="BRID" Type="Int32" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
                        <dx:ASPxGridView ID="ASPxGridView3" runat="server" DataSourceID="ObjectDataSource3"
                         Width="100%" Font-Size="14px" Theme="Glass" KeyFieldName="BRID" 
                            AutoGenerateColumns="False">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="记录号" FieldName="BRID" Visible="False" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="批次号" FieldName="BRNumber" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RID" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料规格" FieldName="RSpecification" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="数量" FieldName="Quantity" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="入库时间" FieldName="ApproachTime" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="BRRemarks" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" VisibleIndex="7">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>原材料信息查看</h2>
				    <p class="text-left">默认显示所有的原材料信息,可以通过选择下面供应商表中的数据进行筛选,确认存在错误时，可以选择“删除”。</p>
                    <div class="infoCheck">
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                            SelectMethod="GetAllRawMaterial" TypeName="BLL.BatchCheckB" 
                            DeleteMethod="DeleteRawMaterialItem">
                            <DeleteParameters>
                                <asp:Parameter Name="RID" Type="Int32" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" DataSourceID="ObjectDataSource2"
                         Width="100%" Font-Size="14px" Theme="Glass" KeyFieldName="RID" 
                            AutoGenerateColumns="False">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="原材料编号" FieldName="RID" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料名称" FieldName="RName" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="具体名称" FieldName="RType" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="原材料规格" FieldName="RSpecification" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="计量单位" FieldName="Unit" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="供应商编号" FieldName="SID" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="RRemarks" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" VisibleIndex="7">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div class="bigBlock">
                    <h2>供应商信息查看</h2>
                    <p class="text-left">默认显示所有的供应商信息。在确认存在错误时，可以选择“删除”。</p>
                    <div class="infoCheck">
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            SelectMethod="GetAllSupplier" TypeName="BLL.BatchCheckB" 
                            DeleteMethod="DeleteSupplierItem">
                            <DeleteParameters>
                                <asp:Parameter Name="SID" Type="Int32" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="ObjectDataSource1"
                         Width="100%" Font-Size="14px" Theme="Glass" KeyFieldName="SID" 
                            AutoGenerateColumns="False">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="供应商编号" FieldName="SID" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="供应商名称" FieldName="SupplierName" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="电话" FieldName="STel" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Email" FieldName="SEmail" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="联系人" FieldName="SLinkman" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="传真" FieldName="SFax" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="备注" FieldName="SRemarks" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn Caption="操作" ShowSelectCheckbox="True" VisibleIndex="7">
                                    <DeleteButton Text="删除" Visible="True">
                                    </DeleteButton>
                                </dx:GridViewCommandColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="False" AllowFocusedRow="True" 
                                AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                        </dx:ASPxGridView>
                    </div>
                </div>
                </div>
                <div id="play2" style="display: none">
                    
                </div>
                <div id="play3" style="display: none">

                </div>
			</div>
		</div>	
	</div>
</asp:Content>
