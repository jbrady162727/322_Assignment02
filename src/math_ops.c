float multiply(float x, float y)
{
    return x * y;
}

float add(float x, float y)
{
    return x + y;
}

float square(float x)
{
    return x * x;
}

float cube(float x)
{
    return x * x * x;
}

float pow(float base, int exponent )
{
    float res = 1;
    for(int i = 0; i < exponent; i++)
    {
        res *= base;
    }
    return res;
}

float sub(float x, float y)
{
    return x - y;
}

float sin(float x, int steps)
{
    float sum = 0.0f;
    float term = x;
    int sign = 1;

    for (int n = 1; n <= steps; n++) {
        sum += sign * term;
        term *= (x * x) / ((2 * n) * (2 * n + 1));
        sign = -sign;
    }
    return sum;
}
