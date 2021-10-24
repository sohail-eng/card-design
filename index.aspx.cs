using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pannel1.BorderStyle = BorderStyle.Inset;
        label1.Text = "|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|";
    }
    public int i = 0;


    protected void button4_Click(object sender, EventArgs e)
    {
        if (label4.Visible)
        {
            label4.Visible = false;
            richTextBox1.Visible = true;
            button4.Text = "Finish Edititng";
            if (richTextBox1.Text == "")
            {
                richTextBox1.Text = "Please Write  Here";
            }
        }
        else
        {
            label4.Visible = true;
            richTextBox1.Visible = false;
            button4.Text = "Edit Text";
        }
    }

    protected void button1_Click(object sender, EventArgs e)
    {

        button1.Visible = true;
    }

    protected void richTextBox1_TextChanged(object sender, EventArgs e)
    {
        label4.Text = richTextBox1.Text;
    }

    protected void numericUpDown1_TextChanged(object sender, EventArgs e)
    {
        label4.Font.Size = (FontUnit)float.Parse(numericUpDown1.Text);
        richTextBox1.Font.Size = (FontUnit)float.Parse(numericUpDown1.Text);
    }


    protected void uploadimg1_Click(object sender, EventArgs e)
    {
        Button b = sender as Button;
        if(b.Text.Equals("Upload image 1"))
        {
            string imgName = im1.FileName;
            string imgPath = "ImageStorage/" + imgName;
            if (im1.PostedFile != null && im1.PostedFile.FileName != "")
            {
                    im1.SaveAs(Server.MapPath(imgPath));
                    pictureBox1.ImageUrl = "~/" + imgPath;
            }
        }
        else
        {
            string imgName = im2.FileName;
            string imgPath = "ImageStorage/" + imgName;
            if (im2.PostedFile != null && im2.PostedFile.FileName != "")
            {
                im2.SaveAs(Server.MapPath(imgPath));
                pictureBox2.ImageUrl = "~/" + imgPath;
            }
        }
        
    }
}