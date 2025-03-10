{-# htermination (maxBoundOrdering :: Ordering) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Ordering = LT  | EQ  | GT ;

maxBoundOrdering :: Ordering
maxBoundOrdering = GT;

