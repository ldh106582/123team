package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.domain.BoardComment;
import com.springmvc.domain.FBoard;

import com.springmvc.service.BoardCommentService;
import com.springmvc.service.FBoardService;



@Controller
@RequestMapping("/Fboards")
public class FBoardContoller {
	
	@Autowired
	FBoardService fboardService;

	@Autowired
	BoardCommentService boardCommentService;
	
//	게시판 이동
	@RequestMapping
	public String ViewBoardlist(Model model) {
//		모든 게시글 가져오기
		if(model.containsAttribute("FBoardlist")) {
			return "free_board/Fboards";
		}
		model.addAttribute("FBoardlist",fboardService.getAllFBoards());
		return "free_board/Fboards";
	}
	
//	게시글 하나만 보기
	@GetMapping("/Fboard")
	public String ViewBoard(@RequestParam("boardId") String boardId, Model model) {
		model.addAttribute("board",fboardService.getFBoardById(boardId));
//		해당 게시글의 댓글 가져오기
		model.addAttribute("Commentlist",boardCommentService.getCommentsById(boardId));
		
		return "free_board/Fboard";
	}
	
//	게시판 작성 페이지 이동
	@GetMapping("/add")
	public String addboardform(@ModelAttribute("board")FBoard board) {
		return "free_board/addFboard";
	}

//	작성한 게시글 DB저장
	@PostMapping("/add") 
	public String addboard(@ModelAttribute("board")FBoard board,Model model){ 
		fboardService.setFBoard(board);
		return "redirect:/Fboards";
	}
	
//	게시글 수정 페이지 이동
	@GetMapping("/update")
	public String updateboardform(@ModelAttribute("updateBoard")FBoard board,@RequestParam("boardId") String boardId,Model model) {
		model.addAttribute("board",fboardService.getFBoardById(boardId));
		FBoard b = fboardService.getFBoardById(boardId);
		System.out.println(b.getContext());
		return "free_board/updateFboard";
	}
	
//	수정한정보를 DB에 저장
	@PostMapping("/update")
	public String updateboard(@ModelAttribute("updateBoard")FBoard board,@RequestParam("boardId") String boardId,Model model) {
		System.out.println("-----------연결완료----------");
		System.out.println(boardId);
		fboardService.updateFBoard(board,boardId);
		return "redirect:/Fboards";
	}
	
//	게시글 삭제
	@GetMapping("/delete")
	public String deleteboard(@RequestParam("boardId") String boardId) {
		fboardService.deleteFBoard(boardId);
		return "redirect:/Fboards";
	}
	
//	게시물 검색
	@GetMapping("/selectbytitle")
	public String selectboardbytitle(Model model,HttpServletRequest request) {
		String title = (String) request.getParameter("title");
		System.out.println(title);
		List<FBoard> FBoardlist = fboardService.getFBoardsByTitle(title);
		if(FBoardlist.isEmpty()) {
			//검색 결과가 없을때
			return "free_board/exceptionpage";
		}
		model.addAttribute("FBoardlist",FBoardlist);
		return "free_board/Fboards";
	}
	
//	게시글 댓글 작성
	 @PostMapping("/Fboard")
	 public String addComment(Model model,HttpServletRequest request) {
		 boardCommentService.addComment(request.getParameter("boardId").toString(),request.getParameter("comment").toString());
		 return "redirect:/Fboards/Fboard?boardId="+request.getParameter("boardId");
	 }
	 
//	 댓글 수정 페이지로 보내기
	 @GetMapping("/updatecomment")
	 public String updatecommentform(@RequestParam("commentId") String commentId,@ModelAttribute("comment") BoardComment comment,Model model) {

//		 댓글객체 들고오기
		 BoardComment comments = boardCommentService.getCommentByCID(commentId);
		 model.addAttribute("comment",comments);
		 
//		 보드객체 들고오기
			/* model.addAttribute("fboard",fboardService.getFBoardById(boardId)); */

		 
		 return "board_comment/updateCommentForm";
	 }
	 
		/*
		 * // 수정한 정보 저장
		 * 
		 * @PostMapping("/updatecomment") public String
		 * updatecomment(@ModelAttribute("comment") BoardComment comment,Model model) {
		 * boardCommentService.addComment(comment.getComment()); return
		 * "redirectredirect:/Fboards/Fboard?boardId="+comment.; }
		 */
	 
//	 댓글 삭제
	 @GetMapping("/deletecoment")
	 public String deletecomment(@RequestParam("commentId") String commentId,@RequestParam("boardId") String boardId,Model model,HttpServletRequest request) {
		 boardCommentService.deleteComment(commentId);
		 return "redirect:/Fboards/Fboard?boardId="+boardId; 
	 }
	 
}
