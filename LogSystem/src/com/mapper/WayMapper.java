package com.mapper;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.pojo.Way;
import java.util.List;
import java.util.Map;

public interface WayMapper {
	
    List<Way> selectAll(PageBounds pageBounds,Map hm);

    public void add(Way way);
    
 	public void update(Way way);
 
 	public void del(String id);
 	public Way selOne(String id);

	List<Way> selAllList();
	public int selCount(Map hm);


	List<Way> selOneWay(String id);


 	
}