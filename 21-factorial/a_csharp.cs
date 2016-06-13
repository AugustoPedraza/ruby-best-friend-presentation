using System;

public class WhyILeftTheDarkSide
{
  static public void Main ()
  {
    Console.WriteLine (F(5)); //120 Works!

    //Expected: 1307674368000
    //Got: 2004310016
    Console.WriteLine (F(15)); //1307674368000 Works!
    Console.WriteLine (F(50)); //0 Owerflow type :(
  }

  static int F(int n)
  {
    int f = 1;

    while(n > 1)
    {
      f = f * n;
      n -= 1;
    }

    return f;
  }
}
