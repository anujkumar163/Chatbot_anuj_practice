package com.example.testSite.chatbox;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.testSite.ChatBotService;

import com.example.testSite.Entity.TableBot;



@Controller
public class Chatbot {

	@Autowired
	public ChatBotService chatbotservice;
		
	@RequestMapping("/show")
	public String show() {
		return "Chatbot";
	}
	
	
	
	@RequestMapping("/save")
	public String save(@ModelAttribute("ioc") TableBot tablebot , ModelMap model) {
		chatbotservice.saveChat(tablebot);
		model.addAttribute("tablebot", tablebot);
		System.out.println(tablebot.getAns());
		System.out.println(tablebot.getQue());
		System.out.println(tablebot.getChat());
		return "Chatbot";
	}
	
	@RequestMapping("/listAll")
	public String listAll(ModelMap model) {
		List<TableBot> tablebot = chatbotservice.getAllChat();
		model.addAttribute("tablebot",tablebot);
		return "Chatbot";
	}
	
	
	
	
	
	
	
	
	
	
	
}
