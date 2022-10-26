using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Web;

public class resimyukle
{
    public static void yukle(FileUpload fu, string yer, int Ksize, string dosyaadi)
        {
            System.Drawing.Image orjinalFoto = null;
            HttpPostedFile jpeg_image_upload = fu.PostedFile;
            orjinalFoto = System.Drawing.Image.FromStream(jpeg_image_upload.InputStream);

            
            System.Drawing.Bitmap islenmisFotograf = null;
            System.Drawing.Graphics grafik = null;

            int hedefGenislik = Ksize;
            int hedefYukseklik = Ksize;
            int new_width, new_height;

            new_height = (int)Math.Round(((float)orjinalFoto.Height * (float)Ksize) / (float)orjinalFoto.Width);
            new_width = hedefGenislik;
            hedefYukseklik = new_height;
            new_width = new_width > hedefGenislik ? hedefGenislik : new_width;
            new_height = new_height > hedefYukseklik ? hedefYukseklik : new_height;

            islenmisFotograf = new System.Drawing.Bitmap(hedefGenislik, hedefYukseklik);
            grafik = System.Drawing.Graphics.FromImage(islenmisFotograf);
            grafik.FillRectangle(new System.Drawing.SolidBrush(System.Drawing.Color.White), new System.Drawing.Rectangle(0, 0, hedefGenislik, hedefYukseklik));
            int paste_x = (hedefGenislik - new_width) / 2;
            int paste_y = (hedefYukseklik - new_height) / 2;

            grafik.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            grafik.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            grafik.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.Default;

            System.Drawing.Imaging.ImageCodecInfo codec = System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders()[1];
            System.Drawing.Imaging.EncoderParameters eParams = new System.Drawing.Imaging.EncoderParameters(1);
            eParams.Param[0] = new System.Drawing.Imaging.EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 95L);

            grafik.DrawImage(orjinalFoto, paste_x, paste_y, new_width, new_height);
            islenmisFotograf.Save(HttpContext.Current.Server.MapPath(yer +dosyaadi), codec, eParams);
        }
    }

