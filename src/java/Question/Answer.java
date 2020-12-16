/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Question;

/**
 *
 * @author Asus
 */
public class Answer {
    private boolean ans;
    private String Sans;
    
    public Answer(boolean a, String Sa) 
    { 
        this.ans=a;
        this.Sans=Sa;
    } 
    
    public boolean getResult(){return ans;}
    public String getAnswer(){return Sans;}
    
}
