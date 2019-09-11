- active = context.request.path == "/" ? "active" : ""
li.nav-item class=active
  a.nav-link href="/" home
- active = context.request.path == "/weights" ? "active" : ""
li.nav-item class=active
  a class="nav-link" href="/weights" weights
