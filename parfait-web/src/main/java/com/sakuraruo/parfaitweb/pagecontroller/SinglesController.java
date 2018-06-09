package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.model.Singles;
import com.sakuraruo.parfaitsingles.Service.ISinglesService;

@RestController
public class SinglesController {
    @Autowired
    ISinglesService singlesService;
    
    @RequestMapping("/singlesInfo")
    public List<Singles> findSinglesByAlbumId(@RequestParam(defaultValue="1")long albumId) throws Exception{
        return singlesService.findSingleByAlbumId(albumId);
    }
    
    @RequestMapping("/singleDetail")
    public Singles findSingleBySingleId(@RequestParam long singleId) throws Exception{
        return singlesService.findSingleBySingleId(singleId);
    }
    

}
