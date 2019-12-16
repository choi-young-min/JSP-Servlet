package com.search.controller;

import com.search.controller.action.Action;
import com.search.controller.action.AllAction;
import com.search.controller.action.IdCheckFormAction;
import com.search.controller.action.IndexAction;
import com.search.controller.action.JoinAction;
import com.search.controller.action.JoinFormAction;
import com.search.controller.action.LoginAction;
import com.search.controller.action.LoginFormAction;
import com.search.controller.action.LogoutAction;

public class ActionFactory{
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		if(command.equals("index")) {
			action = new IndexAction();
		}
		else if(command.equals("login_form")) {
			action = new LoginFormAction();
		}
		else if(command.equals("join_form")) {
			action = new JoinFormAction();
		}
		else if(command.equals("join")) {
			action = new JoinAction();
		}
		else if(command.equals("logout")) {
			action = new LogoutAction();
		}
		else if(command.equals("id_check_form")) {
			action = new IdCheckFormAction();
		}
		else if(command.equals("login")) {
			action = new LoginAction();
		}
		else if(command.equals("all")) {
			action = new AllAction();
		}
		return action;
	}
}
