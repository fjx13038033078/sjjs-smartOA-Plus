package com.ruoyi.web.controller.statistic;

import com.ruoyi.project.service.ProjectBaseInfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 项目统计数据图表
 */
@Slf4j
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/statistic/project")
public class ProjectStatisticController {

    private final ProjectBaseInfoService projectBaseInfoService;

    /**
     * 项目类型及对应数量
     * @return
     */
    //@SaCheckPermission("statistic:project:level")
    @GetMapping("/level")
    public Map<String, Integer> getProjectLevelStatistics() {
        return projectBaseInfoService.getProjectLevelStatistics();
    }

}