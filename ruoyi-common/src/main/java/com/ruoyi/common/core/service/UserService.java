package com.ruoyi.common.core.service;

import com.ruoyi.common.core.domain.entity.SysUser;

import java.util.List;

/**
 * 通用 用户服务
 *
 * @author Lion Li
 */
public interface UserService {

    /**
     * 通过用户ID查询用户账户
     *
     * @param userId 用户ID
     * @return 用户账户
     */
    String selectUserNameById(Long userId);

    /**
     * 通过用户ID查询用户昵称
     *
     * @param userId 用户ID
     * @return 用户昵称
     */
    String selectNickNameById(Long userId);

    void updateUserAvatarIP(String oldEndPoint, String newEndPoint);

    List<SysUser> filterActiveUserIdList(List<Long> userIdList);

}
