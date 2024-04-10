<%-- 
    Document   : index
    Created on : Dec 18, 2023, 7:54:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/img/new_img/stock-vector--d-cricket-field-with-green-grass-red-ball-and-bat-icon-isolated-on-white-background-vector-1521184814-removebg-preview.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
        <title>LOGIN/REGISTER</title>
        <link rel="stylesheet" href="JS-CSS/Style.css">
    </head>
    <body>
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">Email</label>
                            <input id="user" type="email" class="input">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input id="pass" type="password" class="input" maxlength="8" minlength="8" >
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span> Keep me Signed in</label>
                        </div>
                        <div class="group">
                            <input type="submit" class="button btni" value="Sign In" onclick="return LogIn()">
                        </div>
                        <div class="hr"></div>
                      
                    </div>
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="user" class="label">Username</label>
                            <input id="username" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="email" class="label">Email Address</label>
                            <input id="email" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="phonenumber" class="label">Phone Number</label>
                            <input id="pnumber" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input id="password" type="password" class="input" maxlength="8" minlength="8">
                        </div>
                        <div class="group">
                            <input type="submit" class="button btni"  value="Sign Up" onclick="return Register()">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <label for="tab-1">Already Member?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <input type="hidden" id="ajax">
    <script src="JS-CSS/index.js"></script>

</html>