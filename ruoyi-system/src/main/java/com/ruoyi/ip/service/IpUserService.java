package com.ruoyi.ip.service;

import java.util.List;

/**
 * @author bailingnan
 * @date 2024/1/2
 */
public interface IpUserService {
    void insertIpUserList(Long ipId, List<Long> userIdList);

    void deleteIpUserByIpId(Long ipId);
}