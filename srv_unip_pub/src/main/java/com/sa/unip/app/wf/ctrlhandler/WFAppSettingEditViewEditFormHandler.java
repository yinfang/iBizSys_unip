/**
 *  iBizSys 5.0 机器人生产代码（不要直接修改当前代码）
 *  http://www.ibizsys.net
 */
package com.sa.unip.app.wf.ctrlhandler;


import java.util.ArrayList;
import java.util.List;
import net.ibizsys.paas.util.StringHelper;
import net.ibizsys.paas.web.WebContext;
import net.ibizsys.paas.demodel.DEModelGlobal;
import net.ibizsys.paas.demodel.IDataEntityModel;
import net.ibizsys.paas.service.IService;
import net.ibizsys.paas.service.ServiceGlobal;

import com.sa.unip.app.srv.wf.ctrlmodel.WFAppSettingMainEditFormModel;
import net.ibizsys.psrt.srv.wf.demodel.WFAppSettingDEModel;
import net.ibizsys.psrt.srv.wf.service.WFAppSettingService;
import net.ibizsys.psrt.srv.wf.dao.WFAppSettingDAO;
import net.ibizsys.psrt.srv.wf.entity.WFAppSetting;

import net.ibizsys.paas.ctrlmodel.IEditFormModel;
import net.ibizsys.paas.entity.IEntity;
import net.ibizsys.paas.sysmodel.ISystemRuntime;
import net.ibizsys.paas.ctrlhandler.IFormItemHandler;
import net.ibizsys.paas.ctrlhandler.IFormItemUpdateHandler;

public class WFAppSettingEditViewEditFormHandler extends net.ibizsys.paas.ctrlhandler.EditFormHandlerBase {

    protected WFAppSettingMainEditFormModel editformModel = null;
    public WFAppSettingEditViewEditFormHandler()  {
        super();
    }

    @Override
    protected void onInit() throws Exception {

        editformModel  = (WFAppSettingMainEditFormModel)this.getViewController().getCtrlModel("form");
        super.onInit();
    }

    @Override
    protected IEditFormModel getEditFormModel() {
        return this.getRealEditFormModel();
    }

    protected WFAppSettingMainEditFormModel getRealEditFormModel() {
        return this.editformModel ;
    }

    protected WFAppSettingService getRealService() {
        return (WFAppSettingService)this.getService();
    }


    /**
    * 准备部件操作数据访问能力
     * @throws Exception
     */
    @Override
    protected void prepareDataAccessActions()throws Exception {
        super.prepareDataAccessActions();
        this.registerDataAccessAction("update","UPDATE");
        this.registerDataAccessAction("loaddraftfrom","CREATE");
        this.registerDataAccessAction("remove","DELETE");
        this.registerDataAccessAction("load","READ");
        this.registerDataAccessAction("loaddraft","CREATE");
        this.registerDataAccessAction("create","CREATE");
    }



    /**
    * 准备部件成员处理对象
     * @throws Exception
     */
    @Override
    protected void prepareCtrlItemHandlers()throws Exception {
        super.prepareCtrlItemHandlers();

        ISystemRuntime iSystemRuntime = (ISystemRuntime)this.getSystemModel();
        //注册 'remindmsgtemplname'
        IFormItemHandler remindmsgtemplnameHandler=(IFormItemHandler)iSystemRuntime.createObject("com.sa.unip.app.srv.wf.ctrlhandler.WFAppSettingMainEditFormRemindmsgtemplnameHandler");
        remindmsgtemplnameHandler.init(this.getEditFormModel(),this);
        this.registerCtrlItemHandler(ITEMACTIONTYPE_FORMITEM+"remindmsgtemplname",remindmsgtemplnameHandler);


    }

    @Override
    protected IEntity getEntity(Object objKeyValue)throws Exception {
        WFAppSetting entity = new WFAppSetting();
        entity.set(WFAppSetting.FIELD_WFAPPSETTINGID,objKeyValue);
        this.getRealService().executeAction(WFAppSettingService.ACTION_GET,entity);
        return entity;
    }

    @Override
    protected String getGetEntityAction() {
        return WFAppSettingService.ACTION_GET;
    }

    @Override
    protected IEntity updateEntity(IEntity iEntity)throws Exception {
        this.getRealService().executeAction(WFAppSettingService.ACTION_UPDATE,iEntity);
        return iEntity;
    }

    @Override
    protected IEntity getDraftEntity()throws Exception {
        WFAppSetting entity = new WFAppSetting();
        fillDefaultValues(entity ,false);
        this.getRealService().executeAction(WFAppSettingService.ACTION_GETDRAFT,entity);
        return entity;
    }

    @Override
    protected IEntity getDraftEntityFrom(Object objKeyValue)throws Exception {
        WFAppSetting entity = new WFAppSetting();
        entity.set(WFAppSetting.FIELD_WFAPPSETTINGID,objKeyValue);
        this.getRealService().executeAction(WFAppSettingService.ACTION_GETDRAFTFROM,entity);
        return entity;
    }

    @Override
    protected IEntity createEntity(IEntity iEntity)throws Exception {
        this.getRealService().executeAction(WFAppSettingService.ACTION_CREATE,iEntity);
        return iEntity;
    }


    @Override
    protected void removeEntity(Object objKeyValue)throws Exception {
        WFAppSetting entity = new WFAppSetting();
        entity.set(WFAppSetting.FIELD_WFAPPSETTINGID,objKeyValue);
        this.getRealService().executeAction(WFAppSettingService.ACTION_REMOVE,entity);
    }


}