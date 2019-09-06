package com.bit.good.dto;

public class PageMaker {
	private int totalCount;//전체 게시물 개수
	private int page;// 현재 페이지 번호
	private int contentNum=10; //한 페이지에 몇개 표시할지(10)
	private int startPage=1; //현재 페이지 블록의 시작페이지(1,6,11)
	private int endPage=5; //현재 페이지 블록의 마지막 페이지(5,10,15)
	private boolean prev=false;//이전 페이지로 가는 화살표
	private boolean next;//다음 페이지로 가는 화살표
	private int currentBlock;//현재 페이지 블록
	private int lastBlock;//마지막 페이지 블록
	
	
	public void prevNext(int page) {
		if(page>0 && page<6 && getLastBlock() != getCurrentBlock()) {
			setPrev(false);
			setNext(true);
		}else if(page>0 && page<6 && getLastBlock() == getCurrentBlock()) {
			setPrev(false);
			setNext(false);
		}else if(getLastBlock() == getCurrentBlock()) {
			setPrev(true);
			setNext(false);
		}else {
			setPrev(true);
			setNext(true);
		}
	}
	
	
	//몇페이지인지 계산하는 함수 필요
	//125 / 10 => 12.5 (+1) -> 13페이지
	public int calcPage(int totalCount, int contentNum) {
		int totalPage = totalCount / contentNum;
		if(totalCount%contentNum>0) {
			totalPage++;
		}
		return totalPage;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getContentNum() {
		return contentNum;
	}
	public void setContentNum(int contentNum) {
		this.contentNum = contentNum;
	}
	public int getStartPage() {
		return startPage;
	}
	//시작페이지는 현재block으로 구할 수 있음
	public void setStartPage(int currentBlock) {
		this.startPage = (currentBlock*5)-4;
		//1//1 2 3 4 5
		//2//6 7 8 9 10 
		//3//11 12 13
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getLastBlock, int getCurrentBlock) {
		if(getLastBlock == getCurrentBlock) {
		this.endPage = calcPage(getTotalCount(), getContentNum());
		}else {
			this.endPage = getStartPage()+4;
		}
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentBlock() {
		return currentBlock;
	}
	public void setCurrentBlock(int page) {
		//페이지 번호를 통해서 구한다
		//페이지 번호 / 페이지 그룹 안의 페이지 개수
		//1p 1 / 5 => 0.2 (int이므로 0으로 환산), 나머지가 0이 아니면 1을 더해주므로 pageBlock 1이 됨
		//3p 3 / 5 => 0.xx -> 0 -> ++;로 pageBlock이 1이 된다.
		//8p 8 / 5 => 1.6 => 1 + 1 => pageBlock=2
		this.currentBlock = page/5;
		if(page%5>0) {
			this.currentBlock++;
		}
	}
	public int getLastBlock() {
		return lastBlock;
	}
	public void setLastBlock(int totalCount) {
		//10개씩, 5페이지 => 10 * 5 = 50
		//125 / 50
		//3(마지막 페이지블록 숫자)
		this.lastBlock = totalCount / (5*this.contentNum);
		if(totalCount %(5*this.contentNum)>0) {
			this.lastBlock++;
		}
	}
	
	
}
