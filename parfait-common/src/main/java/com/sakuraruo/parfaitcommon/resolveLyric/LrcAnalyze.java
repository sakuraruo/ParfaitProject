package com.sakuraruo.parfaitcommon.resolveLyric;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.sakuraruo.parfaitcommon.resolveLyric.LyricData;

public class LrcAnalyze {  
    
    /** 
     * [ar:艺人名] [ti:曲名] [al:专辑名] [by:编者（指编辑LRC歌词的人）] [offset:时间补偿值] 
     * 其单位是毫秒，正值表示整体提前，负值相反。这是用于总体调整显示快慢的。 
     * */  
    // parse taget artist  
    private final String TagAr = "[ar:";  
  
    // perse taget tittle  
    private final String TagTi = "[ti:";  
  
    // perse target album  
    private final String TagAl = "[al:";  
  
    // perse target author of the lrc  
    private final String TagBy = "[by:";  
  
    // perse taget offset  
    private final String TagOff = "[offset:";  
  
    // record the file  
    private FileInputStream filein;  
  
    // record the file  
    private File file;  
  
    // get lrc artist  
    public static final int ARTIST_ZONE = 0;  
  
    // get lrc tittle  
    public static final int TITTLE_ZONE = 1;  
  
    // get lrc album  
    public static final int ALBUM_ZONE = 2;  
  
    // get lrc author  
    public static final int AOTHOR_ZONE = 3;  
  
    // get lrc offset  
    public static final int OFFSET_ZONE = 4;  
  
    // get lrc  
    public static final int LRC_ZONE = 5;  
  
    // lrc data contract  
    
  
    // record analyzed lrc  
    private List<LyricData> LrcList;  
  
    /** 
     * constract 
     * */  
    public LrcAnalyze(File file) {  
        try {  
            filein = new FileInputStream(file);  
  
            this.file = file;  
  
            LrcList = new ArrayList<>();  
  
            LrcAnalyzeStart();  
        } catch (FileNotFoundException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
  
    /** 
     * constract 
     * */  
    public LrcAnalyze(String path) {  
        try {  
            filein = new FileInputStream(path);  
  
            file = new File(path);  
  
            LrcList = new ArrayList<LyricData>();  
  
            LrcAnalyzeStart();  
        } catch (FileNotFoundException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
  
    private long LrcAnalyzeTimeStringToValue(String time) {  
        // System.out.println(time.substring(0, time.lastIndexOf(":")));  
        // System.out.println(time.substring(time.indexOf(":") + 1,  
        // time.lastIndexOf(".")));  
        // System.out.println(time.substring(time.indexOf(".") + 1));  
  
        long minute = Integer  
                .parseInt(time.substring(0, time.lastIndexOf(":")));  
  
        long second = Integer.parseInt(time.substring(time.indexOf(":") + 1,  
                time.lastIndexOf(".")));  
  
        long millisecond = Integer  
                .parseInt(time.substring(time.indexOf(".") + 1));  
  
        return (long) (minute * 60 * 1000 + second * 1000 + millisecond);  
    }  
  
    private void LrcAnalyzeLine(String ContentLine) {  
  
        if (ContentLine.indexOf(TagAr) != -1) {// whether artist or not  
            LyricData lrcdata = new LyricData();  
            lrcdata.type = ARTIST_ZONE;  
            lrcdata.LrcLine = ContentLine.substring(  
                    ContentLine.indexOf(':') + 1, ContentLine.lastIndexOf(']'));  
            // System.out.println(lrcline.LrcLine);  
            LrcList.add(lrcdata);  
        } else if (ContentLine.indexOf(TagAl) != -1) {// whether album or not  
            LyricData lrcdata = new LyricData();  
            lrcdata.type = ALBUM_ZONE;  
            lrcdata.LrcLine = ContentLine.substring(  
                    ContentLine.indexOf(':') + 1, ContentLine.lastIndexOf(']'));  
            // System.out.println(lrcline.LrcLine);  
            LrcList.add(lrcdata);  
        } else if (ContentLine.indexOf(TagTi) != -1) {// whether tittle or not  
            LyricData lrcdata = new LyricData();  
            lrcdata.type = TITTLE_ZONE;  
            lrcdata.LrcLine = ContentLine.substring(  
                    ContentLine.indexOf(':') + 1, ContentLine.lastIndexOf(']'));  
            // System.out.println(lrcline.LrcLine);  
            LrcList.add(lrcdata);  
        } else if (ContentLine.indexOf(TagBy) != -1) {// whether author or not  
            LyricData lrcdata = new LyricData();  
            lrcdata.type = AOTHOR_ZONE;  
            lrcdata.LrcLine = ContentLine.substring(  
                    ContentLine.indexOf(':') + 1, ContentLine.lastIndexOf(']'));  
            // System.out.println(lrcline.LrcLine);  
            LrcList.add(lrcdata);  
        } else if (ContentLine.indexOf(TagOff) != -1) {// whether offset or not  
            LyricData lrcdata = new LyricData();  
            lrcdata.type = OFFSET_ZONE;  
            lrcdata.LrcLine = ContentLine.substring(  
                    ContentLine.indexOf(':') + 1, ContentLine.lastIndexOf(']'));  
            // System.out.println(lrcline.LrcLine);  
            LrcList.add(lrcdata);  
        } else {// lrc content  
            String[] cut = ContentLine.split("]");  
            if (cut.length >= 2) {  
                for (int i = 0; i < cut.length - 1; i++) {  
                    LyricData lrcdata = new LyricData();  
                    lrcdata.type = LRC_ZONE;  
                    lrcdata.Time = cut[i]  
                            .substring(ContentLine.indexOf('[') + 1);  
                    lrcdata.TimeMs = LrcAnalyzeTimeStringToValue(lrcdata.Time);  
                    lrcdata.LrcLine = cut[cut.length - 1];  
                    // System.out.println("------" + i + "-----"  
                    // + ">>>>>>>" + lrcdata.Time  
                    // + ">>>>>>>" + lrcdata.LrcLine  
                    // + ">>>>>>>" + lrcdata.TimeMs);  
                    LrcList.add(lrcdata);  
                }  
            }  
        }  
    }  
  
    private void LrcAnalyzeStart() {  
        try {  
            // new memory for file content  
            byte[] ContentForByte = new byte[(int) file.length()];  
            
            // read file content  
            filein.read(ContentForByte);  
  
            // cover byte to string  
            String ContentForString = new String(ContentForByte,"GBK");  
  
            String[] ContentLine = ContentForString.split("\n");  
  
            for (int i = 0; i < ContentLine.length; i++) {  
                // System.out.println(ContentLine[i]);  
                LrcAnalyzeLine(ContentLine[i]);  
            }  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
  
    public List<LyricData> LrcGetList() {  
        return LrcList;  
    }  
    
    public static void main(String[] args) {
        LrcAnalyze lrcAnalyze = new LrcAnalyze("C:\\\\\\\\Users\\\\\\\\sakuraruo\\\\\\\\Desktop\\\\\\\\ParfaitProject\\\\\\\\parfait-web\\\\\\\\src\\\\\\\\main\\\\\\\\webapp\\\\\\\\WEB-INF\\\\\\\\static\\\\\\\\video\\\\\\\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\\\\\After All~綴る想い~ (After All~谱写的心意~).lrc");
        List<LyricData> lrc =lrcAnalyze.LrcGetList();
        for(LyricData l:lrc) {
            System.out.println(l.LrcLine);
        }
    }
}  
