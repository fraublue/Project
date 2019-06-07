package kr.co.project.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.ContentImgVO;
import kr.co.project.domain.UploadDTO;
import kr.co.project.domain.UserVO;
import kr.co.project.service.BoardService;
import kr.co.project.service.UploadService;
import kr.co.project.service.UserService;



@Controller
//@RequestMapping("/board/*")
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private UploadService service;

	@Inject
	private BoardService bservice;
	
	@Inject
	private UserService uservice;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody int imageWrite(@RequestParam("files") MultipartFile[] multi, @RequestParam("board_id") int board_id,
			Model model) throws Exception {
		// public String imageWrite(@ModelAttribute("formData") UploadDTO udto,Model
		// model) throws Exception {
		logger.info("//upload call");
		int result = 0;
		UploadDTO udto = new UploadDTO();
		udto.setBoard_id(board_id);
		udto.setMulti(multi);
		List<ContentImgVO> list = udto.makeFile(uploadPath);
		for (ContentImgVO ctnimg : list) {
			result = service.contentImgWrite(ctnimg);
			if (result < 0) {
				logger.info("error");
				break;
			}
		}
		if (result > 0) {
			String img_name = service.getFirstImg(board_id);
			CommonBoardVO cbvo = bservice.commmonboard(board_id);
			cbvo.setThumb_img(img_name);
			logger.info("commonboardvo" + cbvo);
			bservice.updateBoardThumbImg(cbvo);
		}
		return 1;
	}
	
	@RequestMapping(value = "/uploaduser", method = RequestMethod.POST)
	public String userimgupload(@RequestParam("files") MultipartFile file, @RequestParam("user_id")String user_id) throws Exception{
		logger.info("�����̸� : " + file.getOriginalFilename());
		logger.info("���� ũ�� : " + file.getSize());
		logger.info("content type : " + file.getContentType());
		logger.info("user_id : " + user_id );
		
		//���� ���� ���� ( DB + ���� ) 
		String filename = uservice.getthumb(user_id);
		//uservice.deletethumb(user_id);
		File fileuplo = new File(uploadPath,filename);
		fileuplo.delete();
		
		//���ο� ���� ���ε� 		
		String savedname =uploadFile(file.getOriginalFilename(), file.getBytes());
//		File target = new File(uploadPath,savedname);
//		FileCopyUtils.copy(file.getBytes(), target);
		uservice.updatethumb(savedname,user_id);
		
		return "forward:/searchuser.do?user_id="+user_id;
	}
	
	private String uploadFile(String originalname,byte[] fileData) throws Exception{
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString()+"_"+originalname;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	
	
	

}
