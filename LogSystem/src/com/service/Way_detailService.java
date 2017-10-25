package com.service;

import java.util.List;

import com.pojo.Way_detail;

public interface Way_detailService {

	void del(String id);

	void update(Way_detail way);

	List<Way_detail> getList(String id);

	void add(Way_detail way_detail);

	Way_detail selUP(Way_detail way_detail);
	Way_detail selDown(Way_detail way_detail);
}
