package com.ruoyi.ip.domin.bo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.constant.DateConstants;
import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import com.ruoyi.common.enums.IntellectualPropertyStatus;
import com.ruoyi.common.enums.IntellectualPropertyType;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.List;

/**
 * @author bailingnan
 * @date 2023/12/29
 */
@Data
public class IntellectualPropertyBO {
    /**
     * 知识产权id
     */
    @NotNull(message = "知识产权id不能为空", groups = {EditGroup.class})
    private Long ipId;
    /**
     * 项目id
     */
    private Long projectId;
    /**
     * 知识产权名
     */
    @NotBlank(message = "知识产权名称不能为空")
    @NotNull(message = "项目id不能为空", groups = {AddGroup.class, EditGroup.class})
    private String ipName;
    /**
     * 知识产权类别,国内发明专利0、软件著作权1、论文2、标准3
     */
    private IntellectualPropertyType ipType;
    /**
     * 知识产权状态,专利受理0，专利授权1，软著已获取2，标准正在申报3，标准已通过4，论文已发表5
     */
    private IntellectualPropertyStatus ipStatus;
    /**
     * 获得日期
     */
    @JsonFormat(pattern = DateConstants.YYYY_MM_DD)
    private LocalDate ipDate;

    /**
     * 知识产权成员id列表
     */
    private List<Long> userIdList;

    /**
     * 知识产权附件id列表
     */
    private List<Long> ossIdList;
}