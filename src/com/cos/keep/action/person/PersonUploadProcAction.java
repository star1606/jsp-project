package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PersonUploadProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String realPath =
				request.getServletContext().getRealPath("static/image");
		
		int id;
		String fileName = null;
		String contextPath = request.getServletContext().getContextPath();
		String userProfile = null; // DB에 들어갈 변수 : 위치
		
		System.out.println("realPath: " + realPath);
		System.out.println("contextPath: " + contextPath);
		
		
		try {
			MultipartRequest multi = new MultipartRequest
					(
							request,
							realPath,
							1024*1024*2,
							"UTF-8",
							new DefaultFileRenamePolicy()
							
					);
			fileName = multi.getFilesystemName("userProfile");
			System.out.println("파일이름: " + fileName);
			id = Integer.parseInt(multi.getParameter("id"));
			
			userProfile = contextPath+"/static/image/" + fileName;
			
			PersonRepository personRepository =
					PersonRepository.getInstance();
			int result = personRepository.uploadPicture(id, userProfile);
			
			if(result == 1) {
				HttpSession session = request.getSession();
				Person principal = personRepository.findById(id);
				session.setAttribute("principal", principal);
				
				Script.href("사진 변경 완료", "/keep/memo/main.jsp", response);
				
			} else {
				Script.back("사진 변경 실패", response);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			Script.getMessage("오류: " + e.getMessage(), response);
		}
		
		
		
		
		
				
						
		
			

			
			
			
			
			
	
	}
	}
