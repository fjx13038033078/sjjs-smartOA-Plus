package com.ruoyi.project.domain.vo;

import com.ruoyi.common.enums.DiplomaTypeEnum;
import com.ruoyi.common.enums.JobTitleEnum;
import com.ruoyi.common.enums.ProjectUserRoleEnum;
import lombok.Data;

import java.util.List;

/**
 * 项目成员VO
 *
 * @author bailingnan
 * @date 2024/02/06
 */
@Data
public class ProjectUserVo {

    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Long userId;

    /**
     * 用户姓名
     */
    private String nickName;

    /**
     * 用户职称
     */
    private JobTitleEnum jobTitle;

    /**
     * 用户学历
     */
    private DiplomaTypeEnum diploma;

    /**
     * 用户邮箱
     */
    private String email;

    /**
     * 手机号码
     */
    private String phonenumber;

    /**
     * 部门名称
     */
    private String deptName;

    /**
     * 项目成员角色,同一成员可能在同一项目中扮演多个角色（0：项目负责人；1：公司负责人；2：部门负责人；3：科研管理负责人；4：普通成员；5：未知角色）
     */
    private List<ProjectUserRoleEnum> projectUserRoles;

    /**
     * 对应的项目总数
     */
    private int userProjectNum;

    /**
     * 该成员参与的国家级项目总数
     */
    private int userNationNum;

    /**
     * 该成员参与的省部级项目总数
     */
    private int userProvincialNum;

    /**
     * 该成员参与的自研项目总数
     */
    private int userEnterpriseNum;

    /**
     * 当前对应的项目总数
     */
    private int userProjectNumNow;

    /**
     * 当前该成员参与的国家级项目总数
     */
    private int userNationNumNow;

    /**
     * 当前该成员参与的省部级项目总数
     */
    private int userProvincialNumNow;

    /**
     * 当前该成员参与的自研项目总数
     */
    private int userEnterpriseNumNow;

}
