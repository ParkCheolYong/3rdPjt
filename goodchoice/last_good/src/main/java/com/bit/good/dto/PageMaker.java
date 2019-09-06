package com.bit.good.dto;

public class PageMaker {
	private int totalCount;//��ü �Խù� ����
	private int page;// ���� ������ ��ȣ
	private int contentNum=10; //�� �������� � ǥ������(10)
	private int startPage=1; //���� ������ ����� ����������(1,6,11)
	private int endPage=5; //���� ������ ����� ������ ������(5,10,15)
	private boolean prev=false;//���� �������� ���� ȭ��ǥ
	private boolean next;//���� �������� ���� ȭ��ǥ
	private int currentBlock;//���� ������ ���
	private int lastBlock;//������ ������ ���
	
	
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
	
	
	//������������ ����ϴ� �Լ� �ʿ�
	//125 / 10 => 12.5 (+1) -> 13������
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
	//������������ ����block���� ���� �� ����
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
		//������ ��ȣ�� ���ؼ� ���Ѵ�
		//������ ��ȣ / ������ �׷� ���� ������ ����
		//1p 1 / 5 => 0.2 (int�̹Ƿ� 0���� ȯ��), �������� 0�� �ƴϸ� 1�� �����ֹǷ� pageBlock 1�� ��
		//3p 3 / 5 => 0.xx -> 0 -> ++;�� pageBlock�� 1�� �ȴ�.
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
		//10����, 5������ => 10 * 5 = 50
		//125 / 50
		//3(������ ��������� ����)
		this.lastBlock = totalCount / (5*this.contentNum);
		if(totalCount %(5*this.contentNum)>0) {
			this.lastBlock++;
		}
	}
	
	
}
