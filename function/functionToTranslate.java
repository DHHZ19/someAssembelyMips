   int Sum(int w, int x, int y, int z)
                {
                    int p1, p2;
                    p1 = w + y;        // Yes, I know this is goofy
                    p2 = x + z;        // Humor me for a bit
                    return p1 + p2;
                }

                
                 int main()
                { 
                    int a, b, c;
             
                    ...        // Give a,b,c interesting values
                  
                    c = Sum(a, b, b, c);
                    a = 2 * c - b;
                    c = Sum(a, b, b, c);
                    a = 2 * c - b;
                }