package com.team.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/28.
 */
public class BaseInfor implements Serializable{
    private int PROJ_ID;//id
    private String PROJ_NAME;//项目名称
    private String APP_ORG_NAME;//项目申报单位
    private String UNITE_APP_ORG_NAME;//联合申报单位
    private String PURPOSE;//目的
    private String SAFE_DESC;//安全性
    private String RELIABLE_DESC;//可靠性
    private String ECON_DESC;//经济性
    private String OTHER_DESC;//其他
    private String ACHIEVEMENT_DESC;//成果应用
    private String REAL_USER;//实际用户
    private String POTENTIAL_USER;//潜在用户
    private double CYCLE;//项目完成周期
    private String CONTENT;//项目内容路径简介
    private double TOTAL_BUDGET;//总预算
    private double COMPANY_FUNDS;//公司经费
    private double EXTERNAL_FUNDS;//外部支持经费
    private double STATE_FUNDS;//国家经费
    private String PRIME_USER_DESC;//姓名专业经理和能力简述
    private String PROJ_TYPE;//产品形式
    private String RIGHT_DESC;//预计产权说明
    private String BENEFITS_DESC;//经济效益
    private String FIXED_ASSETS;//固定资产
    private String ACCEPT_STAND;//验收标准
    private String ENTRY_REPORT;//立项报告书
    private String APPROVAL_MANAGER;//审批经理


    public int getPROJ_ID() {
        return PROJ_ID;
    }

    public void setPROJ_ID(int PROJ_ID) {
        this.PROJ_ID = PROJ_ID;
    }

    public String getPROJ_NAME() {
        return PROJ_NAME;
    }

    public void setPROJ_NAME(String PROJ_NAME) {
        this.PROJ_NAME = PROJ_NAME;
    }

    public String getAPP_ORG_NAME() {
        return APP_ORG_NAME;
    }

    public void setAPP_ORG_NAME(String APP_ORG_NAME) {
        this.APP_ORG_NAME = APP_ORG_NAME;
    }

    public String getUNITE_APP_ORG_NAME() {
        return UNITE_APP_ORG_NAME;
    }

    public void setUNITE_APP_ORG_NAME(String UNITE_APP_ORG_NAME) {
        this.UNITE_APP_ORG_NAME = UNITE_APP_ORG_NAME;
    }

    public String getPURPOSE() {
        return PURPOSE;
    }

    public void setPURPOSE(String PURPOSE) {
        this.PURPOSE = PURPOSE;
    }

    public String getSAFE_DESC() {
        return SAFE_DESC;
    }

    public void setSAFE_DESC(String SAFE_DESC) {
        this.SAFE_DESC = SAFE_DESC;
    }

    public String getRELIABLE_DESC() {
        return RELIABLE_DESC;
    }

    public void setRELIABLE_DESC(String RELIABLE_DESC) {
        this.RELIABLE_DESC = RELIABLE_DESC;
    }

    public String getECON_DESC() {
        return ECON_DESC;
    }

    public void setECON_DESC(String ECON_DESC) {
        this.ECON_DESC = ECON_DESC;
    }

    public String getOTHER_DESC() {
        return OTHER_DESC;
    }

    public void setOTHER_DESC(String OTHER_DESC) {
        this.OTHER_DESC = OTHER_DESC;
    }

    public String getACHIEVEMENT_DESC() {
        return ACHIEVEMENT_DESC;
    }

    public void setACHIEVEMENT_DESC(String ACHIEVEMENT_DESC) {
        this.ACHIEVEMENT_DESC = ACHIEVEMENT_DESC;
    }

    public String getREAL_USER() {
        return REAL_USER;
    }

    public void setREAL_USER(String REAL_USER) {
        this.REAL_USER = REAL_USER;
    }

    public String getPOTENTIAL_USER() {
        return POTENTIAL_USER;
    }

    public void setPOTENTIAL_USER(String POTENTIAL_USER) {
        this.POTENTIAL_USER = POTENTIAL_USER;
    }

    public double getCYCLE() {
        return CYCLE;
    }

    public void setCYCLE(double CYCLE) {
        this.CYCLE = CYCLE;
    }

    public String getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT;
    }

    public double getTOTAL_BUDGET() {
        return TOTAL_BUDGET;
    }

    public void setTOTAL_BUDGET(double TOTAL_BUDGET) {
        this.TOTAL_BUDGET = TOTAL_BUDGET;
    }

    public double getCOMPANY_FUNDS() {
        return COMPANY_FUNDS;
    }

    public void setCOMPANY_FUNDS(double COMPANY_FUNDS) {
        this.COMPANY_FUNDS = COMPANY_FUNDS;
    }

    public double getEXTERNAL_FUNDS() {
        return EXTERNAL_FUNDS;
    }

    public void setEXTERNAL_FUNDS(double EXTERNAL_FUNDS) {
        this.EXTERNAL_FUNDS = EXTERNAL_FUNDS;
    }

    public double getSTATE_FUNDS() {
        return STATE_FUNDS;
    }

    public void setSTATE_FUNDS(double STATE_FUNDS) {
        this.STATE_FUNDS = STATE_FUNDS;
    }

    public String getPRIME_USER_DESC() {
        return PRIME_USER_DESC;
    }

    public void setPRIME_USER_DESC(String PRIME_USER_DESC) {
        this.PRIME_USER_DESC = PRIME_USER_DESC;
    }

    public String getPROJ_TYPE() {
        return PROJ_TYPE;
    }

    public void setPROJ_TYPE(String PROJ_TYPE) {
        this.PROJ_TYPE = PROJ_TYPE;
    }

    public String getRIGHT_DESC() {
        return RIGHT_DESC;
    }

    public void setRIGHT_DESC(String RIGHT_DESC) {
        this.RIGHT_DESC = RIGHT_DESC;
    }

    public String getBENEFITS_DESC() {
        return BENEFITS_DESC;
    }

    public void setBENEFITS_DESC(String BENEFITS_DESC) {
        this.BENEFITS_DESC = BENEFITS_DESC;
    }

    public String getFIXED_ASSETS() {
        return FIXED_ASSETS;
    }

    public void setFIXED_ASSETS(String FIXED_ASSETS) {
        this.FIXED_ASSETS = FIXED_ASSETS;
    }

    public String getACCEPT_STAND() {
        return ACCEPT_STAND;
    }

    public void setACCEPT_STAND(String ACCEPT_STAND) {
        this.ACCEPT_STAND = ACCEPT_STAND;
    }

    public String getENTRY_REPORT() {
        return ENTRY_REPORT;
    }

    public void setENTRY_REPORT(String ENTRY_REPORT) {
        this.ENTRY_REPORT = ENTRY_REPORT;
    }

    public String getAPPROVAL_MANAGER() {
        return APPROVAL_MANAGER;
    }

    public void setAPPROVAL_MANAGER(String APPROVAL_MANAGER) {
        this.APPROVAL_MANAGER = APPROVAL_MANAGER;
    }
}
