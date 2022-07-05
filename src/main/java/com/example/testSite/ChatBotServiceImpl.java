package com.example.testSite;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.testSite.Entity.TableBot;
import com.example.testSite.Repository.ChatRepository;
import com.example.testSite.chatbox.Chatbot;

@Service
public class ChatBotServiceImpl implements ChatBotService {
	
	@Autowired
	private ChatRepository chatrepository;
	
	
	@Override
	public void saveChat(TableBot tablebot) {
		// TODO Auto-generated method stub
		chatrepository.save(tablebot);
	}


	@Override
	public List<TableBot> getAllChat() {
		// TODO Auto-generated method stub
		List<TableBot> tablebot = chatrepository.findAll();
		return tablebot;
	}
	
}
