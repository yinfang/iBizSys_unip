/**
 *  iBizSys 5.0 机器人生产代码（不要直接修改当前代码）
 *  http://www.ibizsys.net
 */
package com.sa.unip.app.common.ctrlhandler;


import java.util.ArrayList;
import java.util.List;
import net.ibizsys.paas.util.StringHelper;
import net.ibizsys.paas.web.WebContext;
import net.ibizsys.paas.demodel.DEModelGlobal;
import net.ibizsys.paas.demodel.IDataEntityModel;
import net.ibizsys.paas.service.IService;
import net.ibizsys.paas.service.ServiceGlobal;

import com.sa.unip.app.srv.common.ctrlmodel.UserRoleDEFieldsDefaultDRBarModel;
import net.ibizsys.psrt.srv.common.demodel.UserRoleDEFieldsDEModel;
import net.ibizsys.psrt.srv.common.service.UserRoleDEFieldsService;
import net.ibizsys.psrt.srv.common.dao.UserRoleDEFieldsDAO;
import net.ibizsys.psrt.srv.common.entity.UserRoleDEFields;

import net.ibizsys.paas.core.DEDataSetFetchContext;
import net.ibizsys.paas.ctrlmodel.IGridModel;
import net.ibizsys.paas.db.DBFetchResult;
import net.ibizsys.paas.web.AjaxActionResult;
import net.ibizsys.paas.web.MDAjaxActionResult;
import net.ibizsys.paas.entity.IEntity;
import net.ibizsys.paas.ctrlmodel.IDRBarModel;

public class UserRoleDEFieldsEditView2DRBarHandler extends net.ibizsys.paas.ctrlhandler.DRBarHandlerBase {

    protected UserRoleDEFieldsDefaultDRBarModel drBarModel = null;
    public UserRoleDEFieldsEditView2DRBarHandler()  {
        super();
    }

    @Override
    protected void onInit() throws Exception {
        drBarModel  = (UserRoleDEFieldsDefaultDRBarModel)this.getViewController().getCtrlModel("drbar");
        super.onInit();
    }


    @Override
    protected IDRBarModel getDRBarModel() {
        return this.getRealDRBarModel();
    }

    protected UserRoleDEFieldsDefaultDRBarModel getRealDRBarModel() {
        return this.drBarModel ;
    }



}