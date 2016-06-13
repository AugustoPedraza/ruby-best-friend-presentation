using System;
using System.Numerics;

public class WhyILeftTheDarkSide
{
  static public void Main ()
  {
    Console.WriteLine (F(5)); //120 Works!
    Console.WriteLine (F(15)); //1307674368000 Works!
    Console.WriteLine (F(50)); //30414093201713378043612608166064768844377641568960512000000000000 Works!
  }

  static BigInteger F(int n)
  {
    BigInteger f = 1;

    while(n > 1)
    {
      f = f * n;
      n -= 1;
    }

    return f;
  }
}

