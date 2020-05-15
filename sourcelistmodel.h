#ifndef SOURCELISTMODEL_H
#define SOURCELISTMODEL_H

#include <QAbstractListModel>
#include <QList>
#include <QString>
#include <QHash>
#include <QByteArray>

class Element
{
public:
    Element(QString name_, int id_, int age_) {
        name = name_;
        id = id_;
        age = age_;
    }

public:
    QString name;
    int id;
    int age;
};

class SourceListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum LineInfo_Roles {
        RoleId = Qt::UserRole + 1,
        RoleName,
        RoleAge
    };

public:
    explicit SourceListModel(QObject *parent = 0);

    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void changeName(int index);

private:
    QList<Element> m_display_list;
    QHash<int, QByteArray> m_roleNames;
};

#endif // SOURCELISTMODEL_H
