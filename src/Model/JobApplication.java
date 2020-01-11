package Model;

/**
 * Created by ayesh on 3/19/2017.
 */
public class JobApplication {
    protected Integer appID;
    protected String Name;
    protected Integer jobID;
    protected Integer rating;
    protected Integer aint2;

    public Integer GetAppID(){ return appID;}
    public String GetUserName(){ return Name; }
    public Integer GetJobID(){ return jobID;}
    public Integer GetRating(){ return rating;}
    public Integer GetAfterInterview2(){ return aint2;}

    public void SetAppID(Integer ID){ appID = ID;}
    public void SetUserName(String N){
        Name = N;
    }
    public void SetJobID(Integer ID){ jobID = ID;}
    public void SetRating(Integer ID){ rating = ID;}
    public void SetAfterInterview2(Integer ID){ aint2 = ID;}

}