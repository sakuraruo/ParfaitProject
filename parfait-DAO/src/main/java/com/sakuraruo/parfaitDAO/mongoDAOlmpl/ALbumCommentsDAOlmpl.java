package com.sakuraruo.parfaitDAO.mongoDAOlmpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.sakuraruo.parfaitDAO.mongoDAO.AlbumCommentsDAO;
import com.sakuraruo.parfaitDAO.mongoEntity.AlbumComments;

@Repository
public class ALbumCommentsDAOlmpl implements AlbumCommentsDAO{
    
    @Autowired
    MongoTemplate mongoTemlate;
    
    @Override
    public List<AlbumComments> findAll() {
        return mongoTemlate.findAll(AlbumComments.class);
    }

    @Override
    public void saveAlbumComments(AlbumComments albumComments) {
        mongoTemlate.save(albumComments);
        
    }

    @Override
    public void updateAlbumComments(AlbumComments albumComments) {
        Query query = new Query(Criteria.where("_id").is(albumComments.get_id()));
        Update update=new Update().set("comment_response", albumComments.getComment_response());
        mongoTemlate.updateFirst(query, update, AlbumComments.class);   
    }

    @Override
    public List<AlbumComments> findALbumCommentsById(String albumId) {
        Query query = new Query(Criteria.where("comment_album_id").is(Long.valueOf(albumId)));
        List<AlbumComments> albumComments=mongoTemlate.find(query, AlbumComments.class);
        return albumComments;
    }
    
}
