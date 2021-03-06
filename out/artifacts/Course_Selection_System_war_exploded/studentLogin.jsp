<%--
  Created by IntelliJ IDEA.
  User: Shinlee
  Date: 2017/1/5
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <SCRIPT LANGUAGE="JavaScript">
        function createCode(len) {
            var seed = new Array(
                'abcdefghijklmnopqrstuvwxyz',
                'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                '0123456789'
            ); //创建需要的数据数组
            var idx, i;
            var result = ''; //返回的结果变量
            for(i = 0; i < len; i++) //根据指定的长度
            {
                idx = Math.floor(Math.random() * 3); //获得随机数据的整数部分-获取一个随机整数
                result += seed[idx].substr(Math.floor(Math.random() * (seed[idx].length)), 1); //根据随机数获取数据中一个值
            }
            return result; //返回随机结果
        }

        function test() {
            var inputRandom = document.getElementById("inputRandom").value;
            var autoRandom = document.getElementById("autoRandom").innerHTML;
            if(inputRandom == autoRandom && inputRandom != "") {
                alert("通过验证");
            } else {
                alert("没有通过验证");
            }

        }
    </SCRIPT>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学生选课管理系统 | 登录</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>学生选课管理系统</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">学生登录</p>

        <form action="../../index2.html" method="post">
            <div class="form-group has-feedback">
                <input type="username" class="form-control" placeholder="学生编号">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <SELECT id="sel" hidden>
                <option value=4 selected></option>
            </SELECT>
            <div class="input-group margin">
                <input type="text" class="form-control">
                <label id="autoRandom" value=""></label>
                <span class="input-group-btn">
			<button type="button" class="btn btn-info btn-flat" ONCLICK="autoRandom.innerHTML=createCode(sel.value)">获取验证码</button>
    		</span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> 记住我
                        </label>
                    </div>
                </div>

                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat" onclick="test()">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <a href="adminLogin.jsp" class="text-center">管理员登录</a>
        <!-- /input-group -->
        <script type="text/javascript">
            window.onload() = autoRandom.innerHTML = createCode(sel.value);
        </script>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>
