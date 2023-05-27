/*
        Never: обозначает что вычисление никогда успешно не завершится. 
    После вызова функции с возвращаемым типом Never выполнение программы как бы прекращается, тк дальше вызова этой функции выполнение программы не пойдёт. Never - значит, что выполнение никогда не закончится.
        Never используется как возвращаемый тип в функциях, которые всегда 
    выбрасывают исключения, которые крутятся в бесконечных циклах и тд. В общем, в функциях, которые никогда успешно не завершатся.

        Асинки невер?
*/

void main(List<String> args) {
    checkNum();

    print("asas");
}

Never checkNum()
{
    while (true) {
      
    }
    throw Exception("Never");
}