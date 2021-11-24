#include "calculatrice.h"

calculatrice::calculatrice(QObject *parent) : QObject(parent)
{

}



float calculatrice::operate(float NombreA, float NombreB,E_ope ope)
{
    float res = 0;

    switch (ope) {
    case Multiply:
        res = NombreA *NombreB;
        break;
    case Substrate:
        res = NombreA-NombreB;
        break;
    case Add:
        res = NombreA+NombreB;
        break;
    default:
        throw "ça n'arrive jamais";
    }
    return res;
}




