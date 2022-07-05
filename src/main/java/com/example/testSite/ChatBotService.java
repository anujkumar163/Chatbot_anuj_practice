package com.example.testSite;

import java.util.List;

import com.example.testSite.Entity.TableBot;
import com.example.testSite.chatbox.Chatbot;

public interface ChatBotService {

	public void saveChat(TableBot tablebot);

	public List<TableBot> getAllChat();

	

}
