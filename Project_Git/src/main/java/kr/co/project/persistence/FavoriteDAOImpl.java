package kr.co.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.UserHasFavoriteVO;

@Repository
public class FavoriteDAOImpl implements FavoriteDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace="kr.co.project.FavoriteMapper";
	
	@Override
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception {
		session.insert(namespace+".userinsertfavorite",fvo);

	}

	@Override
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception {
		session.delete(namespace+".userdeletefavorite",fvo);
		
	}

	@Override
	public List<Integer> selectfavo_user(String user_id) throws Exception {
		return session.selectList(namespace+".selectfavo_user",user_id);
		}

}
