package com.ruoyi.project.domain.bo;

import lombok.Data;

@Data
public class ProjectUserBo {

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 项目成员角色
     */
    private String projectUserRole;
}