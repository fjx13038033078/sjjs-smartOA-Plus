package com.ruoyi.project.mapper;

import com.ruoyi.common.core.mapper.BaseMapperPlus;
import com.ruoyi.project.domain.ProjectMilestone;
import com.ruoyi.project.domain.vo.ProjectMilestoneVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 项目大事记表 数据层
 *
 * @author fanjiaxing
 */
@Mapper
public interface ProjectMilestoneMapper extends BaseMapperPlus<ProjectMilestoneMapper, ProjectMilestone, ProjectMilestoneVo> {
}
