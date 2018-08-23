package com.myBoard.test.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("homeDao")
public class HomeDao extends AbstractDAO{
/*	
	protected Log log = LogFactory.getLog(HomeDao.class); 

	@Autowired
	private SqlSessionTemplate sqlSession;
*/
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>>  selectInfo(){
		return sqlSession.selectList("phone.selectInfo");
	}
}
