package com.sbs.jsp.board.boundedContext.member.controller;

import com.sbs.jsp.board.boundedContext.global.base.Rq;

public class MemberController {
  public void showJoin(Rq rq) {
    rq.appendBody("회원가입");
  }
}
