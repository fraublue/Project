package kr.co.project.service;

import java.util.List;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.CommonBoardVO;

public interface BookmarkService {

	public void insertBookmark(BookmarkVO vo);
	public void deleteBookmark(BookmarkVO vo);
	public boolean checkExistBookmark(int board_id, String user_id);
	public List<CommonBoardVO> bookmarkList(String user_id);
	public void deletemark_boardid(int board_id);
	
	
}
