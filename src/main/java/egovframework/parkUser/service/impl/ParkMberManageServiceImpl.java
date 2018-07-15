package egovframework.parkUser.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.parkUser.service.ParkMberManageService;
import egovframework.parkUser.service.ParkMberManageVO;
import egovframework.parkUser.service.ParkUserDefaultVO;
@Service("parkMberManageServiceImpl")
public class ParkMberManageServiceImpl implements ParkMberManageService{
	
	@Resource(name="parkMberManageDAO")
	ParkMberManageDAO parkMberManageDAO;
	
	
    public void deleteMber(String i)throws Exception{
    	
    }
	
	public String inserMber(ParkMberManageVO parkMberManageVO)throws Exception{
		return "";
	}
	
	public ParkMberManageVO selectMber(String i)throws Exception{
		return null;
		
	}
	
	public Map<String, Object> selectMberList(ParkUserDefaultVO searchVO)throws Exception{
		List<ParkUserDefaultVO> result = parkMberManageDAO.selectMberList(searchVO);
		int cnt = parkMberManageDAO.selectMberListTotCnt(searchVO);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("resultList", result);
		map.put("resultCnt", Integer.toString(cnt));

		return map;
	}
	
	public int selectMberListTotCnt(ParkUserDefaultVO parkUserDefaultVO)throws Exception{
		return 0;
	}
	
	public ParkMberManageVO selectPassword(ParkMberManageVO parkMberManageVO)throws Exception{
		return null;
	}
	
	public List selectStplat(String i)throws Exception{
		return null;
	}
	
	public void updateMber(ParkMberManageVO parkMberManageVO)throws Exception{
		
	}
	
	public void updatePassword(ParkMberManageVO parkMberManageVO)throws Exception{
		
	}
	
}
