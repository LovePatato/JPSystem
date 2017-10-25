package com.mapper;

import com.pojo.Way_detail;
import java.math.BigDecimal;
import java.util.List;

public interface Way_detailMapper {
    
    List<Way_detail> selectByWay_Id(String id);

    public void del(String id);

    
    public void add(Way_detail way_detail);
    public void update(Way_detail way_detail);
    
    int deleteByPrimaryKey(BigDecimal id);

    int insert(Way_detail record);

    int insertSelective(Way_detail record);

    Way_detail selUP(Way_detail way_detail);
    Way_detail selDown(Way_detail way_detail);
 

    int updateByPrimaryKeySelective(Way_detail record);

    int updateByPrimaryKey(Way_detail record);
}