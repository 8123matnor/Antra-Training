using System;
namespace Assignment3_Antra
{
    public class Department
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

        private string head;
        public string Head
        {
            get { return head; }
            private set
            {
                head = value;
            }
        }

        private Budget[] budget_list;
        public Budget[] Budget_list
        {
            get { return budget_list; }
            private set
            {
                budget_list = value;
            }
        }

        private Course[] courses;
        public Course[] Courses
        {
            get { return courses; }
            private set
            {
                courses = value;
            }
        }

        public Department()
        {
            Name = name;
            Head = head;
            Budget_list = budget_list;
            Courses = courses;
        }
    }
    public class Budget
    {
        public Budget()
        {

        }
        public int Amount { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
    }
}
