package com.exam.action;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jdom.JDOMException;

import sun.security.provider.SHA;

import com.exam.message.PushManage;

/**
 * ΢��ͳһ���
 * @author slz 
 * 2013-7-26 ����10:17:08
 */
public class WeixinAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -245336916206011504L;

	public WeixinAction() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	/**
	 * ΢�Ź���ƽ̨  ��Ϊ��������֤���
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * ΢�Ź���ƽ̨  ���нӿ����
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String TOKEN = "sun";//Token
		String signature = request.getParameter("signature");//SHA1�����ַ���
		String timestamp = request.getParameter("timestamp");//ʱ��
		String nonce = request.getParameter("nonce");//�����
		String echoStr = request.getParameter("echostr");//����ַ���
		if(echoStr!=null){
		        String[] a = {TOKEN,timestamp,nonce};
		        Arrays.sort(a);//��������
		        String str = "";
		        for(int i=0;i<a.length;i++){
		                str += a[i];
		        }

//		        String echo = new SHA1().getDigestOfString(str.getBytes());//SHA1����
//
//		        if(echo.equals(signature)){
//		                out.print(echoStr);
//		        }else{
//		                out.print("123");
//		        }
		                out.print(echoStr);
		}else{
		        try {
		                InputStream is = request.getInputStream();
		                PushManage push = new PushManage();
		                String getXml = push.PushManageXml(is);
		                System.out.println("getXml:"+getXml);
		                out.print(getXml);
		        } catch (JDOMException e) {
		                out.print("");
		        }
		}
		out.flush();
		out.close();
	}

}
