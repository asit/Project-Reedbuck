import module namespace ReedBuck =  "http://www.innodata-isogen.com/ReedBuck/ReedBuck" at "MODULE_Reedbuck.xqy";

declare variable $MODE external;
declare variable $BookName as xs:string * external;
declare variable $BookType as xs:string * external;
declare variable $BookDesc as xs:string * external;
declare variable $BookId as xs:string * external;


if ($MODE="create_book")
then (ReedBuck:create-book($BookName,$BookType,$BookDesc))
else if ($MODE="view_book")
then (ReedBuck:get-book-info($BookId))
else ()
