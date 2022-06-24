                                    #include "calculatrice.h"

                                    calculatrice::calculatrice(QObject *parent) : QObject(parent)
                                    {

                                    res = 0;
                                    nbrbis = 0;
                                    nbrope = 0;
                                    resegal = 0;
                                    dot = 0;
                                    x = 0;
                                    nega = 0;
                                    supval = 0;
                                    }

                                    double calculatrice::keyboard(double nbinput)
                                    {
                                        if (nega == 1)
                                        {
                                            if (dot == 1)
                                            {
                                                x++;
                                                res = res + (-nbinput/(double (pow(10.0000000,x))));
                                                }
                                            else {
                                                res = res*10 + (-nbinput);
                                            }
                                        }
                                        else {

                                         if (dot == 1)
                                         {
                                             x++;
                                             res = res + nbinput/(pow(10,x));
                                             }
                                         else {
                                             res = res*10 + nbinput;
                                         }
                                        }

                                        return res;
                                    }

                                       double calculatrice::operate(E_ope ope)// E_result result)
                                       {


                                        switch (ope) {
                                           case Multiply:

                                                  nbrbis = res;
                                                  res = 0;
                                                  nbrope = 1;
                                                  dot = 0;
                                                  x = 0;
                                                  nega = 0;


                                                break;

                                           case Substrate:

                                                  nbrbis = res;
                                                  res = 0;
                                                  nbrope = 2;
                                                  dot = 0;
                                                  x = 0;
                                                  nega = 0;


                                               break;

                                           case Add:

                                                  nbrbis = res;
                                                  res = 0;
                                                  nbrope=3;
                                                  dot = 0;
                                                  x = 0;
                                                  nega = 0;


                                            break;

                                           case Split:

                                                  nbrbis = res;
                                                  res = 0;
                                                  nbrope=4;
                                                  dot = 0;
                                                  x = 0;
                                                  nega = 0;


                                               break;

                                           default:

                                               throw "ça n'arrive jamais";
                                    }
                                        return nbrope;
                                       }
                                       double calculatrice::result(E_result result)
                                       {
                                        switch (result) {
                                        case Resultend:
                                            if(nbrope==1)
                                            {
                                                resegal = nbrbis * res;
                                                nbrbis = 0;
                                                res = 0;
                                                dot = 0;
                                                x = 0;
                                                nega = 0;


                                            }
                                            if(nbrope==2)
                                            {
                                                resegal = nbrbis - res;
                                                 nbrbis = 0;
                                                 res = 0;
                                                 dot = 0;
                                                 x = 0;
                                                 nega = 0;

                                            }
                                            if(nbrope==3)
                                            {
                                                resegal = nbrbis + res;
                                                 nbrbis = 0;
                                                 res = 0;
                                                 dot = 0;
                                                 x = 0;
                                                 nega = 0;

                                            }
                                            if(nbrope==4)
                                            {
                                                resegal = nbrbis / res;
                                                 nbrbis = 0;
                                                 res = 0;
                                                 dot = 0;
                                                 x = 0;
                                                 nega = 0;

                                            }
                                            break;
                                        default :
                                            throw "ça n'arrive jamais";

                                        }

                                        return resegal;
                                    }
                                     void calculatrice::reset(void)
                                     {
                                        res = 0;
                                        nbrbis = 0;
                                        dot = 0;
                                        x = 0;
                                        nega = 0;


                                     }
                                     double calculatrice::sup(void)
                                     {

                                             supval = 1;

                                         return supval;
                                     }
                                     int calculatrice::nbdot(void)
                                     {
                                         dot = 1;
                                         return dot;
                                     }
                                     int calculatrice::negative(void)
                                     {
                                         nega = 1;
                                         return nega;
                                     }


