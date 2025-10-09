package day02.SchoolSystem;

/*
 * A school system allows teachers to create and assign homework for their students. 
 * Each homework assignment includes a due date, a list of tasks, 
 * and any necessary resources like reading materials. 
 * The system tracks which students have submitted their homework 
 * and allows teachers to grade them."
 * 
 */
import java.util.List;

public class Homework {
    private String homeworkId;
    private String teacherId;
    private String submittedStudentId;
    private List<String> tasks;
    private List<String> resources;
    private String dueDate;

    public Homework(String homeworkId,
            String teacherId, String studentId, List<String> tasks,
            List<String> resources, String dueDate) {

        this.homeworkId = homeworkId;
        this.teacherId = teacherId;
        this.studentId = studentId;
        this.tasks = tasks;
        this.resources = resources;
        this.dueDate = dueDate;
    }

    public Homework(String homeworkId, String teacherId, String studentId) {
        this(homeworkId, teacherId, studentId, null, null, null);
    }

    public 
}
