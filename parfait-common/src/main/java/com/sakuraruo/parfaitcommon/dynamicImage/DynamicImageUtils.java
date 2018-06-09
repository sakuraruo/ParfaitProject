package com.sakuraruo.parfaitcommon.dynamicImage;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;

/**
 * 自动修改图片尺寸并输出流
 * .
 * 
 * @版权：福富软件 版权所有 (c) 2011
 * @author sakuraruo
 * @version Revision 1.0.0
 * @see:
 * @创建日期：2018年5月12日
 * @功能说明：
 *
 */
public class DynamicImageUtils {
    
    public static byte[] DynamicImage(String path,String newWidth,String newHeight) throws FileNotFoundException,IOException {
        InputStream is=new FileInputStream(new File(path));
        OutputStream os =new ByteArrayOutputStream();
        BufferedImage oldImage= ImageIO.read(is);
        
        BufferedImage newImage=new BufferedImage(Integer.valueOf(newHeight), Integer.valueOf(newHeight), BufferedImage.TYPE_INT_BGR);
        Graphics graphic=newImage.createGraphics();
        graphic.drawImage(oldImage, 0, 0, Integer.valueOf(newHeight),Integer.valueOf(newHeight),null);
        ImageIO.write(newImage,"jpg", os);
        os.flush();
        is.close();
        os.close();
        ByteArrayOutputStream b=(ByteArrayOutputStream) os;
        return b.toByteArray();
    }
    
    public static void main(String[] args) {
        try {
            DynamicImageUtils.DynamicImage("C:\\Users\\sakuraruo\\Pictures\\1.jpg", "50", "50");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
}
