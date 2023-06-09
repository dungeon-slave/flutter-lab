/*
        Конструктор - публичный метод с таким же именем, как имя класса, который
    используется для создания и инициализации объекта класса. Конструкторы по варианту создания есть трёх типов:
        * Default - присутствует в любом классе, даже если конструктор не прописан явно, используется только для создания объекта;
        * Unnamed - конструктор, имеющий имя класса, может присутствовать в классе только в одном экземпляре, может использоваться для инициализации полей класса и других действий;
        * Named - конструктор с определённым именем, которое указывается через точку после имени безымянного конструктора. Нужен, если необходимо создавать в классе множество конструкторов;
        * Factory - конструктор, который используется для реализации паттернов Factory и Singlton, отличается от вышестоящих тем, что не имеет доступа к this. В factory конструкторах обычно вызываются другие конструкторы.

        Для вызова безымянного или дефолтного родительского конструктора 
    используется вызов super(), для вызова именованного - super.namedContr(). Для обращения к полям/методам родительского класса так же используется ключевое слово super.parentField.
*/

void main(List<String> args) {
    Inheritor b = new Inheritor();
}

class Example
{
    int? _a;

    Example()
    {
        print("Super constructor");
    }

    // Example(int a)
    // {

    // }

    Example.namedCstr1(int a)
    {
        Example();
        _a = a;
    }

    Example.namedCstr2(int a, int b)
    {
        _a = a + b;
    }
}

class Inheritor extends Example
{
    Inheritor() : super.namedCstr1(1)
    {

    }
}
