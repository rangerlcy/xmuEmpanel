package com.controller.staff;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sun.misc.BASE64Encoder;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;

@Controller
//报名拦截器
@RequestMapping("/staff")
public class BaseController {
	@RequestMapping("/staff_index.do")
	public String staff_index(Model model){
		
		return "staff/staff_index";
	}
	
	@RequestMapping("/staff_info.do")
	public String staff_info(HttpServletRequest request, HttpServletResponse response, Model model){

		return "staff/staff_info";
	}
	
	@RequestMapping("/staff_register.do")
	public String staff_register(Model model){
		
		return "staff/staff_register";
	}
	
	//这里实现了对word进行写
	@RequestMapping("/staff_download_table.do")
	public String staff_download_table(Model model) throws Exception{
		// 要填充的数据, 注意map的key要和word中${xxx}的xxx一致
        Map<String,String> dataMap = new HashMap<String,String>();
        dataMap.put("名字", "张三");
        dataMap.put("性别", "男");
        dataMap.put("出生", "1990-01-11");
        dataMap.put("照片", getImageStr());  
      //Configuration用于读取ftl文件
        Configuration configuration = new Configuration();
        configuration.setDefaultEncoding("utf-8");
        
        /*以下是两种指定ftl文件所在目录路径的方式, 注意这两种方式都是
         * 指定ftl文件所在目录的路径,而不是ftl文件的路径
         */
        //指定路径的第一种方式(根据某个类的相对路径指定)
        //configuration.setClassForTemplateLoading(this.getClass(),"");
        
        //指定路径的第二种方式,指明.ftl模板文件所在文件夹
        configuration.setDirectoryForTemplateLoading(new File("C:\\Users\\Paradise\\Desktop"));
        
        // 输出文档路径及名称
       File outFile = new File("C:\\Users\\Paradise\\Desktop\\info.doc");
       
       //以utf-8的编码读取ftl文件
    	 Template t =  configuration.getTemplate("info.ftl","utf-8");
    	 Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"),10240);
         t.process(dataMap, out);
         out.close();
		return "staff/staff_index";
	}
	
	//对图片进行base64编码,之后可以写进word转成的xml
	public String getImageStr() {
        String imgFile = "C:\\Users\\Paradise\\Pictures\\1.jpg";
        InputStream in = null;
        byte[] data = null;
        try {
            in = new FileInputStream(imgFile);
            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        BASE64Encoder encoder = new BASE64Encoder();
        return encoder.encode(data);
    }
	
	//报名人员个人信息---照片数据
	@RequestMapping("/staff_photo_data.do")
	@ResponseBody
	public String getStaffInfo(Model model,String photo_data,@RequestParam("photo_file") MultipartFile multipartFile) throws IOException{
		//前端发过来的文件转输入流，然后read进输出流，最后生成文件
		InputStream in = multipartFile.getInputStream();
		File outFile = new File("C:\\Users\\Paradise\\Desktop\\1.jpg");
		FileOutputStream out = new FileOutputStream(outFile);
		byte[] b = new byte[1024];
		while((in.read(b)) != -1){
			out.write(b);
		}
		in.close();
		out.close();
		return "success";
	}
}
