void main(List<String> args) {
   int nb = int.parse(args[0]);
    String result = '';
    if (nb ==0){
        result = 'zero';
    } if( nb > 0){
        result = 'positive';
    }else{
        result = 'negative';
    }
    print('$nb is $result');
}

