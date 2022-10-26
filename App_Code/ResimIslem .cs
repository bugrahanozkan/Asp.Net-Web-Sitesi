using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;

/// <summary>
/// Summary description for resimboyutlandir
/// </summary>
public class ResimIslem
{
    public ResimIslem()
    {
        ///<summary>
        /// Fiziksel adresi gonderilen resmi oranını değiştirmeden yeniden boyutlandırır.
        ///</summary>
        ///<param name="MaxBoy">Yükseklik yada Genişlik için istediğiniz maximum pixel değeri</param>
        ///<param name="orjResim">Orjinal resmin fiziksel adresi</param>
        ///<returns></returns>
        /// 
        /// 
    }
    public Image ResimOlustur(int MaxBoy, string orjResim)
    {

        int boy, yuk;
        Image resim = Image.FromFile(orjResim);
        Size boyut = resim.Size;
        if (MaxBoy >= boyut.Height && MaxBoy >= boyut.Width)
            return null;
        double oran = (double)boyut.Width / boyut.Height;
        if (boyut.Width >= boyut.Height)
        {
            boy = MaxBoy;
            yuk = (int)(boy / oran);
        }
        else
        {
            yuk = MaxBoy;
            boy = (int)(yuk * oran);
        }

        Image th = new Bitmap(boy, yuk, resim.PixelFormat);
        Graphics g = Graphics.FromImage(th);
        g.CompositingQuality = CompositingQuality.HighQuality;
        g.SmoothingMode = SmoothingMode.HighQuality;
        g.InterpolationMode = InterpolationMode.HighQualityBicubic;
        Rectangle dikdortgen = new Rectangle(0, 0, boy, yuk);
        g.DrawImage(resim, dikdortgen);
        resim.Dispose();
        return th;
    }
    
}