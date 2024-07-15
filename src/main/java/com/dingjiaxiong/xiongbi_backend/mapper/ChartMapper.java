package com.dingjiaxiong.xiongbi_backend.mapper;

import com.dingjiaxiong.xiongbi_backend.model.entity.Chart;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.MapKey;

import java.util.List;
import java.util.Map;

/**
 * @author DingJiaxiong
 * @description 针对表【chart(图表信息表)】的数据库操作Mapper
 * @createDate 2024-07-08 15:50:52
 * @Entity com.dingjiaxiong.springbootinit.model.entity.Chart
 */
public interface ChartMapper extends BaseMapper<Chart> {


    List<Map<String, Object>> queryChartData(String querySql);

}




