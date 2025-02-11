#import "ReverseBinary.h"

//циклом проходим по разрядам
//т.к от нас требуют развернутое двоичное число, то будем идти в порядке от 0 к 7
//для получения обычного двоичного числа, нужно перебирать точно так же, только каждое новое деление с остатком записывать в начало строки.
//если равен одному байту
//число равно сумме байтов в степени разряда (если разряд равен 7 и он 1 байт, то число равно 2 в степени 7)
//уменьшаем число для перевода в байты

UInt8 ReverseInteger(UInt8 n) {
    UInt8 res = 0;

    for (int i = 0; i < 8; i++) {
        if (n % 2 == 1){
            res += pow(2,7-i);
        }
        n = n / 2;
    }
    return res;
}
