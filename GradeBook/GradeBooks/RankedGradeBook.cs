using GradeBook.Enums;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GradeBook.GradeBooks
{
    public class RankedGradeBook : BaseGradeBook
    {
        public RankedGradeBook(string name) : base(name)
        {
            Type = GradeBookType.Ranked;
        }

        public override char GetLetterGrade(double averageGrade)
        {
            var studentCount = Students.Count;
            if (studentCount < 5)
                throw new InvalidOperationException();

            var possibleGrades = new List<char> { 'A', 'B', 'C', 'D', 'F' }.Take(studentCount).ToList();

            var studentsSplit = studentCount * 0.2;
            var ss = Convert.ToInt32(studentsSplit);
            var gradesInOrder = Students.OrderByDescending(a => a.AverageGrade).Select(b => b.AverageGrade).ToList();

            char grade = 'A';

            for(var i = 0; i < gradesInOrder.Count; i++)
            {
                if ((i == 4) || (averageGrade <= gradesInOrder[i] && averageGrade > gradesInOrder[i + ss]))
                {
                    grade = possibleGrades[i];
                    break;
                }
            }

            return grade;
        }
    }
}
