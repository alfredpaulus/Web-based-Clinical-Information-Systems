<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NotAuthorized.aspx.cs" Inherits="NotAuthorized" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="color:red">Authorization Failed</h1>
        <p>Access to this page cannot be granted without logging in with a valid username and password. Please enter a username and password when prompted.</p>
        <p>if this page does not automatically redirect you after 10 seconds <a href="Default.aspx">click here</a>.</p>
    </div>
    </form>
</body>
</html>
