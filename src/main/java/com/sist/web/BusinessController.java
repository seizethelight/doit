package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessController {
	@GetMapping("business/sales")
	public String sales()
	{
		return "business/sales";
	}
}
