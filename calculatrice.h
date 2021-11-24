#ifndef CALCULATRICE_H
#define CALCULATRICE_H

#include <QObject>
//namespace calculatriceTools  {

//Q_NAMESPACE

//    enum E_ope {
//        Multiply,
//        Substrate,
//        Add
//    };
//    Q_ENUM_NS(E_ope)
//}

class calculatrice : public QObject
{
    Q_OBJECT


public:

    enum E_ope {
        Multiply,
        Substrate,
        Add
    };
    Q_ENUM(E_ope)
    void setOpe(E_ope ope);
    E_ope getOpe() const;
    explicit calculatrice(QObject *parent = nullptr);




    Q_INVOKABLE float operate(float NombreA, float NombreB,E_ope);



signals:

private :


};

#endif // CALCULATRICE_H
