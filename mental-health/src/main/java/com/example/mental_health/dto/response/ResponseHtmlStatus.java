package com.example.mental_health.dto.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.springframework.http.HttpStatus;

public class ResponseHtmlStatus<T> {
    private final HttpStatus status;
    private final String message;
    @JsonInclude(JsonInclude.Include.NON_NULL) private T data;


    public ResponseHtmlStatus(HttpStatus status, String message, T data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }


    public ResponseHtmlStatus(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }

    public HttpStatus getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

    public T getData() {
        return data;
    }
}
