global.timed_actions = [];

function TimedAction(_func, _argv, _delay) constructor {
	func = _func;
	argv = _argv;
	delay = _delay;
}

function exec_scheduled_actions() {
	for (var i = array_length(global.timed_actions)-1; i>=0; i--) {
		var _action = global.timed_actions[i];
		if _action.delay==0 {
			exec_with_args(_action.func, _action.argv);
			array_delete(global.timed_actions,i,1);
		} else {
			_action.delay -= 1;
		}
	}
}

function exec_delayed(_func, _argv, _delay) {
	array_push(global.timed_actions, new TimedAction(_func, _argv, _delay));
}

function exec_with_args(_func, _argv) {
	show_debug_message("func: {0}, argv: {1}", _func, _argv);
	var argc = array_length(_argv);
	if (argc==0) _func();
	if (argc==1) _func(_argv[0]);
	if (argc==2) _func(_argv[0],_argv[1]);
	if (argc==3) _func(_argv[0],_argv[1],_argv[2]);
	if (argc==4) _func(_argv[0],_argv[1],_argv[2],_argv[3]);
	if (argc==5) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4]);
	if (argc==6) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4],_argv[5]);
	if (argc==7) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4],_argv[5],_argv[6]);
	if (argc==8) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4],_argv[5],_argv[6],_argv[7]);
	if (argc==9) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4],_argv[5],_argv[6],_argv[7],_argv[8]);
	if (argc==10) _func(_argv[0],_argv[1],_argv[2],_argv[3],_argv[4],_argv[5],_argv[6],_argv[7],_argv[8],_argv[9]);
}