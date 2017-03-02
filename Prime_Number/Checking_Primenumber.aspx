<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checking_Primenumber.aspx.cs" Inherits="Prime_Number.Checking_Primenumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Validate.js"></script>
    <script type="text/javascript">
        function validate()
        {
            n = document.getElementById("txtTest").value;
            l = document.getElementById("lblmsg");
            var count = 0;
            if (n <= 2)
            {
                l.innerHTML = "Please Enter Higher Number Than 2";
                //alert("Please enter Higher number than 2");
            }
            else
            {
                for (var x = 2; x < n; x++)
                {
                    if (n % x === 0)
                    {
                            count += 1;
                    }
                }
                if (count > 0)
                {
                    l.innerHTML = "Number is not Prime";
                    return false;
                    
                    //alert("No is Not Prime");
                }
                else
                {
                    l.innerHTML = "Number is Prime";
                    return false;
                    
                    //alert("No is Prime");
                }
            
                
            }
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" name="myForm" onsubmit="return valid()">
    <div>
    
        <asp:TextBox ID="txtTest" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblmsg" runat="server" Enabled="true"></asp:Label>

        <br />
        <asp:Button ID="btnTest" runat="server" OnClientClick="return validate();" Text="Button" />
    
    </div>
    </form>
</body>
</html>
