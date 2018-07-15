package egovframework.parkUser.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.ComDefaultCodeVO;
import egovframework.com.cmm.service.EgovCmmUseService;
import egovframework.parkUser.service.ParkMberManageService;
import egovframework.parkUser.service.ParkMberManageVO;
import egovframework.parkUser.service.ParkUserDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


public class ParkMberManageController {
	
	 @Resource(name = "propertiesService")
	 protected EgovPropertyService propertyService;

	@Resource(name="parkMberManageService")
	private ParkMberManageService parkMberManageService;
	
	@Resource(name="EgovCmmUseService")
	private EgovCmmUseService cmmUseService;
	
	@Autowired
    private DefaultBeanValidator beanValidator;
	
	
	public String deleteMber(String i,ParkUserDefaultVO parkUserDefaultVO,
			ModelMap model){
		return null;
	}
	
	
	public String insertMber(ParkMberManageVO parkMberManageVO,
			BindingResult bindingResult,ModelMap model){
		return null;
	}
	public String insertMberView(ParkUserDefaultVO parkUserDefaultVO,
			ParkMberManageVO parkMberManageVO,ModelMap model){
		return null;
	}
	public String sbscrbEntrprsMber(ModelMap model){
		return null;
	}
	public String sbscrbMber(ParkMberManageVO parkMberManageVO){
		return null;
	}
	
	@RequestMapping(value="/uss/umt/parkEgovMberManage.do")
	public String sbscrbMberView(@ModelAttribute("userSearchVO")ParkUserDefaultVO parkUserDefaultVO,
			ParkMberManageVO parkMberManageVO,
			@RequestParam Map<String,Object> commandMap,ModelMap model) throws Exception{
		
		ComDefaultCodeVO vo=new ComDefaultCodeVO();
		vo.setCodeId("COM022");
		List<?> passwordHint_result=cmmUseService.selectCmmCodeDetail(vo);
		vo.setCodeId("COM014");
		List<?> sexdstnCode_result=cmmUseService.selectCmmCodeDetail(vo);
		
		model.addAttribute("passwordHint_result", passwordHint_result);
		model.addAttribute("sexdstnCode_result", sexdstnCode_result);
		if(!"".equals(commandMap.get("realname"))){
			model.addAttribute("mberNm", commandMap.get("realname"));
			model.addAttribute("ihidnum", commandMap.get("ihidnum"));
		}
		if(!"".equals(commandMap.get("realName"))){
			model.addAttribute("mberNm", commandMap.get("realName"));
		}
		parkMberManageVO.setMberSttus("DEFAULT");
		return null;
	}
	
	
	public String selectMberList(ParkUserDefaultVO parkUserDefaultVO,
			ModelMap model)throws Exception {
		parkUserDefaultVO.setPageUnit(propertyService.getInt("pageUnit"));
		parkUserDefaultVO.setPageSize(propertyService.getInt("pageSize"));
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(parkUserDefaultVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(parkUserDefaultVO.getPageUnit());
		paginationInfo.setPageSize(parkUserDefaultVO.getPageSize());

		parkUserDefaultVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		parkUserDefaultVO.setLastIndex(paginationInfo.getLastRecordIndex());
		parkUserDefaultVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		Map<String, Object> map= parkMberManageService.selectMberList(parkUserDefaultVO);
		//int totCnt = Integer.parseInt((String)map.get("resultCnt"));
		
		return null;
	}
	public String updateMber(ParkMberManageVO parkMberManageVO,
			BindingResult bindingResult,ModelMap model){
		return null;
	}
	public String updateMberView(String s,ParkUserDefaultVO parkUserDefaultVO,
			ModelMap model){
		return null;
	}
	public String updatePassword(ModelMap model,Map<String,Object>m,
			ParkUserDefaultVO parkUserDefaultVO,ParkMberManageVO parkMberManageVO){
		return null;
	}
	public String updatePasswordView(ModelMap model,Map<String,Object>m,
			ParkUserDefaultVO parkUserDefaultVO,ParkMberManageVO parkMberManageVO){
		return null;
	}
}
