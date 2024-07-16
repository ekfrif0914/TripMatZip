package www.silver.tripMaster;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.silver.service.IF_ReviewService;
import www.silver.vo.CommentsVO;
import www.silver.vo.ReviewVO;

@Controller
public class ReviewController {

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	@Inject
	IF_ReviewService rservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "main";
	}

	@GetMapping("input")
	public String input() {

		return "inputForm";
	}

	@PostMapping("inputSave")
	public String inputSave(@ModelAttribute ReviewVO rvo) throws Exception {
		System.out.println(rvo.toString());
		rservice.insert(rvo);
		return "redirect:input";
	}

	@GetMapping("search")
	public String search(@RequestParam("sWord") String word, Model model) throws Exception {
		System.out.println(word);

		List<ReviewVO> sList = rservice.search("%" + word + "%");
		model.addAttribute("sWord", word);
		if (sList.size() != 0) {
			model.addAttribute("sList", sList);
			return "serList";
		} else {

			return "main";
		}
	}

	@PostMapping("delete")
	public String delete(@RequestParam("no") String no, @RequestParam("sWord") String sWord, Model model)
			throws Exception {
		System.out.println(no);
		System.out.println(sWord);
		rservice.delete(no);
		model.addAttribute("sWord", sWord);
		return "redirect:search";
	}

	@PostMapping("update")
	public String updateChang(@RequestParam("no") String no, @RequestParam("sWord") String sWord, Model model)
			throws Exception {
		System.out.println(no);
		ReviewVO updateList = rservice.updateChang(no);
		model.addAttribute("items", updateList);
		model.addAttribute("sWord", sWord);
		return "updateForm";
	}

	@PostMapping("updateSave")
	public String reviewUpdate(@ModelAttribute ReviewVO rvo, @RequestParam("sWord") String sWord, Model model)
			throws Exception {
		System.out.println(rvo.toString());
		rservice.update(rvo);
		model.addAttribute("sWord", sWord);
		return "redirect:search";
	}

	@GetMapping("rDetail")
	public String showDetail(@RequestParam("no") String no,@RequestParam("sWord") String word, Model model)
			throws Exception {
		System.out.println(no);
		ReviewVO showTable = rservice.detail(no);
		List<CommentsVO> comments = rservice.comment(no);
		model.addAttribute("rlist", showTable);
		model.addAttribute("cList", comments);
		model.addAttribute("sWord",word);
		model.addAttribute("no",no);
	
		return "commentForm";
	}
	
	@PostMapping("comSave")
	public String cInsert(@RequestParam("ny") String no,@RequestParam("sWord")String word,@ModelAttribute CommentsVO cvo, Model model) throws Exception {
		System.out.println(cvo.toString());
		System.out.println(no+"숫자");
		rservice.cInsert(cvo);
		model.addAttribute("no",no);
		model.addAttribute("sWord",word);
		return "redirect:rDetail";
	}
	
	@GetMapping("back")
	public String back(@RequestParam("sWord") String word,Model model) {
		model.addAttribute("sWord",word);
		return "redirect:search";
	}
	

}
