package www.silver.dao;

import java.util.List;

import www.silver.vo.CommentsVO;
import www.silver.vo.ReviewVO;

public interface IF_ReviewDAO {

	public void insert(ReviewVO rvo)throws Exception;
	
	public List<ReviewVO> search(String sWord)throws Exception;
	
	public void delete(String del) throws Exception;
	
	public ReviewVO updateChang(String up) throws Exception;
	
	public void update(ReviewVO rvo)throws Exception;
	
	public ReviewVO detail(String no) throws Exception;
	
	public List<CommentsVO> comment(String no)throws Exception;
	
	public void cInsert(CommentsVO cvo)throws Exception;
}
