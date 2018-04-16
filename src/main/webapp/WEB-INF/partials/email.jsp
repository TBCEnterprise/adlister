<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="/EmailSendingServlet" method="POST">
    <div class="form-group">
        <label for="recipient">Email</label>
        <input id="recipient" name="recipient" class="form-control" type="hidden"
               value="<c:out value="${ad.email}"/>">
    </div>
    <div class="form-group">
        <label for="subject">Subject</label>
        <input id="subject" name="subject" class="form-control" type="text" aria-required="true" required>
    </div>
    <div class="form-group">
        <label for="content">Message</label>
        <textarea id="content" name="content" class="form-control" aria-required="true" required>Hello <c:out value="${ad.username}"/>! I'm interested in your <c:out value="${ad.title}"/>. </textarea>
        <a href="/EmailSendingServlet">
            <input type="submit" class="btn btn-primary btn-inline-block" value="Email">
        </a>
    </div>
</form>
