package www.silver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_ReviewDAO;
import www.silver.vo.CommentsVO;
import www.silver.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements IF_ReviewService {
	@Inject
	IF_ReviewDAO rdao;

	@Override
	public void insert(ReviewVO rvo) throws Exception {
		rdao.insert(rvo);

	}

	@Override
	public List<ReviewVO> search(String sWord) throws Exception {
		return rdao.search(sWord);
	}

	@Override
	public void delete(String del) throws Exception {
		rdao.delete(del);
		
	}

	@Override
	public ReviewVO updateChang(String up) throws Exception {
		
		return rdao.updateChang(up);
	}

	@Override
	public void update(ReviewVO rvo) throws Exception {
		rdao.update(rvo);
		
	}

	@Override
	public ReviewVO detail(String no) throws Exception {
		return rdao.detail(no);
	}

	@Override
	public List<CommentsVO> comment(String no) throws Exception {
		
		return rdao.comment(no);
	}

	@Override
	public void cInsert( CommentsVO cvo) throws Exception {
		rdao.cInsert(cvo);
		
	}

}
