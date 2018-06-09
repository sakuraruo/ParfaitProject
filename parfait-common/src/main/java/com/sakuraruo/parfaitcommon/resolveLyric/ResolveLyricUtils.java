package com.sakuraruo.parfaitcommon.resolveLyric;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ResolveLyricUtils {
    private static Lyric lyric=new Lyric();
    private static long currentTime=0;//存放临时时间
    private static String currentContent=null; //存放临时歌词
    private static HashMap<Long, String> maps=new HashMap<>();
    
    /**
     * 将歌词文件路径为参数
     * 路径返回输入流
     * .
     * 
     * @param path
     * @return
     * @throws FileNotFoundException
     * @author sakuraruo
     * 2018年5月10日 sakuraruo
     */
    public static InputStream readLyricFile(String path) throws  FileNotFoundException{
        File f=new File(path);
        InputStream ins=new FileInputStream(f); 
        return ins;
    }
    
    /**
     * 解析输入流 转换为Lyric对象
     * .
     * 
     * @param ins
     * @return
     * @throws IOException
     * @author sakuraruo
     * 2018年5月10日 sakuraruo
     */
    public static Lyric parse(InputStream ins) throws IOException{
        InputStreamReader inputStreamReader = new InputStreamReader(ins,"GBK");
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        String line=null;
        while((line=bufferedReader.readLine())!=null) {
                parseLine(line);
        }
        lyric.setInfos(maps);
        return lyric;
    }
    
    
    /**
     * 
     * 利用正则表达式解析歌词文件，转换为Lyric对象
     */
    public static void parseLine(String line) {
        //取得歌曲名
        if(line.startsWith("[ti:")) {
            String title=line.substring(4,line.length()-1);
            System.out.println("歌名为："+title);
            lyric.setTitle(title);
        }
        
        //取得歌手信息
        else if(line.startsWith("[ar:")) {
            String singer=line.substring(4,line.length()-1);
            System.out.println("歌手为"+singer);
            lyric.setSinger(singer);
        }
        
        //取得专辑信息
        else if(line.startsWith("[al:")) {
            String album=line.substring(4,line.length()-1);
            System.out.println("专辑为"+album);
            lyric.setAlbum(album);
        }
        
        else {
            String reg = "\\[(\\d{2}:\\d{2}\\.\\d{2})\\]";
            Pattern compile = Pattern.compile(reg);
            Matcher matcher = compile.matcher(line);
            
            //如果存在匹配项
            while(matcher.find()) {
                //得到的匹配的内容
                String msg=matcher.group();
                //得到这个匹配的索引
                int start=matcher.start();
                //得到匹配结束的索引
                int end=matcher.end();
                
                
                //这个匹配中的组数
                int groupCount=matcher.groupCount();
                //每个组中的内容
                for(int i=0;i<=groupCount;i++) {
                    String str=matcher.group(i);
                    if(i==1) {
                        //将第二组的内容设置为当前的一个时间点
                        currentTime=strToLong(str);
                    }
                }
                
                //得到的时间点后的内容
                String[] content=compile.split(line);
                //输出数组内容
                for(int i=0;i<content.length;i++) {
                    if(i==content.length-1) {
                        //将内容设置为当前内容
                        currentContent=content[i];
                    }
                }
                
                //设置时间点和内容映射
                maps.put(currentTime, currentContent);
                System.out.println("put---currentTime--->" + currentTime
                    + "----currentContent---->" + currentContent);
            }
        }
    }
    
    //将string转换为Long类型
    private static long strToLong(String str) {
        String[] s=str.split(":");
        int min=Integer.parseInt(s[0]);
        String[] s1=s[1].split("\\.");
        int sec=Integer.parseInt(s1[0]);
        int mill=Integer.parseInt(s1[1]);
        return min*60*1000+sec*1000+mill*10;
    }
    
    public static void main(String[] args) {
        try {
            ResolveLyricUtils.parse(ResolveLyricUtils.readLyricFile("C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\Answer.lrc"));
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    
}
