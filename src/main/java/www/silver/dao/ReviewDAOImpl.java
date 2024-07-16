package www.silver.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.CommentsVO;
import www.silver.vo.ReviewVO;

@Repository
public class ReviewDAOImpl implements IF_ReviewDAO{

	private static String mapperQuery="www.silver.dao.ReviewDAO";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(ReviewVO rvo) throws Exception {
	
		sqlSession.insert(mapperQuery+".insert",rvo);
	}

	@Override
	public List<ReviewVO> search(String sWord) throws Exception {
		
		return sqlSession.selectList(mapperQuery+".search", sWord);
		
	}

	@Override
	public void delete(String del) throws Exception {
		
		sqlSession.delete(mapperQuery+".delete",del);
	}

	@Override
	public ReviewVO updateChang(String up) throws Exception {
		
		return sqlSession.selectOne(mapperQuery+ ".updateChang", up);
	}

	@Override
	public void update(ReviewVO rvo) throws Exception {
		sqlSession.update(mapperQuery+".update",rvo);
		
	}

	@Override
	public ReviewVO detail(String no) throws Exception {
		
		return sqlSession.selectOne(mapperQuery+ ".detail", no);
	}

	@Override
	public List<CommentsVO> comment(String no) throws Exception {
		
		return sqlSession.selectList(mapperQuery+".comment", no);
	}

	@Override
	public void cInsert(CommentsVO cvo) throws Exception {
		sqlSession.insert(mapperQuery+".cInsert",cvo);
		
	}
	
	

}