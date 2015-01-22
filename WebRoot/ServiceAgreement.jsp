<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>    
    <title>注册服务协议页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/bootstrap.min.js" type="text/javascript"></script>
</head>
    <body>
        <center>
        <div  style="position:absolute;height:70%; width: 100%; margin-top: 3%" >
            <h3><strong>请您仔细阅读用户服务协议</strong></h3>
            <textarea style="height: 100%;width: 80%;">
                          
            为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：
            一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：
            （一）煽动抗拒、破坏宪法和法律、行政法规实施的；
            （二）煽动颠覆国家政权，推翻社会主义制度的； 
            （三）煽动分裂国家、破坏国家统一的；
            （四）煽动民族仇恨、民族歧视，破坏民族团结的；
            （五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
            （六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
            （七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
            （八）损害国家机关信誉的； （九）其他违反宪法和法律行政法规的； 
            （十）进行商业广告行为的。
            二、互相尊重，对自己的言论和行为负责。
            三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。
            四、禁止以任何方式对本站进行各种破坏行为。
            五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录论坛信息均被记录无疑，必要时，杰瑞在线会向相关的国家管理部门提供此类信息。
            </textarea>
            <div style="margin-top: 3%">
                <button type="button" class="btn btn-success" name="btnReturn" onclick="javascript:window.location.href='${pageContext.request.contextPath}/servlet/RegisterUIServlet'">返回注册页面</button>
            </div>
        </div>
        </center>
  </body>
</html>
