package com.sakuraruo.parfaitDAO.mongoEntity;

import java.util.List;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class CommentsResponse {
    private String response_user_id;
    
    private String response_user_name;
    
    private List<String> response_content;
    
    private String create_time;
    
    private List<String> get_reply;

    public CommentsResponse(String response_user_id, List<String> response_content,
        String create_time, List<String> get_reply) {
        super();
        this.response_user_id = response_user_id;
        this.response_content = response_content;
        this.create_time = create_time;
        this.get_reply = get_reply;
    }
    
    

    public String getResponse_user_name() {
        return response_user_name;
    }



    public void setResponse_user_name(String response_user_name) {
        this.response_user_name = response_user_name;
    }



    public String getResponse_user_id() {
        return response_user_id;
    }

    public void setResponse_user_id(String response_user_id) {
        this.response_user_id = response_user_id;
    }

    

    public List<String> getResponse_Content() {
        return response_content;
    }

    public void setResponse_Content(List<String> response_content) {
        this.response_content = response_content;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public List<String> getGet_reply() {
        return get_reply;
    }

    public void setGet_reply(List<String> get_reply) {
        this.get_reply = get_reply;
    }
    
    
   
    
    
}
