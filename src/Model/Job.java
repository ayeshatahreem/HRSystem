package Model;

/**
 * Created by ayesh on 3/11/2017.
 */
public class Job {
    protected String title;
    protected String qualification;
    protected String experience;
    protected String deadline;
    protected String description;
    protected Integer jobID;
    public Integer GetJobID(){ return jobID;}
    public String GetJobTitle(){ return title;}
    public String GetJobQualification(){
        return qualification;
    }
    public String GetJobExperience(){
        return experience;
    }
    public String GetJobDeadline(){
        return deadline;
    }
    public String GetJobDescription(){
        return description;
    }
    public void SetJobID(Integer ID){ jobID = ID;}
    public void SetJobTitle(String N){title = N;}
    public void SetJobQualification(String E){
        qualification = E;
    }
    public void SetJobExperience(String P){
        experience = P;
    }
    public void SetJobDeadline(String A){deadline = A;}
    public void SetJobDescription(String A){
        description = A;
    }
}
