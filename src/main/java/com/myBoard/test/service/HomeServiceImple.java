package com.myBoard.test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.myBoard.test.dao.HomeDao;

@Service("homeService")
public class HomeServiceImple implements HomeService{
	
	@Resource(name="homeDao")
	private HomeDao homeDao;

	@Override
	public List<Map<String, Object>> selectInfo() throws Exception{
		return homeDao.selectInfo();
	}

}
