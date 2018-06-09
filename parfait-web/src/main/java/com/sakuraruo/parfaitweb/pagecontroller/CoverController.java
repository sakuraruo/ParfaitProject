package com.sakuraruo.parfaitweb.pagecontroller;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sakuraruo.parfaitDAO.model.Cover;
import com.sakuraruo.parfaitcommon.dynamicImage.DynamicImageUtils;
import com.sakuraruo.parfaitcover.service.ICoverService;

@Controller
public class CoverController {
    @Autowired
    ICoverService coverService;
    
    @RequestMapping("/coverInfo")
    public void IOImage(@RequestParam String coverId,@RequestParam String width,@RequestParam String height,HttpServletRequest req,HttpServletResponse res) throws NumberFormatException, Exception {
        res.setHeader("Content-Type","image/jpg");
        ServletOutputStream out = null;  
        Cover cover=this.findCoverById(Integer.valueOf(coverId));
        out=res.getOutputStream();
        out.write(DynamicImageUtils.DynamicImage(cover.getCoverPath(),width,height));
        out.flush();
        out.close();
    }
    
    @ResponseBody
    @RequestMapping("/cover")
    public Cover findCoverById(long coverId) throws Exception{
        return coverService.findCoverById(coverId);
    }
}
