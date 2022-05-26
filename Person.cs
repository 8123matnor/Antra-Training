using System;
namespace Assignment3_Antra
{
    public class Person
    {
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        //calculate age
        //calculate salary of person, decimal for salary
        //salary cannot be negative
        //multiple addresses, should have method to get addressses

        private int age;
        public int Age
        {
            get { return age; }
            private set
            {
                age = value;
            }
        }

        private float salary;
        public float Salary
        {
            get { return salary; }
            private set
            {
                salary = value;
            }
        }

        private string[] address;
        public string[] Address
        {
            get { return address; }
            private set
            {
                address = value;
            }
        }

        public Person()
        {
            Name = name;
            Salary = salary;
            Address = address;
        }
    }
        public class Student : Person{
            public Courses[] Courses_list{
                get; set;
            }

            public Student()
            {
            }

            public double getGpa(Courses[] Courses_list)
            {
                double gpa = 0.0;
                for (int i =0; i<Courses_list.Length; i++)
                {
                    if(Courses_list[i].Grade == 'A')
                    {
                        gpa = gpa + 4.0;
                    }
                    else if (Courses_list[i].Grade == 'B')
                    {
                        gpa = gpa + 3.0;
                    }
                    else if (Courses_list[i].Grade == 'C')
                    {
                        gpa = gpa + 2.0;
                    }
                    else if (Courses_list[i].Grade == 'D')
                    {
                        gpa = gpa + 1.0;
                    }
                }
                gpa = gpa / Courses_list.Length;
                return gpa;
            }
        }

        public class Courses
        {
            public Courses()
            {

            }
            public int Id { get; set; }
            public string Name { get; set; }
            public char Grade { get; set; }
        }

        public class Instructor : Person{
            public int JoinDate{
                //"MM/dd/yyyy" 
                get;set;
            }

            public string Department
            {get;set;
            }

            public bool DepartmentHead
            {get;set;
            }

            public bool BonusSalary
            {get;set;
            }

            public int yearsExperience(string JoinDate)
            {
                var today = DateTime.Today;
                TimeSpan time = new TimeSpan(12, 20, 20);
                DateTime join = DateTime.Parse(JoinDate);

                var years_exp = today.Year - join.Year;

                return years_exp;
            }
            public Instructor()
            {
            }
        }
}
