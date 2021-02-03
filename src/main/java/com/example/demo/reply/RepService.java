package com.example.demo.reply;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RepService {

	@Autowired
	private RepMapper mapper;

	public ArrayList<Reply> getReplyById(String writer) {
		// TODO Auto-generated method stub
		return mapper.getReplyById(writer);
	}

	public ArrayList<Reply> getReplyByNum(int num) {
		// TODO Auto-generated method stub
		return mapper.getReplyByNum(num);
	}
	
	public Reply getReply(int num) {
		return mapper.select(num);
	}

	public void addReply(Reply r) {
		mapper.insert(r);
	}

	public void delReply(int num) {
		mapper.delete(num);
	}
}
