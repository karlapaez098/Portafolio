class texto{
    constructor(){
        this.etiqueta=document.getElementById("txtCodigo")
        this.mostrar=document.getElementById("mostrar")
        this.a=["<h5>","</h5>"]
        this.b
        this.c
        this.mensaje=document.getElementById("mensaje")
    }
    accion(){
        this.mostrar.innerHTML= " "
        this.b=this.etiqueta.value.split(" ")
        this.c=this.b.length
        if(this.b[0]==this.a[0] && this.b[this.c-1]==this.a[1]){
            this.mostrar.innerHTML=this.etiqueta.value
            mostrar_texto.validar()
        }
        else{
            alert("Codigo incorrecto")
            mostrar_texto.inicio()
        }
    }

    validar(){
        this.mensaje.style.display="block"
    }

    inicio(){
        this.mensaje.style.display="none"
    }
}


let mostrar_texto=new texto()
window.onload=mostrar_texto.inicio()