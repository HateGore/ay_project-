package com.example.demo.reply;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReplyController {
	@Autowired
	private RepService service;

	@RequestMapping("/rep/write")
	public String write(Reply r) {
		System.out.println("ReplyController.write()");
		service.addReply(r);
		return "redirect:/rep/list?board_num=" + r.getBoard_num();
	}

	// 댓글 목록
	@ResponseBody
	@RequestMapping(value = "/rep/list")
	public List<Reply> list(int board_num) {
		System.out.println("ReplyController.list()");
		return service.getReplyByBoardNum(board_num);
	}

	//댓글 수정 - 안됌
	@RequestMapping("/rep/edit")
	public void edit(int board_num) {
		System.out.println("ReplyController.edit()");
	}

	
	//댓글 삭제 - 안됌
	@RequestMapping(value = "/rep/del", method = RequestMethod.POST)
	public Map<String, Object> del(int num) {
		System.out.println("ReplyController.del()");

		Map<String, Object> result = new HashMap<>();

		service.delReply(num);
		try {
			service.delReply(num);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
		}
		return result;
	}
}
