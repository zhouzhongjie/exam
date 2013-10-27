package com.exam.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//yjesefcu
public class TestAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {
		     HttpSession session = request.getSession();
		     String username = request.getParameter("username");
		     String pwd = request.getParameter("pwd");
		     System.out.println(username+"/"+pwd);
		     
//		     request.setCharacterEncoding("ISO8859-1");
		     
//		     byte[] str2 = username.getBytes("UTF-8");
//		     String ad=request.getParameter("username");    
//		     byte[] temp3 = ad.getBytes("UTF-8");    
//		     String str = new String(temp3); 
		     
//		     byte[] tempByte = username.getBytes("ISO8859_1");
//		     String str = new String(tempByte,"UTF-8");
//		     
		     //String str1=new String(request.getParameter("username").getBytes("ISO8859-1"),"UTF-8");
		     System.out.println(username+"/"+pwd);
//		     System.out.println(str);
//		     System.out.println(str1);
		     String json = "[{id:'ç»?',order:1,dataObject:{match:'Group AAAAA'},userObject:{isGroup:true}},"+
		  "{id:'match_1',pid:'ç»?',dataObject:{match:'South Africa - MexicoChinas',datetime:'11/06 16:00',result:'1:1 (0:0)',venue:'Johannesburg - JSC'}},"+
		  /*
		  {id:'match_2',pid:'ç»?',dataObject:{match:'Uruguay - France',datetime:'11/06 20:30',result:'0:0',venue:'Cape Town'}},
		  {id:'match_17',pid:'ç»?',dataObject:{match:'South Africa - Uruguay',datetime:'16/06 20:30',result:'Background',venue:'Tshwane/Pretoria'}},
		  {id:'match_18',pid:'ç»?',dataObject:{match:'France - Mexico',datetime:'17/06 20:30',result:'Background',venue:'Polokwane'}},
		  {id:'match_33',pid:'ç»?',dataObject:{match:'Mexico - Uruguay',datetime:'22/06 16:00',result:'Background',venue:'Rustenburg'}},
		  {id:'match_34',pid:'ç»?',dataObject:{match:'France - South Africa',datetime:'22/06 16:00',result:'Background',venue:'Mangaung/Bloemfontein'}},
		  {id:'group_b',order:2,isLeaf:false,dataObject:{match:'Group B'},userObject:{isGroup:true,jsonName:'jsonNodes_B'}},
		  {id:'group_c',order:3,isLeaf:false,dataObject:{match:'Group C'},userObject:{isGroup:true,jsonName:'jsonNodes_C'}},
		  {id:'group_d',order:4,isLeaf:false,dataObject:{match:'Group D'},userObject:{isGroup:true,jsonName:'jsonNodes_D'}}
		  {id:'group_e',isLeaf:false,dataObject:{match:'Group E'},userObject:{isGroup:true,jsonName:'jsonNodes_D'}}
		  {id:'group_f',isLeaf:false,dataObject:{match:'Group F'}},
		  {id:'group_g',isLeaf:false,dataObject:{match:'Group G'}},
		  {id:'group_h',isLeaf:false,dataObject:{match:'Group H'}}*/
		"];";
		     request.setAttribute("json", json);
		     
		     response.setContentType("text/html; charset=gb2312");
	         ServletContext sc = getServletContext();
	         RequestDispatcher rd = null;
	         rd = sc.getRequestDispatcher("/index.jsp");      //å®????¡µ??	         rd.forward(request, response);
		     
		     
		     return;
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {

		     doGet(request, response);
		}

}
