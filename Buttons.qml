
import QtQuick 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14


Item {
    RowLayout {
        Button {
            text: "Ok"
            onClicked: model.submit()
        }
        Button {
            text: "Cancel"
            onClicked: model.revert()
        }
    }
}
