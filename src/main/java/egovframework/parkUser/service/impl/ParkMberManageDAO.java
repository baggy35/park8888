package egovframework.parkUser.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.parkUser.service.ParkMberManageVO;
import egovframework.parkUser.service.ParkUserDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
@Repository("parkMberManageDAO")
public class ParkMberManageDAO extends EgovAbstractDAO{
	public void deleteMber(String i){
		
	}
	public String insertMber(ParkMberManageVO parkMberManageVO){
		return null;
	}
	public ParkMberManageVO selectMber(String i){
		return null;
	}
	public List<ParkUserDefaultVO>selectMberList(ParkUserDefaultVO vo)throws Exception{
		return (List<ParkUserDefaultVO>) list("ParkMberManageDAO.selectMberList", vo);
	}
	public int selectMberListTotCnt(ParkUserDefaultVO parkUserDefaultVO){
		return 0;
	}
	public ParkMberManageVO selectPassword(ParkMberManageVO parkMberManageVO){
		return null;
	}
	public List selectStplat(String i){
		return null;
	}
	public void updateMber(ParkMberManageVO parkMberManageVO){
		
	}
	public void updatePassword(ParkMberManageVO parkMberManageVO){
		
	}
}
