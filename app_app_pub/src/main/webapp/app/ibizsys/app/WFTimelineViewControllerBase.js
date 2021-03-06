/**
 * 工作流流程图页面
 */
var WFTimelineViewControllerBase = MDViewControllerBase.extend({
	construct: function(config) {
		arguments.callee.$.construct.call(this,config);
	},
	/**
	 * 初始化
	 */
	init:function(params){
		arguments.callee.$.init.call(this,params);
		var me = this;
		if(!me.searchform){
			me.wftimeline.load();
		}
	},
	/**
	 * 执行初始化
	 */
	onInit:function(){
		arguments.callee.$.onInit.call(this);
		var me = this;
		var dataurl = me.config.backendurl+'srfctrlid=grid&SRFSUBAPP='+me.subapp+'&';
		me.wftimeline = new IBizWFTimeline({id:this.getCId2()+'wftimeline',url:dataurl});
	},
	/**
	 * 获取多项数据控件对象
	 */
	getMDCtrl: function() {
		return this.getGrid();
	},
	getGrid:function(){
		return this.wftimeline;
	}
});