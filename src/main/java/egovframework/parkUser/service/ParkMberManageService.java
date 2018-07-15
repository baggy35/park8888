package egovframework.parkUser.service;

import java.util.List;
import java.util.Map;

public interface ParkMberManageService {
	
	public void deleteMber(String i)throws Exception;
	
	public String inserMber(ParkMberManageVO parkMberManageVO)throws Exception;
	
	public ParkMberManageVO selectMber(String i)throws Exception;
	
	public Map<String, Object>selectMberList(ParkUserDefaultVO parkUserDefaultVO)throws Exception;
	
	public int selectMberListTotCnt(ParkUserDefaultVO parkUserDefaultVO)throws Exception;
	
	public ParkMberManageVO selectPassword(ParkMberManageVO parkMberManageVO)throws Exception;
	
	public List selectStplat(String i)throws Exception;
	
	public void updateMber(ParkMberManageVO parkMberManageVO)throws Exception;
	
	public void updatePassword(ParkMberManageVO parkMberManageVO)throws Exception;
	
	
}
