<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="style.css" />
    
    <title>
        Moto Photos
    </title>
    <script src=
"https://cdn.jsdelivr.net/npm/html2canvas@1.0.0-rc.5/dist/html2canvas.min.js">
    </script>
    <script src='html2canvas.js'></script>
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 12px;
            width: 808px;
            background-color: aqua;
            margin-left: 2%;
            ">

            <div class="sitetitle">
            Moto Photos</div>
            <asp:FileUpload runat="server" ID="im1" style="margin-top:10px;margin-bottom:10px;padding:5px" />
            <asp:Button runat="server" ID="uploadimg1" Text="Upload image 1" OnClick="uploadimg1_Click" style="margin-top:10px;margin-bottom:10px;padding:5px" />
            <asp:FileUpload runat="server" ID="im2"  style="margin-top:10px;margin-left:10px;margin-bottom:10px;padding:5px"/>
            <asp:Button runat="server" ID="uploadimg2" Text="Upload image 2" OnClick="uploadimg1_Click" style="margin-top:10px;margin-bottom:10px;padding:5px"/>
            <table>
                <tr>
                    <td>
                        <div id="photoclick">
                            <asp:Panel runat="server" ID="pannel1" CssClass="pannelcss">

                            <table>
                                <tr>
                                    <td>
                                        <asp:Image runat="server" ID="pictureBox1" height="282px" Width="299px" style="margin-left:17px; margin-top:10px" BackColor="Transparent" />
        
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label runat="server" ID="label1" Text="|" width="6px" style="text-wrap:inherit;margin-left:2px;margin-right:2px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Image runat="server" ID="pictureBox2" Height="64px" Width="92px" style="margin-left:200px" />
                                        <asp:TextBox runat="server" ID="richTextBox1" OnTextChanged="richTextBox1_TextChanged" Visible="false" Text="Write Here . . . " BorderStyle="None" Height="231px" Width="302px" style="text-align:start;padding:10px" TextMode="MultiLine"></asp:TextBox>
                                        <asp:Label runat="server" ID="label4" Visible="true" Text="Write Here . . ." Height="231px" Width="302px" style="text-align:start;padding:10px"></asp:Label>
                                        
                                    </td>

                                </tr>
                            </table>
                        </asp:Panel>
                        </div>
                    </td>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" Height="100px" GroupingText="Background"  Width="95px">
                            <asp:Button runat="server" ID="button2" Text="Color" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px" />
                            <asp:Button runat="server" ID="button5" Text="Image" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px" />
                            <asp:Button runat="server" ID="button6" Text="clear" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px;margin-bottom:10px" />
                </asp:Panel>

                        <asp:Panel ID="Panel3" runat="server" Height="130px" style="margin-top:10px" GroupingText="Text"  Width="95px">
                            <asp:Button runat="server" ID="button1" Text="Text Color" OnClick="button1_Click" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px" />
                            <asp:Button runat="server" ID="button4" Text="Edit Text" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px" OnClick="button4_Click" />
                            <asp:TextBox runat="server" ID="numericUpDown1" OnTextChanged="numericUpDown1_TextChanged" Text="12" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px" TextMode="Number"></asp:TextBox>
                            <asp:Button runat="server" ID="button31" Text="Done" Width="73px" Height="23px" style="margin-left:9px;margin-top:2px;margin-bottom:10px;text-align:center" />
                        </asp:Panel>
                        
                    </td>
                </tr>
            </table>
            
        </div>

    </form>
    <div style="width:808px;background-color:aqua;margin-left:2%;padding-top:10px;padding-bottom:10px">
        <button onclick="takeshot()" style="margin-left:340px">
           Save
        </button>
        <div id="outshot" style="margin-left:75px;margin-top:10px"></div>
    </div>
    <script type="text/javascript">
        function takeshot() {
            let div = document.getElementById('photoclick');
            html2canvas(div).then(
                function (canvas) {
                    document
                        .getElementById('outshot')
                        .appendChild(canvas);
                    
                })
        }
    </script>
</body>
</html>
