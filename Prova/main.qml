import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


ApplicationWindow{
    id: mainwindow
    visible: true
    width: 600
    height: 400
    title: "Benvenuto"

    function login(nome,cognome){
        loginwindow.visible=true
        data.text=nome+" "+cognome
        mainwindow.visible=false
    }

    function logout(){
        loginwindow.visible=false
        nome.text=""
        cognome.text=""
        mainwindow.visible=true
    }

    Window{
        id:loginwindow
        visible:false
        width:600
        height:400
        title: "Bentornato"
        Column{
            anchors.centerIn: parent
            Row{
                spacing: 10
                Text{
                    id:text3
                    text:"Bentornato"
                }
                Text{
                    id:data
                }
            }
            Row{
                Button{
                    id:logoutbutton
                    text:"Logout"
                    onClicked: {
                        logout()
                    }
                }
            }
        }

    }


    Column{
        id:column1
        spacing: 30
        anchors.centerIn: parent
        Row{
            Image{
                source: "/images/LOGO.png"
                height:100
                width:100
            }
        }

        Row{
            id:row1
            spacing: 20
            Text{
                id:text1
                text: "Nome"
            }
            TextField{
                id:nome
                height: 30
            }
        }
        Row{
            id:row2
            spacing: 20
            Text{
                id:text2
                text: "Cognome"
            }
            TextField{
                id:cognome
                height: 30
            }
        }
        Row{
            spacing:15
            Text{
                text:"Login only"
            }

            Switch{
                id:switch1
                onPositionChanged: {
                    if(switch1.position==0){
                        button2.enabled=true
                    }
                    else
                        button2.enabled=false
                }
            }
        }

        Row{
            spacing: 15
            Button{
                id:button1
                text: "Login"
                onClicked: {
                    if(nome.text=="" || cognome.text==""){
                        console.log("Inserisci dati validi")
                    }
                    else
                    login(nome.text,cognome.text)
                }
            }
            Button{
                id:button2
                text: "Register"
                onClicked: {

                }
            }
        }
    }
}
