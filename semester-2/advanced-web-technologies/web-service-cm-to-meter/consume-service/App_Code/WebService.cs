using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    public string calculate(float cm)
    {
        float meter = cm/100;
        return meter.ToString();
    }

    [WebMethod]
    public string calculateGrade(float marks)
    {
        string grade = "Grade is ";
        if (marks>75)
        {
            grade = grade + "O";
        }
        else if(marks > 60 && marks < 75)
        {
            grade = grade + "A";
        }
        else if (marks >= 35 && marks <= 60)
        {
            grade = grade + "B";
        }
        else
        {
            grade = grade + "F";
        }
        return grade;
    }

}
