#ifndef CALCULATRICE_H
#define CALCULATRICE_H

#include <QObject>

class calculatrice : public QObject
{
    Q_OBJECT

    enum E_ope {
            Multiply,
            Substrate,
            Add
        };

public:
    explicit calculatrice(QObject *parent = nullptr);

    float operate(float, float,E_ope);

signals:

};

#endif // CALCULATRICE_H
