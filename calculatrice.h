#ifndef CALCULATRICE_H

#define CALCULATRICE_H

#include <QObject>
#include <QString>
#include <QDebug>
#include <math.h>


class calculatrice : public QObject
{
    Q_OBJECT
private:
    float res;
    float nbrbis;
    int i;
    float resegal;
    int dot;
    int x;
    int nega;

public:
    enum E_ope {
           Multiply,
           Substrate,
           Add,
           Split
       };
       Q_ENUM(E_ope)
       void setOpe(E_ope ope);
       E_ope getOpe() const;
    enum E_result {
        Resultend

    };
    Q_ENUM(E_result)
    void setRes(E_result result);
    E_result getRes() const;

    explicit calculatrice(QObject *parent = nullptr);
    Q_INVOKABLE float key(float nbinput);
    Q_INVOKABLE int operate (E_ope);
    Q_INVOKABLE float result (E_result);
    Q_INVOKABLE void reset (void);
    Q_INVOKABLE float sup (void);
    Q_INVOKABLE int nbdot(void);
    Q_INVOKABLE int negative(void);


signals:

private :


};

#endif // CALCULATRICE_H
