20200331
20200630
create table if not exists cwaudit_app.dma_ifrs9_ncjr_jnd_first_s_m
(   stat_dt           string  comment '数据提取日期',
    scource_src       string  comment '系统来源标识',
    cert_no           string  comment '客户ID',
    contract_id       string  comment '合同ID',
    org_id            string  comment '机构编号',
    org_name          string  comment '机构名称',
    invest_rule       double  comment '自有出资比例',
    doudi_rate        double  comment '兜底比例',
    prod_type         string  comment '产品类型',
    rate              double  comment '利率',
    rate_type         string  comment '利率类型',
    loan_begin        string  comment '贷款发放日',
    loan_end          string  comment '贷款到期日',
    loan_amount       double  comment '贷款发放金额',
    loan_bal          double  comment '贷款余额',
    remainplannum     bigint  comment '剩余还款期限',
    cur_term_date     string  comment '下一还本日期',
    cur_inst_date     string  comment '下一还息日期',
    repay_type        string  comment '还款方式',
    repay_freq        string  comment '还款频率',
    overduedays       bigint  comment '逾期天数',
    overdue_amt       double  comment '逾期本金',
    overdue_dayamt    double  comment '逾期利息',
    loan_member_type  string  comment '借款者类型',
    write_off_flag string COMMENT '核销状态标志，值为：已核销、未核销',
    long_term_loan_bal double COMMENT '一年以上贷款余额，长期',
    short_term_loan_bal double  COMMENT '一年以内贷款余额，短期',
    agreement_id string COMMENT 'abs协议号',
    project_no string COMMENT '项目ID',
    project_name string COMMENT '项目名称',
    post_writeoff_interest double COMMENT '核销后待还利息',
    ante_writeoff_interest double COMMENT '核销前待还利息',
    company_code string comment '主体code',
    company_name string comment '主体名称'
)comment '京农贷ifrs9-表1'
partitioned by (dt string comment '日期')
STORED AS orc;