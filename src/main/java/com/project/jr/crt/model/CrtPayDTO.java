package com.project.jr.crt.model;

import lombok.Data;

@Data
public class CrtPayDTO {
	private int crtseq;
	private String crtname;
	private int crtTestSeq;
	private String crtTestName;
	private int crtTestTypeSeq;
	private int exampay;
	
	//데이터 가공
	private String exampayS;
	
}
