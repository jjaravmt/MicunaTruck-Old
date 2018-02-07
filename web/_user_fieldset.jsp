<div class="row">
    <div class="col-md-6 mb-3">
        <label for="name">First name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" value="${user.name}" required="">
        <div class="invalid-feedback">
            Valid first name is required.
        </div>
    </div>
    <div class="col-md-6 mb-3">
        <label for="lastName">Last name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" placeholder="" value="${user.lastName}" required="">
        <div class="invalid-feedback">
            Valid last name is required.
        </div>
    </div>
</div>
<div class="mb-3">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" value="${user.email}" placeholder="you@example.com" required="">
    <div class="invalid-feedback">
        Please enter a valid email address for shipping updates.
    </div>
</div>
<div class="row">
    <div class="col-md-6 mb-3">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="" value="${user.password}" required="">
        <div class="invalid-feedback">
            Valid password is required.
        </div>
    </div>
    <div class="col-md-6 mb-3">
        <label for="lastName">Repeat Password</label>
        <input type="password" class="form-control" id="password2" placeholder="" value="" required="">
        <div class="invalid-feedback">
            Valid password is required.
        </div>
    </div>
</div>
<%--<div>--%>
    <%--<input type="submit"/>--%>
<%--</div>--%>