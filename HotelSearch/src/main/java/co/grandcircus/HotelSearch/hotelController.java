package co.grandcircus.HotelSearch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.HotelSearch.dao.hotelDao;

@Controller
public class hotelController {
	
	@Autowired
	private hotelDao dao;
	
//	@RequestMapping("/")
//	public List<String> hotel = dao.listCity(){
//	ModelAndView mv = new ModelAndView("index");
//	mv.addObject("city", String);
//	 }

	@RequestMapping("/")
	public ModelAndView showhome() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping("/result")
	public ModelAndView showresult(
			@RequestParam("city") String city )
	       
	{
		    ModelAndView mv = new ModelAndView("result-page");
		    mv.addObject("city", city);
		    mv.addObject("list", dao.findByCity(city));
			return mv;
	}

}
