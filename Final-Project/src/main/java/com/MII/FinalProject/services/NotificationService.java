/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;


import com.MII.FinalProject.entities.Exam;
import java.nio.charset.StandardCharsets;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

/**
 *
 * @author yosef
 */
@Service
public class NotificationService {

    @Autowired
    JavaMailSender javaMailSender;

    @Autowired
    private SpringTemplateEngine templateEngine;

    public NotificationService(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendEmail(Exam exam) throws MessagingException {

       MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message,
                MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
                StandardCharsets.UTF_8.name());

        Context context = new Context();
        context.setVariable("name", exam.getUser().getName());
        context.setVariable("code", exam.getCode());
        String html = templateEngine.process("/component/email1", context);

        helper.setTo(exam.getUser().getEmail());
        helper.setText(html, true);
        helper.setSubject("Verification Code");
        helper.setFrom("ExamOnline@gmail.com");

        javaMailSender.send(message);

    }
    
}
