<%-- 
    Document   : Login
    Created on : May 3, 2017, 12:41:33 PM
    Author     : Thanh Thuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #DIV_8 {
                box-sizing: border-box;
                height: 5488.25px;
                text-size-adjust: 100%;
                width: 1129px;
                perspective-origin: 564.5px 2744.13px;
                transform-origin: 564.5px 2744.13px;
                background: rgb(241, 241, 241) none repeat scroll 0% 0% / auto padding-box border-box;
                font: normal normal normal normal 15px / 22.5px Verdana, sans-serif;
                margin: 0px 0px 0px 220px;
                padding: 44px 0px 0px;
                transition: margin-left 0s ease 0s;
            }/*#DIV_8*/

            #DIV_9 {
                box-sizing: border-box;
                height: 4578.97px;
                text-size-adjust: 100%;
                width: 1129px;
                perspective-origin: 564.5px 2289.48px;
                transform-origin: 564.5px 2289.48px;
                background: rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box border-box;
                font: normal normal normal normal 15px / 22.5px Verdana, sans-serif;
            }/*#DIV_9*/

            #DIV_10 {
                box-sizing: border-box;
                float: left;
                height: 4578.97px;
                text-size-adjust: 100%;
                width: 940.828px;
                perspective-origin: 470.406px 2289.48px;
                transform-origin: 470.406px 2289.48px;
                font: normal normal normal normal 15px / 22.5px Verdana, sans-serif;
                padding: 16px;
                transition: margin-left 0.4s ease 0s;
            }/*#DIV_10*/

            #DIV_1 {
                box-sizing: border-box;
                height: 137px;
                text-size-adjust: 100%;
                width: 908.828px;
                perspective-origin: 454.406px 68.5px;
                transform-origin: 454.406px 68.5px;
                font: normal normal normal normal 15px / 22.5px Verdana, sans-serif;
                margin: 20px 0px 25px;
            }/*#DIV_1*/

            #DIV_2, #DIV_5 {
                box-sizing: border-box;
                height: 61px;
                text-size-adjust: 100%;
                width: 908.828px;
                perspective-origin: 454.406px 30.5px;
                transform-origin: 454.406px 30.5px;
                font: normal normal normal normal 15px / 22.5px Verdana, sans-serif;
                margin: 0px 0px 15px;
            }/*#DIV_2, #DIV_5*/

            #LABEL_3 {
                box-sizing: border-box;
                display: inline-block;
                height: 22px;
                max-width: 100%;
                text-size-adjust: 100%;
                width: 55px;
                perspective-origin: 27.5px 11px;
                transform-origin: 27.5px 11px;
                font: normal normal bold normal 15px / 22.5px Verdana, sans-serif;
                margin: 0px 0px 5px;
            }/*#LABEL_3*/

            #INPUT_4, #INPUT_7 {
                box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px 0px inset;
                color: rgb(85, 85, 85);
                display: block;
                height: 34px;
                text-decoration: none solid rgb(85, 85, 85);
                text-size-adjust: 100%;
                width: 908.828px;
                column-rule-color: rgb(85, 85, 85);
                perspective-origin: 454.406px 17px;
                transform-origin: 454.406px 17px;
                caret-color: rgb(85, 85, 85);
                border: 1px solid rgb(204, 204, 204);
                border-radius: 4px 4px 4px 4px;
                font: normal normal normal normal 14px / 20px Verdana, sans-serif;
                outline: rgb(85, 85, 85) none 0px;
                padding: 6px 12px;
                transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
            }/*#INPUT_4, #INPUT_7*/

            #LABEL_6 {
                box-sizing: border-box;
                display: inline-block;
                height: 22px;
                max-width: 100%;
                text-size-adjust: 100%;
                width: 87px;
                perspective-origin: 43.5px 11px;
                transform-origin: 43.5px 11px;
                font: normal normal bold normal 15px / 22.5px Verdana, sans-serif;
                margin: 0px 0px 5px;
            }/*#LABEL_6*/


            input[type="submit"] {
                padding: 10px 20px 10px 20px;
                background: white;
                border-radius: 5px;
                margin-top: 20px;
                font-weight: 800;
                font-size: 16px;
            }

        </style>
    </head>
    <body>

         <%
            if (request.getAttribute("msg1") != null) {
        %>

        <div style="
             margin-left: 50px;
             margin-top: 30px;
             margin-bottom: 30px;
             color:red;
             "><%= request.getAttribute("msg1")%></div>
        <% } %>
        
        
        <%
            if (request.getAttribute("msg") != null) {
        %>
        <div><%= request.getAttribute("msg")%></div>
        <% } %>

        <form action="Login" method="POST" target="_blank">

            <div id="DIV_8">
                <div id="DIV_9">
                    <div id="DIV_10">
                        <div id="DIV_1">
                            <div id="DIV_2">

                                <label for="usr" id="LABEL_3">
                                    Name:
                                </label>
                                <%
                                    if (request.getAttribute("username") != null) {
                                %>
                                <input type="text" name="user_name" id="INPUT_4" value="<%= request.getAttribute("username")%>" />
                                <% } else {%>
                                <input type="text" name="user_name" id="INPUT_4"  />
                                <% }%>
                            </div>
                            <div id="DIV_5">

                                <label for="pwd" id="LABEL_6">
                                    Password:
                                </label>
                                <input type="password" name="password" id="INPUT_7" />
                            </div>

                            <input type="submit" value="Submit" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>