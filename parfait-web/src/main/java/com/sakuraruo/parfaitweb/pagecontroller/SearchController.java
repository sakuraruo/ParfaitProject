package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;
import com.sakuraruo.parfaitsearch.service.ISearchService;

@RestController
public class SearchController {
    @Autowired
    ISearchService searchService;
    
    @RequestMapping("/searchAlbum")
    public List<Album> searchAlbum(String albumName) throws Exception{
        return searchService.searchAlbum(albumName);
    }
    
    @RequestMapping("/searchSingle")
    public List<Singles> searchSingle(String singlesName) throws Exception{
        return searchService.searchSingle(singlesName);
    }
}
