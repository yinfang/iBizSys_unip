var OA_GZRZRZTJLC_WFExpViewControllerBase = WFExpViewControllerBase.extend({
construct: function(config) {
    if(!config)config={};
    if(!config.appctx)config.appctx='';
    if(!config.containerid)config.containerid='';
    arguments.callee.$.construct.call(this,this.getDefaultCfg(config));
    this.regCodeLists(config);
    this.regUICounters(config);
    this.regUIActions(config);
    this.regUpdatePanels(config);
    this.regControllers(config);
}
,regCodeLists:function(config)
{
}
,regUICounters:function(config)
{
     /*流程导航栏计数器*/
     this.regUICounter(new IBizCounter({tag: '29314c0c87ed5953cf057a3e5918a355',counterid:'ead704403097c2603be95413835eb3bf',counterparam:{"srfwfid":"E7BDF6C1-A7A2-43BB-AB28-4E6DC36DA33F","srfdeid":"OA_GZRZ"},ctrler:this,timer:60000}));
}
,regUpdatePanels:function(config)
{
     var me=this;
}
,regControllers:function(config)
{
  var cid=config.containerid;
    if(cid!='')cid=cid+'_';
    this.regController(new OA_GZRZRZTJLC_W_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C8'}));
    this.regController(new OA_GZRZRZTJLC_D_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C7'}));
    this.regController(new OA_GZRZRZTJLC_W10_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C9'}));
    this.regController(new OA_GZRZRZTJLC_D20_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C4'}));
    this.regController(new OA_GZRZRZTJLC_D20_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C3'}));
    this.regController(new OA_GZRZRZTJLC_D30_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C6'}));
    this.regController(new OA_GZRZRZTJLC_D20_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C5'}));
    this.regController(new OA_GZRZRZTJLC_W20_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'Ca'}));
    this.regController(new OA_GZRZRZTJLC_D_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C1'}));
    this.regController(new OA_GZRZRZTJLC_D10_WFGridViewController({pcontroller:this,appctx:config.appctx,containerid:cid+'C2'}));
}
,regUIActions:function(config)
{
}
,getDefaultCfg:function(cfg){
    var me=this;
    var config={backendurl:cfg.appctx+'/ywsp/OA_GZRZRZTJLC_WFExpView.do?'+'srfcid='+cfg.containerid+'&'
                ,viewurl:'/ywsp/oa_gzrzrztjlc_wfexpview.jsp?'+'srfcid='+cfg.containerid+'&'
               ,ctrls:{expbar:{countertag:'29314c0c87ed5953cf057a3e5918a355'}}};
    return  $.extend({},config,cfg);
}  
,getExpItemView:function(arg){
       if(!arg)arg={}
       var expmode=arg.viewid.toUpperCase();
       if(!expmode)expmode='';
      if(expmode=='RZTJLC:D:40'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d_wfgridview.jsp',embedviewid:'C7'};
      	}
      if(expmode=='RZTJLC:W'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_w_wfgridview.jsp',embedviewid:'C8'};
      	}
      if(expmode=='RZTJLC:D:30'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d30_wfgridview.jsp',embedviewid:'C6'};
      	}
      if(expmode=='RZTJLC:D:10'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d10_wfgridview.jsp',embedviewid:'C2'};
      	}
      if(expmode=='RZTJLC:W:20'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_w20_wfgridview.jsp',embedviewid:'Ca'};
      	}
      if(expmode=='RZTJLC:D'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d_wfgridview.jsp',embedviewid:'C1'};
      	}
      if(expmode=='RZTJLC:W:10'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_w10_wfgridview.jsp',embedviewid:'C9'};
      	}
      if(expmode=='RZTJLC:D:20:20'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d20_wfgridview.jsp',embedviewid:'C5'};
      	}
      if(expmode=='RZTJLC:D:20:10'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d20_wfgridview.jsp',embedviewid:'C4'};
      	}
      if(expmode=='RZTJLC:D:20'){
          return {viewurl:'/ywsp/oa_gzrzrztjlc_d20_wfgridview.jsp',embedviewid:'C3'};
      	}
       return null;
 }
,getNewDataView:function(arg){
       if(!arg)arg={};
       var newmode=arg.srfnewmode;
       if(!newmode)newmode='';

     var parts=newmode.split('@');
     if(parts.length !=2)
         return null;
       return null;
    }

,getEditDataView:function(arg){
       var editmode=arg.srfeditmode;
       if(!editmode)editmode='';
      var parts=editmode.split('@');
     if(parts.length !=2)
         return null;
       return null;
    }
});