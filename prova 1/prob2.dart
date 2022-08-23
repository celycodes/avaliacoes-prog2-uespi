//Celenny Cristhyne e Richelle Kim

class Equation{
  int _a,_x;
   
  Equation(this._a,this._x);
  @override
  String toString(){
    return "${_a}X$_x";
  }
  Equation operator*(int n){
    return Equation(_a * n ,_x);
  } 
}

class EqTerm{
  List<Equation> eqterm=[];
  EqTerm (this.eqterm);
 
  @override
String toString(){
    if (eqterm.isNotEmpty){
      for(int i=0;i < eqterm.length;i++){
        var operations = eqterm[i]; 
      }
      return eqterm.toString();
    }
     return "x=0";
  }
    EqTerm operator*(int n){
    List<Equation> resultItems = [];
    for(var i = 0; i < eqterm.length; i++){
      resultItems.add(eqterm[i]*n);
    }
    var result = EqTerm(resultItems);
    return result;
  }
}
class LinearSystem{
  List<Equation> eqterm=[];
  LinearSystem (this.eqterm);

  @override
  String toString(){
    if(eqterm.isEmpty){
      return "Sistema de linha Vazio";
    }
    String representante = "";
    for(int i=0; i < eqterm.length; i++){
      representante += ' ${eqterm[i].toString()}';
      if(i != eqterm.length-1)
        representante += " +";
      
      else representante +=" =0";
    }
    return representante;
  }  
}
 
void main(){
  var e1= EqTerm([Equation(2,3),Equation(9,8),Equation(7,2)]);
  print(e1);
  print(e1*2);
  print (LinearSystem([Equation(8,12),Equation(90,8),Equation(5,2)]));
  print(LinearSystem([]));
}