/**
 *  iBizSys 5.0 机器人生产代码（不要直接修改当前代码）
 *  http://www.ibizsys.net
 */
package com.sa.unip.app.jcsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import net.ibizsys.paas.appmodel.AppModelGlobal;
import net.ibizsys.paas.appmodel.IApplicationModel;
import net.ibizsys.paas.demodel.DEModelGlobal;
import net.ibizsys.paas.demodel.IDataEntityModel;
import net.ibizsys.paas.service.IService;
import net.ibizsys.paas.service.ServiceGlobal;
import net.ibizsys.paas.sysmodel.ISystemModel;
import net.ibizsys.paas.sysmodel.SysModelGlobal;
import net.ibizsys.paas.controller.ViewControllerGlobal;
import net.ibizsys.paas.ctrlmodel.ICtrlModel;
import net.ibizsys.paas.ctrlhandler.ICtrlHandler;


import com.sa.unip.srv.UniPSampleSysModel;
import com.sa.unip.app.appAppModel;


/**
 * 视图[OA_ZSKMPickupView]控制类基类
 *
 * !! 不要对此代码进行修改
 */
@Controller
@RequestMapping(value = "/app/jcsj/OA_ZSKMPickupView.do")
public class OA_ZSKMPickupViewController extends net.ibizsys.paas.controller.MPickupViewControllerBase {
    public OA_ZSKMPickupViewController() throws Exception {
        super();
        this.setId("266bbfb159938e2d22a133b042b1bf4a");
        this.setCaption("知识库");
        this.setTitle("知识库数据多项选择视图");
        this.setCapLanResTag("DE.LNAME.OA_ZSK");
        this.setTitleLanResTag("PAGE.TITLE.OA_ZSK.MPICKUPVIEW");
        this.setAccessUserMode(2);
        //
        this.setAttribute("UI.CTRL.PICKUPVIEWPANEL","TRUE");

        ViewControllerGlobal.registerViewController("/app/jcsj/OA_ZSKMPickupView.do",this);
        ViewControllerGlobal.registerViewController("com.sa.unip.app.jcsj.controller.OA_ZSKMPickupViewController",this);
    }


    @Override
    protected void prepareViewParam() throws Exception {
        super.prepareViewParam();


    }

    private UniPSampleSysModel uniPSampleSysModel;

    public  UniPSampleSysModel getUniPSampleSysModel() {
        if(this.uniPSampleSysModel==null) {
            try {
                this.uniPSampleSysModel = (UniPSampleSysModel)SysModelGlobal.getSystem("com.sa.unip.srv.UniPSampleSysModel");
            } catch(Exception ex) {
            }
        }
        return this.uniPSampleSysModel;
    }

    @Override
    public  ISystemModel getSystemModel() {
        return this.getUniPSampleSysModel();
    }


    private appAppModel appAppModel;
    public  appAppModel getappAppModel() {
        if(this.appAppModel==null) {
            try {
                this.appAppModel = (appAppModel)AppModelGlobal.getApplication("com.sa.unip.app.appAppModel");
            } catch(Exception ex) {
            }
        }
        return this.appAppModel;
    }

    @Override
    public  IApplicationModel  getAppModel() {
        return this.getappAppModel();
    }





    private com.sa.unip.srv.jcsj.demodel.OA_ZSKDEModel oA_ZSKDEModel;

    public  com.sa.unip.srv.jcsj.demodel.OA_ZSKDEModel getOA_ZSKDEModel() {
        if(this.oA_ZSKDEModel==null) {
            try {
                this.oA_ZSKDEModel = (com.sa.unip.srv.jcsj.demodel.OA_ZSKDEModel)DEModelGlobal.getDEModel("com.sa.unip.srv.jcsj.demodel.OA_ZSKDEModel");
            } catch(Exception ex) {
            }
        }
        return this.oA_ZSKDEModel;
    }

    public  IDataEntityModel getDEModel() {
        return this.getOA_ZSKDEModel();
    }

    public  com.sa.unip.srv.jcsj.service.OA_ZSKService getOA_ZSKService() {
        try {
            return (com.sa.unip.srv.jcsj.service.OA_ZSKService)ServiceGlobal.getService("com.sa.unip.srv.jcsj.service.OA_ZSKService",this.getSessionFactory());
        } catch(Exception ex) {
            return null;
        }
    }

    /* (non-Javadoc)
    * @see net.ibizsys.paas.controller.IViewController#getService()
    */
    @Override
    public IService getService() {
        return getOA_ZSKService();
    }





    /**
     * 准备部件模型
     * @throws Exception
     */
    @Override
    protected void prepareCtrlModels()throws Exception {
    }

    /**
     * 准备部件处理对象
     * @throws Exception
     */
    @Override
    protected void prepareCtrlHandlers()throws Exception {
    }


    /**
     * 注册界面行为
     * @throws Exception
     */
    @Override
    protected void prepareUIActions()throws Exception {

    }
}