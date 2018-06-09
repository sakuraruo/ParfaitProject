package com.sakuraruo.parfaitcommon.resolveLyric;

public class LyricData {
    public int type;  
    public String Time; // time of string format  
    public long TimeMs; // time of long format ms  
    // public char TimeHour; // hour of time  
    // public char TimeMinute; // minute of time  
    // public char TimeSecond; // second of time  
    // public char TimeMilliSecond; // millisecond of time  
    public String LrcLine; // one line lrc  
    public int getType() {
        return type;
    }
    public void setType(int type) {
        this.type = type;
    }
    public String getTime() {
        return Time;
    }
    public void setTime(String time) {
        Time = time;
    }
    public long getTimeMs() {
        return TimeMs;
    }
    public void setTimeMs(long timeMs) {
        TimeMs = timeMs;
    }
    public String getLrcLine() {
        return LrcLine;
    }
    public void setLrcLine(String lrcLine) {
        LrcLine = lrcLine;
    }
    
    
}
