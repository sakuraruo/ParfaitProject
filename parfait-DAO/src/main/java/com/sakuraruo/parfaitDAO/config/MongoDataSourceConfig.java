package com.sakuraruo.parfaitDAO.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.data.mongo.MongoDataAutoConfiguration;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.mongodb.MongoClient;

@Configuration
@EnableAutoConfiguration(exclude={MongoAutoConfiguration.class, MongoDataAutoConfiguration.class})
@ComponentScan
@EnableMongoRepositories
public class MongoDataSourceConfig extends AbstractMongoConfiguration{
    @Value("${mongo.database}")
    private String dbname;
    
    @Value("${mongo.host}")
    private String dbhost;
    
    @Value("${mongo.port}")
    private String dbport;
    
    @Value("${mongo.username}")
    private String username;
    
    @Value("${mongo.password}")
    private String password;
    

    
    public MongoDataSourceConfig(){
        if(null == dbport || "".equalsIgnoreCase(dbport.trim())){
            dbport = "27017";
        }
    }



    @Override
    public MongoClient mongoClient() {
        MongoClient mongoClient=null;
        try {
            mongoClient=new MongoClient(dbhost, Integer.valueOf(dbport));
            System.out.println("mongodb connect sucessful");
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return mongoClient;
    }



    @Override
    protected String getDatabaseName() {
        return this.dbname;
    }

    
}
