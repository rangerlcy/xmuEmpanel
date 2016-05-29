package com.model.page;
import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
public class PageTag extends SimpleTagSupport {
	
	private Page page;
	private String searchForm = "searchForm";
	
    private String pageId = "pageId";  
    
    @Override
    public void doTag() throws JspException, IOException {
    	StringBuffer strBuf = new StringBuffer("");
    	strBuf.append("<div style='width:100%'>当前显示")
    	.append((page.getCurrPage()-1)*page.getPageSize()+1)
    	.append("-");
    	int end = page.getCurrPage()*page.getPageSize();
    	if(end > page.getTotalSize()) {
    		end = page.getTotalSize();
    	}
    	strBuf.append(end).append("条，每页")
    	.append(page.getPageSize()).append("条，共")
    	.append(page.getTotalSize())
    	.append("条记录.   ");
    		
    	strBuf.append("跳转到第 <input style='width:40px' value='"+page.getCurrPage()+"' id='"+pageId+"PageNum'/>/"+page.getTotalPages()+"页    ");
    	strBuf.append("<a role='button' class='btn blue mini' href='javascript:").append(pageId).append("Go($(\"#"+pageId+"PageNum\").val());' title='跳转'>跳转</a> ");
    	
    	if(page.isHasPre()) {
    		strBuf.append("<a role='button' class='btn blue mini' href='javascript:").append(pageId).append("Go("+(page.getCurrPage()-1)+");' title='上一页'>上一页</a> ");
    	}
    	if(page.isHasNext()) {
    		strBuf.append("<a role='button' class='btn blue mini' href='javascript:").append(pageId).append("Go("+(page.getCurrPage()+1)+");'title='下一页'>下一页</a> ");
    	}
    	
    	if(page.getCurrPage() != 1) {
    		strBuf.append("<a role='button' class='btn blue mini' href='javascript:").append(pageId).append("Go(1);' title='首页'>首页</a> ");
    	}
    	
    	if(page.getCurrPage() != page.getTotalPages()) {
    		strBuf.append("<a role='button' class='btn blue mini' href='javascript:").append(pageId).append("Go("+page.getTotalPages()+");' title='尾页'>尾页</a> ");
    	}
    	strBuf.append("</div>");
    	
    	writeToJsp(strBuf.toString());
    }
    
    /**
     * 写到JSP页面
     * @param str
     * @throws IOException
     */
    private void writeToJsp(String str) throws IOException{
    	JspContext ctx = getJspContext();
        JspWriter out = ctx.getOut();
		out.print(str);
    }
    
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getSearchForm() {
		return searchForm;
	}

	public void setSearchForm(String searchForm) {
		this.searchForm = searchForm;
	}

	public String getPageId() {
		return pageId;
	}

	public void setPageId(String pageId) {
		this.pageId = pageId;
	}
}
