<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="net.ibizsys.paas.web.Page" language="java"%>
<%
       //视图最后修改时间   2017-12-15 10:44:03
        String strPartUrl = request.getParameter("parturl");
  	String strController = request.getParameter("controller");
	String strCtrlId = request.getParameter("ctrlid");
	String strCId = request.getParameter("cid");
	String strEmbed = request.getParameter("embed");
	boolean bEmbedMode = (strEmbed.compareTo("true")==0);
	pageContext.setAttribute("cid",strCId);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ibiz5" uri="http://www.ibizsys.cn/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}/app" />
<c:set var="ctx2" value="${pageContext.request.contextPath}/app" />
<%@include file="oa_jpydeditview_userpart.jsp"%>
<% if(strCtrlId.compareTo("toolbar")==0){ %>
 <div id="<%=strCId%>toolbar">
<button title="<ibiz5:message code="TBB.TOOLTIP.*.SAVE" text="保存"></ibiz5:message>"  data-ibiz-tag="Save" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="fa fa-save"></i>             <span ><ibiz5:message code="TBB.TEXT.*.SAVE" text="保存"></ibiz5:message></span>  </button>  
<button title="<ibiz5:message code="TBB.TOOLTIP.EDITVIEW.SAVEANDNEW" text="保存并新建"></ibiz5:message>"  data-ibiz-tag="SaveAndNew" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="sx-tb-saveandnew"></i>             <span ><ibiz5:message code="TBB.TEXT.EDITVIEW.SAVEANDNEW" text="保存并新建"></ibiz5:message></span>  </button>  
<button title="<ibiz5:message code="TBB.TOOLTIP.EDITVIEW.SAVEANDCLOSE" text="保存并关闭"></ibiz5:message>"  data-ibiz-tag="SaveAndExit" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="sx-tb-saveandclose"></i>             <span ><ibiz5:message code="TBB.TEXT.EDITVIEW.SAVEANDCLOSE" text="保存并关闭"></ibiz5:message></span>  </button>  
<!--分割符号-->
<button title="<ibiz5:message code="TBB.TOOLTIP.EDITVIEW.REMOVEANDCLOSE" text="删除并关闭"></ibiz5:message>"  data-ibiz-tag="RemoveAndExit" data-ibiz-target="SINGLEKEY"  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="fa fa-remove"></i>             <span ><ibiz5:message code="TBB.TEXT.EDITVIEW.REMOVEANDCLOSE" text="删除并关闭"></ibiz5:message></span>  </button>  
<!--分割符号-->
<button title="提交"  data-ibiz-tag="SaveAndStart" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >                       <span >提交</span>  </button>  
<button title="当前流程步骤"  data-ibiz-tag="ViewWFStep" data-ibiz-target="SINGLEKEY"  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="sx-tb-stepactor"></i>             <span ><ibiz5:message code="TBB.TEXT.*.VIEWWFSTEP" text="当前流程步骤"></ibiz5:message></span>  </button>  
<!--分割符号-->
<button title="<ibiz5:message code="TBB.TOOLTIP.*.NEW" text="新建"></ibiz5:message>"  data-ibiz-tag="New" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="fa fa-file-text-o"></i>             <span ><ibiz5:message code="TBB.TEXT.*.NEW" text="新建"></ibiz5:message></span>  </button>  
<!--分割符号-->
<button title="<ibiz5:message code="TBB.TOOLTIP.*.COPY" text="拷贝"></ibiz5:message>"  data-ibiz-tag="Copy" data-ibiz-target="SINGLEKEY"  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="fa fa-copy"></i>             <span ><ibiz5:message code="TBB.TEXT.*.COPY" text="拷贝"></ibiz5:message></span>  </button>  
<!--分割符号-->
<button title="第一个记录"  data-ibiz-tag="FirstRecord" data-ibiz-target="SINGLEKEY"  class="btn btn-icon-only  btn-blue  ibiz-toolbar-item" >          <i class="fa fa-fast-backward"></i>               </button>  
<button title="上一个记录"  data-ibiz-tag="PrevRecord" data-ibiz-target="SINGLEKEY"  class="btn btn-icon-only  btn-blue  ibiz-toolbar-item" >          <i class="fa fa-step-backward"></i>               </button>  
<button title="下一个记录"  data-ibiz-tag="NextRecord" data-ibiz-target="SINGLEKEY"  class="btn btn-icon-only  btn-blue  ibiz-toolbar-item" >          <i class="fa fa-step-forward"></i>               </button>  
<button title="最后一个记录"  data-ibiz-tag="LastRecord" data-ibiz-target="SINGLEKEY"  class="btn btn-icon-only  btn-blue  ibiz-toolbar-item" >          <i class="fa fa-fast-forward"></i>               </button>  
<!--分割符号-->
<button title="<ibiz5:message code="TBB.TOOLTIP.*.HELP" text="帮助"></ibiz5:message>"  data-ibiz-tag="Help" data-ibiz-target=""  class="btn   btn-blue  ibiz-toolbar-item" >          <i class="fa fa-question"></i>             <span ><ibiz5:message code="TBB.TEXT.*.HELP" text="帮助"></ibiz5:message></span>  </button>  
</div>
<% return;} %>
<% if(strCtrlId.compareTo("form")==0){ %>
 <div id="<%=strCId%>form" class="form-horizontal">
   <div class="col-md-12  form-body">
<INPUT type="hidden" name="srfupdatedate" id="<%=strCId%>M21"><INPUT type="hidden" name="srforikey" id="<%=strCId%>M20"><INPUT type="hidden" name="srfkey" id="<%=strCId%>M1f"><INPUT type="hidden" name="srfmajortext" id="<%=strCId%>M1e"><INPUT type="hidden" name="srftempmode" id="<%=strCId%>M1d"><INPUT type="hidden" name="srfuf" id="<%=strCId%>M1c"><INPUT type="hidden" name="srfdeid" id="<%=strCId%>M1b"><INPUT type="hidden" name="srfsourcekey" id="<%=strCId%>M1a"><INPUT type="hidden" name="orguserid" id="<%=strCId%>M5"><INPUT type="hidden" name="orgusername" id="<%=strCId%>M6"><INPUT type="hidden" name="orgsectorid" id="<%=strCId%>M7"><INPUT type="hidden" name="jbrid" id="<%=strCId%>Md"><INPUT type="hidden" name="oa_jpydid" id="<%=strCId%>M19">
<ul class="nav nav-tabs" id="<%=strCId%>form_tab">
   <li class="active"><a href="#<%=strCId%>form_formpage1_tab" data-toggle="tab"><ibiz5:message code="CONTROL.DEFORM.OA_JPYD.MAIN.FORMPAGE.FORMPAGE1" text="基本信息"></ibiz5:message></a></li>
   <li class=""><a href="#<%=strCId%>form_formpage2_tab" data-toggle="tab"><ibiz5:message code="CONTROL.DEFORM.OA_JPYD.MAIN.FORMPAGE.FORMPAGE2" text="其它"></ibiz5:message></a></li>
</ul>
<div class="tab-content ">
  <div class="tab-pane active row" id="<%=strCId%>form_formpage1_tab" ><div id="<%=strCId%>M4" name="group1" style="" class="ibiz-form-formgroup  col-md-12 ">
<fieldset style="border: 1px solid #e5e5e5;margin-bottom:10px;">
<div class="panel panel-success">
<div class="panel-heading panel-text group1_text"  style="height:40px;" ><h5><ibiz5:message code="CONTROL.DEFORM.OA_JPYD.MAIN.GROUPPANEL.GROUP1" text="机票预订基本信息"></ibiz5:message></h5></div>
</div>
<div id="<%=strCId%>M4_gd" >
<div id='<%=strCId%>M8__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M8__lb' class="control-label" style="width:130px;"  >部门名称</label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M8_c" style="">
	<div class="ibiz-field-picker">
		<div>
			<span class="toggle fa fa-search"></span>
			<input type="text" class="form-control text" name="orgsectorname" id="<%=strCId%>M8" autocomplete="off" />
		</div>
	</div>
</div>
	</div>
</div>
<div id='<%=strCId%>M9__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M9__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.MDD" text="目的地"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M9_c" style="" class="ibiz-field-textbox-container"><input id="<%=strCId%>M9" name="mdd" type="text"  class="form-control text ibiz-field-textbox" ></div>
	</div>
</div>
<div id='<%=strCId%>Ma__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>Ma__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.ZW" text="职务"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>Ma_c" style="" class="ibiz-field-textbox-container"><input id="<%=strCId%>Ma" name="zw" type="text"  class="form-control text ibiz-field-textbox" ></div>
	</div>
</div>
<div id='<%=strCId%>Mb__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>Mb__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.JE" text="金额"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>Mb_c" style="" class="ibiz-field-textbox-container"><input id="<%=strCId%>Mb" name="je" type="text"  class="form-control text ibiz-field-textbox" ></div>
	</div>
</div>
<div id='<%=strCId%>Mc__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>Mc__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.SFZHM" text="身份证号码"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>Mc_c" style="" class="ibiz-field-textbox-container"><input id="<%=strCId%>Mc" name="sfzhm" type="text"  class="form-control text ibiz-field-textbox" ></div>
	</div>
</div>
<div id='<%=strCId%>Me__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>Me__lb' class="control-label" style="width:130px;"  >经办人</label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>Me_c" style="">
	<div class="ibiz-field-picker">
		<div>
			<span class="toggle fa fa-search"></span>
			<input type="text" class="form-control text" name="jbrname" id="<%=strCId%>Me" autocomplete="off" />
		</div>
	</div>
</div>
	</div>
</div>
<div id='<%=strCId%>Mf__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>Mf__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.CFSJ" text="出发时间"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>Mf_c" style="width:160px;" >
<div class="input-group ibiz-field-datepicker">
	<input id="<%=strCId%>Mf" name="cfsj"  class="form-control form-control-inline date-picker"  type="text" />
</div>
</div>
	</div>
</div>
<div id='<%=strCId%>M10__fi' style="" class="ibiz-form-formitem  col-xs-6 col-sm-6 col-md-6 col-lg-6 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M10__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.FCSJ" text="返程时间"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M10_c" style="width:160px;" >
<div class="input-group ibiz-field-datepicker">
	<input id="<%=strCId%>M10" name="fcsj"  class="form-control form-control-inline date-picker"  type="text" />
</div>
</div>
	</div>
</div>
<div id='<%=strCId%>M11__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="0">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M11__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.SQSY" text="申请事由"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M11_c" >
<div class="input-group  ibiz-field-textarea">
<textarea id="<%=strCId%>M11" name="sqsy"  type="text"  class="form-control" ></textarea>
<div class="input-group-btn ibiz-id-dropdown">
	<button type="button" class="btn default dropdown-toggle"
		data-toggle="dropdown">
		<i class="fa fa-angle-down"></i>
		</button>
	<ul class="ibiz-id-dropdownmenu dropdown-menu pull-right">
	</ul>
</div>
</div>
</div>
	</div>
</div>
<div id='<%=strCId%>M12__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="1">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M12__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.FJ" text="附件"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M12_c" style="" >
   <div name="fj" id="<%=strCId%>M12"   class="input-group ibiz-field-fileuploader">
		<div class="select2-container select2-container-multi form-control select2">
			<ul class="ibiz-fileupload-container select2-choices"></ul>
		</div>
		<div class="input-group-addon">
			<a class="ibiz-fileupload-upload btn btn-icon-only" onclick="return false;"  href="javascript:;">
				<i class="fa fa-upload"></i>
			</a>
		</div>
	</div>
</div>
	</div>
</div>
</div>
</fieldset>
</div>
</div>
  <div class="tab-pane  row" id="<%=strCId%>form_formpage2_tab" ><div id="<%=strCId%>M14" name="group2" style="" class="ibiz-form-formgroup  col-md-12 ">
<fieldset style="border: 1px solid #e5e5e5;margin-bottom:10px;">
<div class="panel panel-success">
<div class="panel-heading panel-text group2_text"  style="height:40px;" ><h5><ibiz5:message code="CONTROL.DEFORM.OA_JPYD.MAIN.GROUPPANEL.GROUP2" text="操作信息"></ibiz5:message></h5></div>
</div>
<div id="<%=strCId%>M14_gd" >
<div id='<%=strCId%>M15__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="1">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M15__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.CREATEMAN" text="建立人"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M15_c" style="" >
<input type="text" class="form-control text ibiz-field-span" readonly="readonly" name="createman" id="<%=strCId%>M15"  >
</div>
	</div>
</div>
<div id='<%=strCId%>M16__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="1">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M16__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.CREATEDATE" text="建立时间"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M16_c" style="" >
<input type="text" class="form-control text ibiz-field-span" readonly="readonly" name="createdate" id="<%=strCId%>M16"  >
</div>
	</div>
</div>
<div id='<%=strCId%>M17__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="1">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M17__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.UPDATEMAN" text="更新人"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M17_c" style="" >
<input type="text" class="form-control text ibiz-field-span" readonly="readonly" name="updateman" id="<%=strCId%>M17"  >
</div>
	</div>
</div>
<div id='<%=strCId%>M18__fi' style="" class="ibiz-form-formitem  col-md-12 form-group" data-ibiz-allowblank="1">
	<div class='ibiz-formitem-label-left ' style="position: absolute;">
		<label id='<%=strCId%>M18__lb' class="control-label" style="width:130px;"  ><ibiz5:message code="DEF.LNAME.UPDATEDATE" text="更新时间"></ibiz5:message></label>
	</div>
        <div style="margin-left:140px;margin-right:10px;" >
		<div id="<%=strCId%>M18_c" style="" >
<input type="text" class="form-control text ibiz-field-span" readonly="readonly" name="updatedate" id="<%=strCId%>M18"  >
</div>
	</div>
</div>
</div>
</fieldset>
</div>
</div>
</div>
</div>
</div>
<% return;} %>