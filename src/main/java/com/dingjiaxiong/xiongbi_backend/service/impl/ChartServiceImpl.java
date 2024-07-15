package com.dingjiaxiong.xiongbi_backend.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dingjiaxiong.xiongbi_backend.model.entity.Chart;
import com.dingjiaxiong.xiongbi_backend.service.ChartService;
import com.dingjiaxiong.xiongbi_backend.mapper.ChartMapper;
import org.springframework.stereotype.Service;

/**
* @author DingJiaxiong
* @description 针对表【chart(图表信息表)】的数据库操作Service实现
* @createDate 2024-07-08 15:50:52
*/
@Service
public class ChartServiceImpl extends ServiceImpl<ChartMapper, Chart>
    implements ChartService{

}




