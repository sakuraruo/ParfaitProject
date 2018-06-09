package com.sakuraruo.parfaitDAO.mongoEntity;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="album_comments")
public class AlbumComments {
    @Id
    private String _id;
    
    private String comment_type;
    
    private long comment_album_id;
    
    private long comment_user_id;
    
    private String comment_user_name;
    private String comment_content;
    
    private String create_time;
    
    @DBRef  
    private List<CommentsResponse> comment_response;
    

    
    
   
    public String getComment_user_name() {
        return comment_user_name;
    }

    public void setComment_user_name(String comment_user_name) {
        this.comment_user_name = comment_user_name;
    }

    public List<CommentsResponse> getComment_response() {
        return comment_response;
    }

    public void setComment_response(List<CommentsResponse> comment_response) {
        this.comment_response = comment_response;
    }


    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String getComment_type() {
        return comment_type;
    }

    public void setComment_type(String comment_type) {
        this.comment_type = comment_type;
    }

    public long getComment_album_id() {
        return comment_album_id;
    }

    public void setComment_album_id(long comment_album_id) {
        this.comment_album_id = comment_album_id;
    }

    

    public long getComment_user_id() {
        return comment_user_id;
    }

    public void setComment_user_id(long comment_user_id) {
        this.comment_user_id = comment_user_id;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }
    /*@PersistenceConstructor 
    public AlbumComments(String _id, String comment_type, long comment_album_id, long user_id,
        String comment_content, String create_time, List<CommentsResponse> comment_response) {
        super();
        this._id = _id;
        this.comment_type = comment_type;
        this.comment_album_id = comment_album_id;
        this.user_id = user_id;
        this.comment_content = comment_content;
        this.create_time = create_time;
        this.comment_response = comment_response;
    }*/

    
    
    
    

    
    
    
    
    
}
