package erp.paging;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import erp.board.DTO.BoardAnonymousDTO;
import erp.board.service.BoardAnonymousService;

@Controller
public class PagingController {
	/*@Autowired
	BoardAnonymousService aboardservice;
	@RequestMapping("list.do")
	public ModelAndView list(@RequestParam(defaultValue="title")String searchOption,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1")int curPage) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		//레코드의 갯수 계산
		int count = aboardservice.countArticle(searchOption,keyword);
		
		//페이지 나누기 관련처리 
		BoardPagerDTO boardPager = new BoardPager(count,curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		
		List<BoardDTO> list = boardservice.listAll(start,end,searchOption,keyword);
		
		//데이터를 맵에 저장
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", list);	//list
		map.put("count",count);	//레코드의 갯수
		map.put("searchOption", searchOption);	//검색옵션
		map.put("keyword", keyword);	//검색키워드
		map.put("boardPager", boardPager);
		
		mav.addObject("map",map);
		mav.setViewName("board/list");
		return mav;
		
	}*/
}
