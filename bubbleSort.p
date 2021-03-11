Program BubbleSort;

TYPE 
        int_array = array of integer;

var 
        arr : int_array;
        arr_size : integer = 100;
        i, j : integer;
        temp : integer;

PROCEDURE initArray;
BEGIN
        Randomize;


        setlength(arr,arr_size);
        FOR i:=0 TO arr_size-1 DO
        BEGIN
                arr[i] := Random(arr_size);
        END;
END;

PROCEDURE printArray;
BEGIN
        writeln();
        FOR i:=0 TO arr_size-1 DO
        BEGIN
                write(arr[i], ', ');
        END;
        writeln();
END;

PROCEDURE bubbleSort;
BEGIN

        FOR i:=0 TO arr_size-1 DO
        BEGIN
                FOR j:=0 TO arr_size-2 DO
                BEGIN
                       IF  arr[j]>arr[j+1] THEN
                       BEGIN
                                temp := arr[j];
                                arr[j] := arr[j+1];
                                arr[j+1] := temp;
                       END;
                END;
        END; 
END;


BEGIN
        initArray();
        printArray();
        bubbleSort();
        printArray();
END.
