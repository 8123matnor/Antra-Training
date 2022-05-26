using System;
namespace Assignment3_Antra
{
    public class Ball
    {
        public Ball()
        {
            Size = size;
            Color = color;
            TimesThrown = times;
        }
        private int size ;
        public int Size
        {
            get { return size; }
            private set
            {
                size = value;
            }
        }

        private Color color;
        public Color Color
        {
            get { return color; }
            private set
            {
                color = value;
            }
        }

        private int times;
        public int TimesThrown
        {get { return times; }
            private set
            {
                times = value;
            }
        }

        public int Throw(int TimesThrown, int size)
        {
            if (size != 0)
            {
                TimesThrown = TimesThrown + 1;
            }
            Console.WriteLine("Total times thrown: " + TimesThrown);
            return TimesThrown;
        }

        public int pop(int size)
        {
            size = 0;
            Console.WriteLine("Ball has been popped");
            return size;
        }
        public static void Main(string[] args)
        {
            Color color1 = new Color(43, 56, 76, 4);
            Color color2 = new Color(65, 4, 5, 76);
            Ball ball1 = new Ball();
            ball1.TimesThrown = 0;
            ball1.Size = 13;
            ball1.Color = color1;
            Ball ball2 = new Ball();
            ball2.TimesThrown = 0;
            ball2.Size = 24;
            ball2.Color = color2;

            ball1.Throw(ball1.TimesThrown, ball1.size);
            ball1.Throw(ball1.TimesThrown, ball1.size);
            ball1.Throw(ball1.TimesThrown, ball1.size);
            ball2.Throw(ball2.TimesThrown, ball2.size);
            ball1.pop(ball1.size);
            ball2.Throw(ball2.TimesThrown, ball2.size);
            ball1.Throw(ball1.TimesThrown, ball1.size);
            ball2.Throw(ball2.TimesThrown, ball2.size);
            ball1.Throw(ball1.TimesThrown, ball1.size);
            ball2.pop(ball2.size);

        }
    }
    public class Color //0-225
    {
        public Color(int red, int green, int blue)
        {
            Red = red;
            Green = green;
            Blue = blue;
        }
        public Color(int red, int green, int blue, int alpha)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Alpha = alpha;
        }
        public int Red { get; set; }
        public int Green { get; set; }
        public int Blue { get; set; }
        public int Alpha { get; set; }

        public int Grayscale(int red, int green, int blue)
        {
            int scale = (red + green + blue) / 3;
            return scale;
        }
        public int getColor(int red, int green, int blue, int alpha)
        {
            int color = (red + green + blue + alpha) / 4;
            return color;
        }
    }
}
