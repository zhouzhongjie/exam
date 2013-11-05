package com.exam.action;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.XMLOutputter;

import com.exam.biz.UserBiz;
import com.exam.mapper.UserMapper;
import com.exam.po.User;
import com.exam.util.MyBatisUtil;

import com.exam.weixin.getter.WxInfoGetter;
import com.exam.weixin.getter.WxInfoPoster;
import com.exam.weixin.message.WxMenu;
import com.exam.weixin.message.WxMenuItem;
import com.exam.weixin.message.WxRequest;
import com.exam.weixin.message.WxRequestItf;
import com.exam.weixin.message.WxResponse;
import com.exam.weixin.util.WxError;
import com.exam.weixin.util.WxMsgConstants;

/**
 * 微信所有接口入口
 * @author slz 
 * 2013-7-26 上午11:01:08
 */
public class PushManage {
	
	
	
	public String PushManageXml(InputStream is) throws JDOMException{
		String returnStr = "";
		String toName = "";
		String FromName = "";
		String type = "";
		String content = "";
		String con = "";
		String event = "";//自定义按钮事件请求
		
		WxRequestItf request = new WxRequest(is);
		toName = request.getToName();
		FromName = request.getFromName();
		type = request.getMsgType();
		
		if(type.equals(WxMsgConstants.MSGTYPE_EVENT))
		{
			event = request.getAttribute(WxMsgConstants.ATTR_EVENT_EVENT);
			if(event.equals("subscribe")){//此为关注事件
				content = "您好，欢迎关注我！";
			}
<<<<<<< HEAD
			else if(event.equals("CLICK"))
			{
				String eventKey = request.getAttribute(WxMsgConstants.ATTR_EVENT_EVENTKEY);
				content = WxMenuItem.getClickAction(eventKey);
=======
		}else if(type.equals("text")){
			if(con.equals("help")||con.equals("帮助")||con.equals("?")||con.equals("？")){
				content = "帮助中心\n\n";
			}else if(con.equals("bind")||con.equals("绑定")){
				content = "点击 <a target='_blank' href=\'\'>绑定账户</a>";
			}else if(con.equals("deng")||con.equals("绑定")){
				content = "好ok";
			}else if(con.startsWith("age")||con.equals("绑定")){
				String name = con.substring(3);
				
				content = new UserBiz().getUserAge(name);
				
			}else if(con.startsWith("ck")||con.startsWith("CK")){
				String order_id = "0";
				con.toLowerCase();
				if(con.startsWith("ck")){
					order_id = con.substring(con.indexOf("ck")+2);
				}else if(con.startsWith("CK")){
					order_id = con.substring(con.indexOf("CK")+2);
				}
				if(!"".equals(order_id)){
					StringBuffer sb = new StringBuffer();
					
					sb.append("订单详情...\n");
					content = sb.toString();
				}else{
					content = "我不懂，你再解释一下吧!";
				}
				
			}else{
				content = "我不懂，你再解释一下吧!";
>>>>>>> branch 'master' of https://github.com/zhouzhongjie/exam.git
			}
		}
		else if(type.equals(WxMsgConstants.MSGTYPE_TEXT))
		{
			con = request.getAttribute(WxMsgConstants.ATTR_TEXT_CONTENT);
			if(con.equals("help")||con.equals("帮助")||con.equals("?")||con.equals("？")){
				content = "帮助中心:\n1:发送语音会回复同样的语音\n2:发送图片会回复同样的图片\n3:发送model或模板，会回复图文消息";
			}else if(con.startsWith("age")||con.equals("绑定")){
				String name = con.substring(3);				
				content = new UserBiz().getUserAge(name);				
			}else if (con.equals("model") || con.equals("模板"))
			{
				return createNews(toName, FromName);				
			} else if (con.equals("info"))
			{
				content = "openId:" + FromName;
			} else if (con.equals("music") || con.equals("音乐"))
			{
//				returnStr = WxResponse.createMusicResponse(toName, FromName, "风之誓言", "听歌可以让人心情愉悦",
//						"http://bcs.duapp.com/weixindandan11/ding.mp3?sign=MBO:8522d4c3c036a19ec3afc6d63af1c2fe:i5gMmiHi9lDpuTGhLDz3yLoYIfE%3D&response-content-disposition=filename*=utf8''ding.mp3&response-cache-control=private",  
//						"http://bcs.duapp.com/weixindandan11/ding.mp3?sign=MBO:8522d4c3c036a19ec3afc6d63af1c2fe:i5gMmiHi9lDpuTGhLDz3yLoYIfE%3D&response-content-disposition=filename*=utf8''ding.mp3&response-cache-control=private", 
//						"http://bcs.duapp.com/lcyfirstapp/2013-10-07_182020.jpg?sign=MBO:D85996a4f15fb09f8645e2014800b44d:htiFNlE9JgRSbKMqPWU71fNP8cU%3D&response-content-disposition=filename*=utf8''2013-10-07_182020.jpg&response-cache-control=private");
//				return returnStr;			
			} else if (con.equals("token"))
			{				
				content = (String)WxInfoGetter.updateAccessToken().getObject();
			} else if (con.equals("menu") || con.equals("菜单"))
			{
				content = postMenu();				
			}
		}
		else if (type.equals(WxMsgConstants.MSGTYPE_VOICE))
		{
			String mediaId = request.getAttribute(WxMsgConstants.ATTR_VOICE_MEDIAID);
			content = "收到一条语音消息,mediaId=" + mediaId;
			return WxResponse.createVoiceResponse(toName, FromName, mediaId).toString();
		}
		else if (type.equals(WxMsgConstants.MSGTYPE_LOCATION))
		{
			String locationX = request.getAttribute(WxMsgConstants.ATTR_LOCATION_X);
			String locationY = request.getAttribute(WxMsgConstants.ATTR_LOCATION_Y);
			content = "已收到你的位置:x=" + locationX + ", y=" + locationY;
		}
		else if (type.equals(WxMsgConstants.MSGTYPE_VIDEO))
		{
			content = "收到视频";
			String mediaId = request.getAttribute(WxMsgConstants.ATTR_VIDEO_MEDIAID);
			return WxResponse.createVideoResponse(toName, FromName, mediaId, mediaId).toString();
		}
		else if (type.equals(WxMsgConstants.MSGTYPE_IMAGE))
		{
			content = "收到图片";
			String mediaId = request.getAttribute(WxMsgConstants.ATTR_IMAGE_MEDIAID);
			return WxResponse.createImageResponse(toName, FromName, mediaId).toString();
		}
		else if (type.equals(WxMsgConstants.MSGTYPE_LINK))
		{
			content = "收到链接";
		}
			
		returnStr = WxResponse.createTextResponse(toName, FromName, content).toString();
		
		return returnStr;
	}
	
	private String createNews(String toName, String fromName)
	{
		String[] titles = {"模板展示", "模板2", "模板3", "模板4"};
		String[] descriptions = {"九宫格", "四方格", "错落格", "文字"};
		String[] picUrls = new String[4];
		String[] subUrls = new String[4];
		
		for (int i=0; i<4; i++)
		{
			picUrls[i] = "http://bcs.duapp.com/lcyfirstapp/2013-10-07_182020.jpg?sign=MBO:D85996a4f15fb09f8645e2014800b44d:htiFNlE9JgRSbKMqPWU71fNP8cU%3D&response-content-disposition=filename*=utf8''2013-10-07_182020.jpg&response-cache-control=private";
			subUrls[i] = "http://www.weixinkaka.com/index.php/wap/site/424/";
		}
		
		return WxResponse.createNewsResponse(toName, fromName, titles, 
				descriptions, picUrls, subUrls).toString();
	}	

	
//	
	private String postMenu()
	{		
		WxError error = WxInfoPoster.postMenu(createMenu());
		return error.getCode() + ":" + error.getDesp();
	}

	private static final String[] MENU = {"menu1", "menu2"};
	private static final String[] SUB_MENU = {"sub1", "sub2"};
	private static int curMenuCount = 0;
	
	protected WxMenu createMenu()
	{
		//创建一级菜单：显示进展
		WxMenuItem menu1 = WxMenuItem.createMenuItem("进展", false);
		menu1.setClick("MAIN_MENU_DEVELOPMENT", WxMenuItem.CONTENT_DEVELOP);
		
		//创建一级菜单：显示计划
		WxMenuItem menu2 = WxMenuItem.createMenuItem("计划", false);
		menu2.setClick("MAIN_MENU_PLAN", WxMenuItem.CONTENT_PLAN);
		
		//创建一级菜单：帮助
		WxMenuItem menu3 = WxMenuItem.createMenuItem("帮助", false);

		//创建帮助的二级菜单：使用说明
		WxMenuItem subMenu1 = WxMenuItem.createMenuItem("使用说明", true);
		subMenu1.setClick("MAIN_MENU_HELP_HELP", WxMenuItem.CONTENT_HELP);
		WxMenuItem subMenu2 = WxMenuItem.createMenuItem("支持的命令", true);
		subMenu2.setClick("MAIN_MENU_HELP_SUPPORTS", WxMenuItem.CONTENT_SUPPORT_CMD);
		menu3.addChild(subMenu1);
		menu3.addChild(subMenu2);
		
		//将子菜单放入主菜单中
		WxMenu menu = new WxMenu();
		menu.addSubMenu(menu1);
		menu.addSubMenu(menu2);
		menu.addSubMenu(menu3);
		return menu;
		
//		//创建菜单 begin
//		String menuName = MENU[curMenuCount%2];		
//		String subMenuName = SUB_MENU[curMenuCount % 2];
//		curMenuCount++;
//		WxMenuItem submenus[] = new WxMenuItem[9];
//		for (int i=0; i<submenus.length; i++)
//		{
//			submenus[i] = WxMenuItem.createMenuItem(subMenuName + (i+1), true);
//			if (null == submenus[i])
//			{
//				return null;
//			}
//			submenus[i].setKeyOrUrl(WxMenuItem.TYPE_CLICK, "submenu" + (i+1));
//		}
//		
//		WxMenuItem menus[] = new WxMenuItem[3];
//		WxMenu menu = new WxMenu();
//		for (int i=0; i<menus.length; i++)
//		{
//			menus[i] = WxMenuItem.createMenuItem(menuName + (i+1), false);
//			if (menus[i] == null)
//			{
//				return null;
//			}
//			menus[i].setKeyOrUrl(WxMenuItem.TYPE_CLICK, "menu" + (i+1));
//			menus[i].addChild(submenus[3*i]);
//			menus[i].addChild(submenus[3*i + 1]);
//			menus[i].addChild(submenus[3*i + 2]);
//			menu.addSubMenu(menus[i]);
//		}
//		//创建菜单 end
//		return menu;
	}
	
	public static void main(String[] args)
	{
//		WxError error = new WxError("");
//		System.out.println(error.getCode() + ", " + error.getDesp());
//		WxResult result = new WxResult(error, "");
		
		System.out.println(new PushManage().createMenu().getJsonObject());
		System.out.println(WxMenuItem.getClickAction("MAIN_MENU_HELP_SUPPORTS"));
		
//		System.out.println(WxClickMenuEvent.valueOf("PLAN"));
	}
}
