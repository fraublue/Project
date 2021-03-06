package kr.co.project.persistence;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.SearchCriteria;

@Repository
public class CommonBoardDAO {
	@Inject
	  private SqlSession session;
	
	

	  private static String namespace = "kr.co.project.BoardMapper";

	  public List<CommonBoardVO> takerListAll() throws Exception {

	    return session.selectList(namespace + ".takerListAll");
	  }
	  public List<CommonBoardVO> giverListAll() throws Exception {
		  return session.selectList(namespace+".giverListAll");
	  }
	  public int userTypeListCount(int type) throws Exception {
		  return session.selectOne(namespace+".userTypeListCount",type);
	  }
	  
	  public List<CommonBoardVO> favoriteTypeList(FavoriteType ftype) throws Exception{
		  System.out.println(session.selectList(namespace+".favoriteTypeList",ftype));
		  Criteria cri= new Criteria();		  
		  return session.selectList(namespace+".favoriteTypeList",ftype);
	  }
	  
	  public int favoriteListCount(FavoriteType ftype) throws Exception{
		  return session.selectOne(namespace+".favoriteListCount",ftype);
	  }
	  
//	  public List<CommonBoardVO> userBoardList(String user_id) throws Exception{
//		  return session.selectList(namespace+".userBoardList",user_id);
//	  }
	  public int takerWriteBoard(CommonBoardVO vo) throws Exception{
		  return session.insert(namespace+".takerBoardWrite",vo);
	  }
	
	  public int getWritedBoardID(String user_id) throws Exception{
		  return session.selectOne(namespace+".getWritedBoardID",user_id);
	  }
	  
	  //////////////////////
	  // 20190521 ts
	  ///////
	  public List<CommonBoardVO> listAll() throws Exception {
			return session.selectList(namespace+".listAll");
			
		}
	  public List<CommonBoardVO> listUser(String user_id) throws Exception {
			return session.selectList(namespace+".listUser",user_id);
		}
	  public CommonBoardVO commmonboard(int board_id) throws Exception {
			return session.selectOne(namespace+".commonboard", board_id);
		}
	  public GiverBoardVO giverboard(int board_id) throws Exception {
			return session.selectOne(namespace+".giverboard", board_id);
		}
	  
	  public void insertcomment(CommentVO vo) {
		  session.insert(namespace+".insertcomment", vo);
	  };
		public List<CommentVO> commentlistboardid(int board_id) throws Exception{
			return session.selectList(namespace+".commentlistboardid",board_id);
		};
		
	  //////////////////////
		
		public void updateboardtaker(CommonBoardVO cbvo) throws Exception{
			session.update(namespace+".updateboardtaker",cbvo);
		}
		
		public void deleteboard(String user_id, int board_id) throws Exception{
			CommonBoardVO cbvo = new CommonBoardVO();
			cbvo.setUser_id(user_id);
			cbvo.setBoard_id(board_id);
			session.delete(namespace+".deleteboard",cbvo);
		}
		
		public void deletecomment(int comment_id) throws Exception{
			session.delete(namespace+".deletecomment",comment_id);
		}
		
		public void deletecomment_boardid(int board_id) throws Exception{
			session.delete(namespace+".deletecomment_boardid", board_id);
		}
		public void deletecommonboard_boardid(int board_id) throws Exception{
			session.delete(namespace+".deletecommonboard_boardid",board_id);
		}
		public void deletecomment_userid(String user_id) throws Exception{
			session.delete(namespace+".deletecomment_userid",user_id);
		}
		public void deletecommonboard_userid(String user_id) throws Exception{
			session.delete(namespace+".deletecommonboard_userid",user_id);
		}
		public int updateBoardThumbImg(CommonBoardVO vo) throws Exception{
			  return session.update(namespace+".updateBoardThumbImg", vo);
		  }
		
}
