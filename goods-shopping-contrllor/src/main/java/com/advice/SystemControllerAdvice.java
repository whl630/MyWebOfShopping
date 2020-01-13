package com.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.util.NestedServletException;

@ControllerAdvice
public class SystemControllerAdvice {
    @ExceptionHandler(ArithmeticException.class)
    public String getErrors(){
        return "error/GoodError";
    }
//    @ExceptionHandler(RuntimeException.class)
//    public String getErrors2(){
//        return "error/GoodError2";
//    }
    @ExceptionHandler(NestedServletException.class)
    public String getErrors3(){
        return "error/GoodError3";
    }

//    @ExceptionHandler(RuntimeException.class)
//    public String getOperatorError(){
//        return "error/OPeratorRuntimeException";
//    }
}
