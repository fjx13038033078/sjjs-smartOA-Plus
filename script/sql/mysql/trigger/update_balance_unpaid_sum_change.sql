CREATE DEFINER=`root`@`%` TRIGGER `update_balance_unpaid_sum_change` BEFORE UPDATE ON `project_balance_unpaid` FOR EACH ROW BEGIN

                                                                            -- 更新设备费_专项_直接_未支付
                                                                            SET NEW.sbf_zx_zj_unpaid = NEW.sbf_gzsb_zx_zj_unpaid + NEW.sbf_szsb_zx_zj_unpaid + NEW.sbf_sbsjgz_zx_zj_unpaid + NEW.sbf_sbzl_zx_zj_unpaid;

-- 更新设备费_自筹_直接_未支付
SET NEW.sbf_zc_zj_unpaid = NEW.sbf_gzsb_zc_zj_unpaid + NEW.sbf_szsb_zc_zj_unpaid + NEW.sbf_sbsjgz_zc_zj_unpaid + NEW.sbf_sbzl_zc_zj_unpaid;

    -- 更新设备费_购置设备费_直接_未支付
	SET NEW.sbf_gzsb_zj_unpaid = NEW.sbf_gzsb_zx_zj_unpaid + NEW.sbf_gzsb_zc_zj_unpaid;

    -- 更新设备费_试制设备费_直接_未支付
	SET NEW.sbf_szsb_zj_unpaid = NEW.sbf_szsb_zx_zj_unpaid + NEW.sbf_szsb_zc_zj_unpaid;

    -- 更新设备费_设备升级改造费_直接_未支付
	SET NEW.sbf_sbsjgz_zj_unpaid = NEW.sbf_sbsjgz_zx_zj_unpaid + NEW.sbf_sbsjgz_zc_zj_unpaid;

    -- 更新设备费_设备租赁费_直接_未支付
	SET NEW.sbf_sbzl_zj_unpaid = NEW.sbf_sbzl_zx_zj_unpaid + NEW.sbf_sbzl_zc_zj_unpaid;

    -- 业务费_会议/差旅/国际合作与交流费_专项_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_zx_zj_unpaid = NEW.ywf_hyclgjhzyjlf_hyf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_clf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_gjhzf_zx_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_专项_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_zx_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_zscqswf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_ysdyzzf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_wxsjkf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_xxcbf_zx_zj_unpaid;

	-- 业务费_专项_直接_未支付
	SET NEW.ywf_zx_zj_unpaid = NEW.ywf_clf_zx_zj_unpaid + NEW.ywf_zlf_zx_zj_unpaid + NEW.ywf_sjybcjf_zx_zj_unpaid + NEW.ywf_cshyjgf_zx_zj_unpaid + NEW.ywf_rldlf_zx_zj_unpaid + NEW.ywf_bgf_zx_zj_unpaid + NEW.ywf_yscbf_zx_zj_unpaid + NEW.ywf_zscqswf_zx_zj_unpaid + NEW.ywf_clsyf_zx_zj_unpaid + NEW.ywf_chlf_zx_zj_unpaid + NEW.ywf_hyhwf_zx_zj_unpaid + NEW.ywf_gnxzf_zx_zj_unpaid + NEW.ywf_gjhzjlf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_zx_zj_unpaid;

	-- 业务费_会议/差旅/国际合作与交流费_自筹_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_zc_zj_unpaid = NEW.ywf_hyclgjhzyjlf_hyf_zc_zj_unpaid + NEW.ywf_hyclgjhzyjlf_clf_zc_zj_unpaid + NEW.ywf_hyclgjhzyjlf_gjhzf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_自筹_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_zc_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_zscqswf_zc_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_ysdyzzf_zc_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_wxsjkf_zc_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_xxcbf_zc_zj_unpaid;

    -- 业务费_自筹_直接_未支付
	SET NEW.ywf_zc_zj_unpaid = NEW.ywf_clf_zc_zj_unpaid + NEW.ywf_zlf_zc_zj_unpaid + NEW.ywf_sjybcjf_zc_zj_unpaid + NEW.ywf_cshyjgf_zc_zj_unpaid + NEW.ywf_rldlf_zc_zj_unpaid + NEW.ywf_bgf_zc_zj_unpaid + NEW.ywf_yscbf_zc_zj_unpaid + NEW.ywf_zscqswf_zc_zj_unpaid + NEW.ywf_clsyf_zc_zj_unpaid + NEW.ywf_chlf_zc_zj_unpaid + NEW.ywf_hyhwf_zc_zj_unpaid + NEW.ywf_gnxzf_zc_zj_unpaid + NEW.ywf_gjhzjlf_zc_zj_unpaid + NEW.ywf_hyclgjhzyjlf_zc_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_zc_zj_unpaid;

    -- 业务费_材料费_直接_未支付
	SET NEW.ywf_clf_zj_unpaid = NEW.ywf_clf_zx_zj_unpaid + NEW.ywf_clf_zc_zj_unpaid;

    -- 业务费_资料费_直接_未支付
	SET NEW.ywf_zlf_zj_unpaid = NEW.ywf_zlf_zx_zj_unpaid + NEW.ywf_zlf_zc_zj_unpaid;

    -- 业务费_数据样本采集费_直接_未支付
	SET NEW.ywf_sjybcjf_zj_unpaid = NEW.ywf_sjybcjf_zx_zj_unpaid + NEW.ywf_sjybcjf_zc_zj_unpaid;

    -- 业务费_测试化验加工费_直接_未支付
	SET NEW.ywf_cshyjgf_zj_unpaid = NEW.ywf_cshyjgf_zx_zj_unpaid + NEW.ywf_cshyjgf_zc_zj_unpaid;

    -- 业务费_燃料动力费_直接_未支付
	SET NEW.ywf_rldlf_zj_unpaid = NEW.ywf_rldlf_zx_zj_unpaid + NEW.ywf_rldlf_zc_zj_unpaid;

    -- 业务费_办公费_直接_未支付
	SET NEW.ywf_bgf_zj_unpaid = NEW.ywf_bgf_zx_zj_unpaid + NEW.ywf_bgf_zc_zj_unpaid;

    -- 业务费_印刷出版费_直接_未支付
	SET NEW.ywf_yscbf_zj_unpaid = NEW.ywf_yscbf_zx_zj_unpaid + NEW.ywf_yscbf_zc_zj_unpaid;

    -- 业务费_知识产权事务费_直接_未支付
	SET NEW.ywf_zscqswf_zj_unpaid = NEW.ywf_zscqswf_zx_zj_unpaid + NEW.ywf_zscqswf_zc_zj_unpaid;

    -- 业务费_车辆使用费_直接_未支付
	SET NEW.ywf_clsyf_zj_unpaid = NEW.ywf_clsyf_zx_zj_unpaid + NEW.ywf_clsyf_zc_zj_unpaid;

    -- 业务费_差旅费_直接_未支付
	SET NEW.ywf_chlf_zj_unpaid = NEW.ywf_chlf_zx_zj_unpaid + NEW.ywf_chlf_zc_zj_unpaid;

    -- 业务费_会议会务费_直接_未支付
	SET NEW.ywf_hyhwf_zj_unpaid = NEW.ywf_hyhwf_zx_zj_unpaid + NEW.ywf_hyhwf_zc_zj_unpaid;

    -- 业务费_国内协作费_直接_未支付
	SET NEW.ywf_gnxzf_zj_unpaid = NEW.ywf_gnxzf_zx_zj_unpaid + NEW.ywf_gnxzf_zc_zj_unpaid;

    -- 业务费_国际合作交流费_直接_未支付
	SET NEW.ywf_gjhzjlf_zj_unpaid = NEW.ywf_gjhzjlf_zx_zj_unpaid + NEW.ywf_gjhzjlf_zc_zj_unpaid;

    -- 业务费_会议/差旅/国际合作与交流费_会议费_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_hyf_zj_unpaid = NEW.ywf_hyclgjhzyjlf_hyf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_hyf_zc_zj_unpaid;

    -- 业务费_会议/差旅/国际合作与交流费_差旅费_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_clf_zj_unpaid = NEW.ywf_hyclgjhzyjlf_clf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_clf_zc_zj_unpaid;

    -- 业务费_会议/差旅/国际合作与交流费_国际合作费_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_gjhzf_zj_unpaid = NEW.ywf_hyclgjhzyjlf_gjhzf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_gjhzf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_知识产权事务费_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_zscqswf_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_zscqswf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_zscqswf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_印刷打印制作费_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_ysdyzzf_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_ysdyzzf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_ysdyzzf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_文献数据库费_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_wxsjkf_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_wxsjkf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_wxsjkf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_信息传播费_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_xxcbf_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_xxcbf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_xxcbf_zc_zj_unpaid;

    -- 业务费_会议/差旅/国际合作与交流费_直接_未支付
	SET NEW.ywf_hyclgjhzyjlf_zj_unpaid = NEW.ywf_hyclgjhzyjlf_zx_zj_unpaid + NEW.ywf_hyclgjhzyjlf_zc_zj_unpaid;

    -- 业务费_出版/文献/信息传播/知识产权事务费_直接_未支付
	SET NEW.ywf_cbwxxxcbzscqswf_zj_unpaid = NEW.ywf_cbwxxxcbzscqswf_zx_zj_unpaid + NEW.ywf_cbwxxxcbzscqswf_zc_zj_unpaid;

    -- 更新劳务费_专项_直接_未支付
	SET NEW.lwf_zx_zj_unpaid = NEW.lwf_zjzxf_zx_zj_unpaid + NEW.lwf_rylwf_zx_zj_unpaid;

    -- 更新劳务费_自筹_直接_未支付
	SET NEW.lwf_zc_zj_unpaid = NEW.lwf_zjzxf_zc_zj_unpaid + NEW.lwf_rylwf_zc_zj_unpaid;

    -- 更新材料费_专项_直接_未支付
	SET NEW.clf_zx_zj_unpaid = NEW.clf_clf_zx_zj_unpaid;

    -- 更新材料费_自筹_直接_未支付
	SET NEW.clf_zc_zj_unpaid = NEW.clf_clf_zc_zj_unpaid;

    -- 更新科研活动费_专项_直接_未支付
	SET NEW.kyhdf_zx_zj_unpaid = NEW.kyhdf_zl_zx_zj_unpaid + NEW.kyhdf_cshyjg_zx_zj_unpaid + NEW.kyhdf_bg_zx_zj_unpaid + NEW.kyhdf_sjybcj_zx_zj_unpaid
                                 + NEW.kyhdf_yscb_zx_zj_unpaid + NEW.kyhdf_zscqsw_zx_zj_unpaid + NEW.kyhdf_rldl_zx_zj_unpaid + NEW.kyhdf_clsy_zx_zj_unpaid;

    -- 更新科研活动费_自筹_直接_未支付
	SET NEW.kyhdf_zc_zj_unpaid = NEW.kyhdf_zl_zc_zj_unpaid + NEW.kyhdf_cshyjg_zc_zj_unpaid + NEW.kyhdf_bg_zc_zj_unpaid + NEW.kyhdf_sjybcj_zc_zj_unpaid
                                 + NEW.kyhdf_yscb_zc_zj_unpaid + NEW.kyhdf_zscqsw_zc_zj_unpaid + NEW.kyhdf_rldl_zc_zj_unpaid + NEW.kyhdf_clsy_zc_zj_unpaid;

    -- 更新科研服务费_专项_直接_未支付
	SET NEW.kyfwf_zx_zj_unpaid = NEW.kyfwf_zjzx_zx_zj_unpaid + NEW.kyfwf_cl_zx_zj_unpaid + NEW.kyfwf_hyhw_zx_zj_unpaid + NEW.kyfwf_gjhzjl_zx_zj_unpaid
                                 + NEW.kyfwf_gnxz_zx_zj_unpaid;

    -- 更新科研服务费_自筹_直接_未支付
	SET NEW.kyfwf_zc_zj_unpaid = NEW.kyfwf_zjzx_zc_zj_unpaid + NEW.kyfwf_cl_zc_zj_unpaid + NEW.kyfwf_hyhw_zc_zj_unpaid + NEW.kyfwf_gjhzjl_zc_zj_unpaid
                                 + NEW.kyfwf_gnxz_zc_zj_unpaid;

    -- 更新人员和劳务补助费_专项_直接_未支付
	SET NEW.ryhlwbzf_zx_zj_unpaid = NEW.ryhlwbzf_rylw_zx_zj_unpaid;

    -- 更新人员和劳务补助费_自筹_直接_未支付
	SET NEW.ryhlwbzf_zc_zj_unpaid = NEW.ryhlwbzf_rylw_zc_zj_unpaid;

    -- 更新设备费_间接_未支付
	SET NEW.sbf_jj_unpaid = NEW.sbf_zx_jj_unpaid + NEW.sbf_zc_jj_unpaid;

    -- 更新材料费_间接_未支付
	SET NEW.clf_jj_unpaid = NEW.clf_zx_jj_unpaid + NEW.clf_zc_jj_unpaid;

    -- 更新资料费_间接_未支付
	SET NEW.zlf_jj_unpaid = NEW.zlf_zx_jj_unpaid + NEW.zlf_zc_jj_unpaid;

    -- 更新数据样本采集费_间接_未支付
	SET NEW.sjybcjf_jj_unpaid = NEW.sjybcjf_zx_jj_unpaid + NEW.sjybcjf_zc_jj_unpaid;

    -- 更新测试化验加工费_间接_未支付
	SET NEW.cshyjgf_jj_unpaid = NEW.cshyjgf_zx_jj_unpaid + NEW.cshyjgf_zc_jj_unpaid;

    -- 更新燃料动力费_间接_未支付
	SET NEW.rldlf_jj_unpaid = NEW.rldlf_zx_jj_unpaid + NEW.rldlf_zc_jj_unpaid;

    -- 更新办公费_间接_未支付
	SET NEW.bgf_jj_unpaid = NEW.bgf_zx_jj_unpaid + NEW.bgf_zc_jj_unpaid;

    -- 更新印刷出版费_间接_未支付
	SET NEW.yscbf_jj_unpaid = NEW.yscbf_zx_jj_unpaid + NEW.yscbf_zc_jj_unpaid;

    -- 更新知识产权事务费_间接_未支付
	SET NEW.zscqswf_jj_unpaid = NEW.zscqswf_zx_jj_unpaid + NEW.zscqswf_zc_jj_unpaid;

    -- 更新车辆使用费_间接_未支付
	SET NEW.clsyf_jj_unpaid = NEW.clsyf_zx_jj_unpaid + NEW.clsyf_zc_jj_unpaid;

    -- 更新差旅费_间接_未支付
	SET NEW.chlf_jj_unpaid = NEW.chlf_zx_jj_unpaid + NEW.chlf_zc_jj_unpaid;

    -- 更新会议会务费_间接_未支付
	SET NEW.hyhwf_jj_unpaid = NEW.hyhwf_zx_jj_unpaid + NEW.hyhwf_zc_jj_unpaid;

    -- 更新专家咨询费_间接_未支付
	SET NEW.zjzxf_jj_unpaid = NEW.zjzxf_zx_jj_unpaid + NEW.zjzxf_zc_jj_unpaid;

    -- 更新绩效支出_间接_未支付
	SET NEW.jxzc_jj_unpaid = NEW.jxzc_zx_jj_unpaid + NEW.jxzc_zc_jj_unpaid;

    -- 更新其他支出_间接_未支付
	SET NEW.others_jj_unpaid = NEW.others_zx_unpaid + NEW.others_zc_unpaid;

    -- 更新管理费_间接_未支付
	SET NEW.glf_jj_unpaid = NEW.glf_zx_jj_unpaid + NEW.glf_zc_jj_unpaid;

    -- 更新房屋租赁费_间接_未支付
	SET NEW.fwzjf_jj_unpaid = NEW.fwzjf_zx_jj_unpaid + NEW.fwzjf_zc_jj_unpaid;

    -- 更新日常水电暖费_间接_未支付
	SET NEW.rcsdnf_jj_unpaid = NEW.rcsdnf_zx_jj_unpaid + NEW.rcsdnf_zc_jj_unpaid;

    -- 更新设备费_直接_未支付
	SET NEW.sbf_zj_unpaid = NEW.sbf_zx_zj_unpaid + NEW.sbf_zc_zj_unpaid;

    -- 更新业务费_直接_未支付
	SET NEW.ywf_zj_unpaid = NEW.ywf_zx_zj_unpaid + NEW.ywf_zc_zj_unpaid;

    -- 更新劳务费_直接_未支付
	SET NEW.lwf_zj_unpaid = NEW.lwf_zx_zj_unpaid + NEW.lwf_zc_zj_unpaid;

    -- 更新材料费_直接_未支付
	SET NEW.clf_zj_unpaid = NEW.clf_zx_zj_unpaid + NEW.clf_zc_zj_unpaid;

    -- 更新科研活动费_直接_未支付
	SET NEW.kyhdf_zj_unpaid = NEW.kyhdf_zx_zj_unpaid + NEW.kyhdf_zc_zj_unpaid;

    -- 更新科研服务费_直接_未支付
	SET NEW.kyfwf_zj_unpaid = NEW.kyfwf_zx_zj_unpaid + NEW.kyfwf_zc_zj_unpaid;

    -- 更新人员和劳务补助费_直接_未支付
	SET NEW.ryhlwbzf_zj_unpaid = NEW.ryhlwbzf_zx_zj_unpaid + NEW.ryhlwbzf_zc_zj_unpaid;

    -- 更新直接经费总额_未支付
	SET NEW.total_funds_zj_unpaid = NEW.sbf_zj_unpaid + NEW.ywf_zj_unpaid + NEW.lwf_zj_unpaid + NEW.clf_zj_unpaid + NEW.kyhdf_zj_unpaid + NEW.kyfwf_zj_unpaid + NEW.ryhlwbzf_zj_unpaid;

    -- 更新间接经费总额_未支付
	SET NEW.total_funds_jj_unpaid = NEW.jxzc_jj_unpaid + NEW.others_jj_unpaid + NEW.sbf_jj_unpaid + NEW.clf_jj_unpaid + NEW.glf_jj_unpaid + NEW.fwzjf_jj_unpaid + NEW.rcsdnf_jj_unpaid + NEW.zjzxf_jj_unpaid
									+ NEW.jxzc_zx_jj_unpaid + NEW.sjybcjf_jj_unpaid + NEW.cshyjgf_jj_unpaid + NEW.rldlf_jj_unpaid + NEW.bgf_jj_unpaid + NEW.yscbf_jj_unpaid + NEW.zscqswf_jj_unpaid + NEW.clsyf_jj_unpaid + NEW.chlf_jj_unpaid + NEW.hyhwf_jj_unpaid;

    -- 更新专项经费总额_未支付
	SET NEW.total_funds_zx_unpaid = NEW.sbf_zx_zj_unpaid + NEW.ywf_zx_zj_unpaid + NEW.lwf_zx_zj_unpaid + NEW.clf_zx_zj_unpaid + NEW.kyhdf_zx_zj_unpaid + NEW.kyfwf_zx_zj_unpaid + NEW.ryhlwbzf_zx_zj_unpaid
									+ NEW.zlf_zx_jj_unpaid + NEW.others_zx_unpaid + NEW.sbf_zx_jj_unpaid + NEW.clf_zx_jj_unpaid + NEW.glf_zx_jj_unpaid + NEW.fwzjf_zx_jj_unpaid + NEW.rcsdnf_zx_jj_unpaid + NEW.zlf_zx_jj_unpaid + NEW.sjybcjf_zx_jj_unpaid + NEW.cshyjgf_zx_jj_unpaid
									+ NEW.rldlf_zx_jj_unpaid + NEW.bgf_zx_jj_unpaid + NEW.yscbf_zx_jj_unpaid + NEW.zscqswf_zx_jj_unpaid + NEW.clsyf_zx_jj_unpaid + NEW.chlf_zx_jj_unpaid + NEW.hyhwf_zx_jj_unpaid + NEW.zjzxf_zx_jj_unpaid;

    -- 更新自筹经费总额_未支付
	SET NEW.total_funds_zc_unpaid = NEW.sbf_zc_zj_unpaid + NEW.ywf_zc_zj_unpaid + NEW.lwf_zc_zj_unpaid + NEW.clf_zc_zj_unpaid + NEW.kyhdf_zc_zj_unpaid + NEW.kyfwf_zc_zj_unpaid + NEW.ryhlwbzf_zc_zj_unpaid
									+ NEW.zlf_zc_jj_unpaid + NEW.others_zc_unpaid + NEW.sbf_zc_jj_unpaid + NEW.clf_zc_jj_unpaid + NEW.glf_zc_jj_unpaid + NEW.fwzjf_zc_jj_unpaid + NEW.rcsdnf_zc_jj_unpaid + NEW.zlf_zc_jj_unpaid + NEW.sjybcjf_zc_jj_unpaid + NEW.cshyjgf_zc_jj_unpaid
									+ NEW.rldlf_zc_jj_unpaid + NEW.bgf_zc_jj_unpaid + NEW.yscbf_zc_jj_unpaid + NEW.zscqswf_zc_jj_unpaid + NEW.clsyf_zc_jj_unpaid + NEW.chlf_zc_jj_unpaid + NEW.hyhwf_zc_jj_unpaid + NEW.zjzxf_zc_jj_unpaid;

    -- 更新项目经费总额_未支付
	SET NEW.total_funds_all_unpaid = NEW.total_funds_zj_unpaid + NEW.total_funds_jj_unpaid;

END