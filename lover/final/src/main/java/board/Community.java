package board;

import java.io.Serializable;
import java.sql.Timestamp;

public class Community implements Serializable{

   private static final long serialVersionUID = 12L;
   
   private int reviewNo;
   private String title;
   private String localName;
   private String reviewContent;
   private Timestamp reviewCreatedate;
   private Timestamp reviewModifydate;
   private int hit;
   private String fileName;
   private String userId;
   private int replyCnt;
   
   public int getReviewNo() {
      return reviewNo;
   }
   public void setReviewNo(int reviewNo) {
      this.reviewNo = reviewNo;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getLocalName() {
      return localName;
   }
   public void setLocalName(String localName) {
      this.localName = localName;
   }
   public String getReviewContent() {
      return reviewContent;
   }
   public void setReviewContent(String reviewContent) {
      this.reviewContent = reviewContent;
   }
   public Timestamp getReviewCreatedate() {
      return reviewCreatedate;
   }
   public void setReviewCreatedate(Timestamp reviewCreatedate) {
      this.reviewCreatedate = reviewCreatedate;
   }
   public Timestamp getReviewModifydate() {
      return reviewModifydate;
   }
   public void setReviewModifydate(Timestamp reviewModifydate) {
      this.reviewModifydate = reviewModifydate;
   }
   public int getHit() {
      return hit;
   }
   public void setHit(int hit) {
      this.hit = hit;
   }
   public String getFileName() {
      return fileName;
   }
   public void setFileName(String fileName) {
      this.fileName = fileName;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public int getReplyCnt() {
      return replyCnt;
   }
   public void setReplyCnt(int replyCnt) {
      this.replyCnt = replyCnt;
   }
   
   

}