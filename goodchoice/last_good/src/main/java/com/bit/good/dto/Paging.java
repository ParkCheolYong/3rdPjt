package com.bit.good.dto;

public class Paging {
	private int pageSize; // �Խ� �� ��
    private int firstPageNo; // ù ��° ������ ��ȣ
    private int prevPageNo; // ���� ������ ��ȣ
    private int startPageNo; // ���� ������ (����¡ �׺� ����)
    private int pageNo; // ������ ��ȣ
    private int endPageNo; // �� ������ (����¡ �׺� ����)
    private int nextPageNo; // ���� ������ ��ȣ
    private int finalPageNo; // ������ ������ ��ȣ
    private int totalCount; // �Խ� �� ��ü ��
    
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.makingPaging();
	}
	
	private void makingPaging() {
		if (this.totalCount == 0) return; // �Խ� �� ��ü ���� ���� ���
        if (this.pageNo == 0) this.setPageNo(1); // �⺻ �� ����
        if (this.pageSize == 0) this.setPageSize(5); // �⺻ �� ����
 
        int finalPage = (totalCount + (pageSize - 1)) / pageSize; // ������ ������
        if (this.pageNo > finalPage) this.setPageNo(finalPage); // �⺻ �� ����
 
        if (this.pageNo < 0 || this.pageNo > finalPage) this.pageNo = 1; // ���� ������ ��ȿ�� üũ
 
        boolean isNowFirst = pageNo == 1 ? true : false; // ���� ������ (��ü)
        boolean isNowFinal = pageNo == finalPage ? true : false; // ������ ������ (��ü)
 
        int startPage = ((pageNo - 1) / 5) * 5 + 1; // ���� ������ (����¡ �׺� ����)
        int endPage = startPage + 5 - 1; // �� ������ (����¡ �׺� ����)
 
        if (endPage > finalPage) { // [������ ������ (����¡ �׺� ����) > ������ ������] ���� ū ���
            endPage = finalPage;
        }
 
        this.setFirstPageNo(1); // ù ��° ������ ��ȣ
 
        if (isNowFirst) {
            this.setPrevPageNo(1); // ���� ������ ��ȣ
        } else {
            this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1))); // ���� ������ ��ȣ
        }
 
        this.setStartPageNo(startPage); // ���� ������ (����¡ �׺� ����)
        this.setEndPageNo(endPage); // �� ������ (����¡ �׺� ����)
 
        if (isNowFinal) {
            this.setNextPageNo(finalPage); // ���� ������ ��ȣ
        } else {
            this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1))); // ���� ������ ��ȣ
        }
 
        this.setFinalPageNo(finalPage); // ������ ������ ��ȣ

	}
}