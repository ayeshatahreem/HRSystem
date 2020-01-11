package Model;

/**
 * Created by ayesh on 3/12/2017.
 */
public class FeedbackForm {
    protected String position;
    protected String EmpName;
    protected String positionRank;
    protected String salary;
    protected String workingHours;

    public String GetJobPosition(){ return position;}
    public String GetEmpName(){
        return EmpName;
    }
    public String GetPositionRank(){
        return positionRank;
    }
    public String GetSalary(){
        return salary;
    }
    public String GetWorkingHours(){
        return workingHours;
    }
    public void SetJobPosition(String N){position = N;}
    public void SetEmpName(String E){
        EmpName = E;
    }
    public void SetPositionRank(String P){
        positionRank = P;
    }
    public void SetSalary(String A){salary = A;}
    public void SetWorkingHours(String A){
        workingHours = A;
    }
}
