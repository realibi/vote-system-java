<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/Views/Header.jsp"%>

    <input style="width:49%" type="text" id="phoneNumber" placeholder="Phone number"><br>
    <input style="width:49%" type="password" id="password" placeholder="password"><br>
    <button onclick="login()">Login</button>

<script>
    const login = () => {
        const phoneNumber = $("#phoneNumber").val();
        const password = $("#password").val();

        let data = {
            "phoneNumber": phoneNumber,
            "password": password
        }

        $.ajax({
            type: "POST",
            url: "<%=request.getContextPath() %>/api/account/login",
            dataType: "text/plain",
            contentType: "text/plain",
            data: JSON.stringify(data),
            success: function(result){
                if(result['status'] === 200){
                    window.location.replace("<%=request.getContextPath() %>/transfer");
                }else{
                    $("#message").append("User not found!");
                }
            },
            error: function(result){
                if(result['status'] === 200){
                    window.location.replace("<%=request.getContextPath() %>/transfer");
                }else{
                    $("#message").append("User not found!");
                }
            }
        });
    }
</script>

<%@include file="/Views/Footer.jsp"%>