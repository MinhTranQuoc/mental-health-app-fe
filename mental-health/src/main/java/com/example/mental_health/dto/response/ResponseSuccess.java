package com.example.mental_health.dto.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.springframework.http.HttpStatus;

public class ResponseSuccess<T> {
    private final HttpStatus status;
    private final String message;
    @JsonInclude(JsonInclude.Include.NON_NULL) private T data;


    public ResponseSuccess(HttpStatus status, String message, T data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }


    public ResponseSuccess(HttpStatus status, String message) {
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
