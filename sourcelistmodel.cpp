#include "sourcelistmodel.h"

SourceListModel::SourceListModel(QObject *parent)
    : QAbstractListModel(parent)
{
    m_display_list.clear();
    m_roleNames.insert(RoleId, "id");
    m_roleNames.insert(RoleName, "name");
    m_roleNames.insert(RoleAge, "age");

    m_display_list.push_back(Element("屏幕截图", 1, 20));
//    m_display_list.push_back(Element("liu", 2, 20));
//    m_display_list.push_back(Element("zhang", 3, 20));
//    m_display_list.push_back(Element("weo", 4, 20));
//    m_display_list.push_back(Element("say", 5, 20));
//    m_display_list.push_back(Element("bye", 6, 20));
//    m_display_list.push_back(Element("why", 7, 20));
}

int SourceListModel::rowCount(const QModelIndex &parent) const
{
    return m_display_list.size();
}

QVariant SourceListModel::data(const QModelIndex &index, int role) const
{
    Element ele = m_display_list.at(index.row());
    QVariant var;
    switch (role) {
    case RoleId:
        var = ele.id;
        break;
    case RoleName:
        var = ele.name;
        break;
    case RoleAge:
        var = ele.age;
        break;
    default:
        break;
    }

    return var;
}

QHash<int, QByteArray> SourceListModel::roleNames() const
{
    return m_roleNames;
}

void SourceListModel::changeName(int index)
{
    if(index == 1){
        Element ele1("change1", 1, 2);
        m_display_list[index] = ele1;
    }

    if(index == 2){
        Element ele2("change2", 2, 3);
        m_display_list[index] = ele2;
    }

    emit dataChanged(createIndex(index,0), createIndex(index,0));
}
