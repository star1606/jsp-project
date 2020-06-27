package com.cos.keep.action.memo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Person;
import com.cos.keep.repository.MemoRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;


public class MemoDeleteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		BufferedReader br = request.getReader();
		
		String input = null;
		
		StringBuilder sb = new StringBuilder();
		
		while((input = br.readLine())!= null) {
				sb.append(input);
		}
		
		System.out.println(sb.toString());
		
		Gson gson = new Gson();
		
		Memo memo = gson.fromJson(sb.toString(), Memo.class);
		
		MemoRepository memoRepository =
				MemoRepository.getInstance();
		
		
		int result = memoRepository.save(memo);
		System.out.println(result);
	
	
		if(result == 1) {
			List<Memo> memos = memoRepository.findAll(memo.getPersonId());
			String MemoJson = gson.toJson(memos);
			Script.outJson(MemoJson, response);
		
		} else {
			
			Script.outJson(result+"", response);
		}
		
	
					
		}
		
	}

	
	
	

