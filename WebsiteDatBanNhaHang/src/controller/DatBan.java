package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DatBan {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index.html";
	}
	
	@RequestMapping(value = "/dat-ban", method =  RequestMethod.GET)
	public String datBan() {
		return "book-table.html";
	}
}
