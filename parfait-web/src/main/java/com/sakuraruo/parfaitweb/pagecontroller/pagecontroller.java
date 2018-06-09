package com.sakuraruo.parfaitweb.pagecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pagecontroller {
    
    @RequestMapping("/index")
    public String index() {
        return "index";
    }
    @RequestMapping("/album")
    public ModelAndView album(ModelAndView modelAndView,@RequestParam(defaultValue="1",required=false)String albumId) {
        modelAndView.addObject("albumId",albumId);
        modelAndView.setViewName("album");
        return modelAndView;
    }
    @RequestMapping("/musicHall")
    public String musicHall() {
        return "musicHall";
    }
    @RequestMapping("/mymusic")
    public String mymusic() {
        return "mymusic";
    }
    @RequestMapping("/search")
    public ModelAndView search(ModelAndView modelAndView,@RequestParam(defaultValue="",required=false)String type,@RequestParam(defaultValue="",required=false)String msg) {
        modelAndView.addObject("type",type);
        modelAndView.addObject("msg",msg);
        modelAndView.setViewName("search");
        return modelAndView;
    }
    @RequestMapping("/single")
    public ModelAndView single(ModelAndView modelAndView,@RequestParam(defaultValue="1",required=false)String singleId) {
        modelAndView.addObject("singleId",singleId);
        modelAndView.setViewName("single");
        return modelAndView;
    }
    @RequestMapping("/songlist")
    public String songlist() {
        return "songlist";
    }
    
    @RequestMapping("/errorpage")
    public String errorPage() {
        return "errorPage";
    }
    
   
}
