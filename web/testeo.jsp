<div class="col-md-6 col-sm-6 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2><i class="fa fa-bell"></i> Notifications <small>Styled & Custom notifications</small></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                    </ul>
                </li>
                <li><a class="close-link"><i class="fa fa-close"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">

            <p>Regular notifications</p>
            <button class="btn btn-default source" onclick="new PNotify({
                        title: 'Regular Success',
                        text: 'That thing that you were trying to do worked!',
                        type: 'success',
                        styling: 'bootstrap3'
                    });">Success</button>

            <button class="btn btn-default source" onclick="new PNotify({
                        title: 'New Thing',
                        text: 'Just to let you know, something happened.',
                        type: 'info',
                        styling: 'bootstrap3'
                    });">Info</button>

            <button class="btn btn-default source" onclick="new PNotify({
                        title: 'Regular Notice',
                        text: 'Check me out! I\'m a notice.',
                        styling: 'bootstrap3'
                    });">Notice</button>

            <button class="btn btn-default source" onclick="new PNotify({
                        title: 'Oh No!',
                        text: 'Something terrible happened.',
                        type: 'error',
                        styling: 'bootstrap3'
                    });">Error</button>

            <button class="btn btn-default source" onclick="new PNotify({
                        title: 'Oh No!',
                        text: 'Something terrible happened.',
                        type: 'info',
                        styling: 'bootstrap3',
                        addclass: 'dark'
                    });">Dark</button>
        </div>
    </div>
</div>