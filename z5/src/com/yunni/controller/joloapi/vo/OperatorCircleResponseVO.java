package com.yunni.controller.joloapi.vo;

public class OperatorCircleResponseVO {
	
	private String operator_code;
	private String circle_code;
	private Integer error;
	private String status;
	private String operator_name;
	private String circle_name;
	
	public Integer getError() {
		return error;
	}
	public void setError(Integer error) {
		this.error = error;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOperator_code() {
		return operator_code;
	}
	public void setOperator_code(String operator_code) {
		this.operator_code = operator_code;
	}
	public String getCircle_code() {
		return circle_code;
	}
	public void setCircle_code(String circle_code) {
		this.circle_code = circle_code;
	}
	public String getOperator_name() {
		return operator_name;
	}
	public void setOperator_name(String operator_name) {
		this.operator_name = operator_name;
	}
	public String getCircle_name() {
		return circle_name;
	}
	public void setCircle_name(String circle_name) {
		this.circle_name = circle_name;
	}

}
