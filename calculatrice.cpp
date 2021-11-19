#include "calculatrice.h"

calculatrice::calculatrice(QObject *parent) : QObject(parent)
{

}

float calculatrice::operate(float a, float b, E_ope ope)
{
    float res = 0;

    switch (ope) {
    case Multiply:
        res = a *b;
        break;
    case Substrate:
        res = a-b;
        break;
    case Add:
        res = a+b;
        break;
    default:
        throw "ça n'arrive jamais";
    }
    return res;
}
