// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef kriptoyng_QT_kriptoyngADDRESSVALIDATOR_H
#define kriptoyng_QT_kriptoyngADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class kriptoyngAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit kriptoyngAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** kriptoyng address widget validator, checks for a valid kriptoyng address.
 */
class kriptoyngAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit kriptoyngAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // kriptoyng_QT_kriptoyngADDRESSVALIDATOR_H
