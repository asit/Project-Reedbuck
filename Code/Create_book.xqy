declare function local:create-book($bookName as xs:string*,$bookType as xs:string*,$bookDesc as xs:string*)
{
    let $book:=xdmp:directory("/Books/","infinity")/bookdata
    let $bookCount:=fn:count($book/book)
    let $bookIdGen:= fn:concat("B",$bookCount +1)
    let $newBook:= (
                         element book
                         {
                           attribute bookid{$bookIdGen},
                           element book_name{$bookName},
                           element book_type{$bookType},
                           element book_desc{$bookDesc}
                         }
                   )
                   
    return xdmp:node-insert-child($book,$newBook)
   
};
