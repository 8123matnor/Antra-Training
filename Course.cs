using System;
namespace Assignment3_Antra
{
    public class Course
    {
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }


        private Student[] enrolledStudents;
        public Student[] EnrolledStudents
        {
            get { return enrolledStudents; }
            private set
            {
                enrolledStudents = value;
            }
        }

        public Course()
        {
            Name = name;
            EnrolledStudents = enrolledStudents;
        }
    }

}
