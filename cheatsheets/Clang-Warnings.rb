cheatsheet do
  title 'Clang Warnings'
  docset_file_name 'Clang Warnings'
  keyword 'clang'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Semantic Warnings'
    entry do
        command '-WCFString-literal'
        name <<-'END'
        Input conversion stopped due to an input byte that does not belong to the input codeset `UTF-8`
        END
    end

    entry do
        command '-WNSObject-attribute'
        name <<-'END'
        `__attribute ((NSObject))` may be put on a typedef only, attribute is ignored
        END
    end

    entry do
        command '-Wabstract-vbase-init'
        name <<-'END'
        Initializer for virtual base class `%0` of abstract class `%1` will never be used
        END
    end

    entry do
        command '-Waddress-of-array-temporary'
        name <<-'END'
        Pointer is initialized by a temporary array, which will be destroyed at the end of the full-expression
        END
    end

    entry do
        command '-Warc-maybe-repeated-use-of-weak'
        name <<-'END'
        `weak` `%select{variable|property|implicit property|instance variable}` `%1` may be accessed multiple times in this `%select{function|method|block|lambda}` and may be unpredictably set to `nil` assign to a `strong` variable to keep the object alive
        END
    end

    entry do
        command '-Warc-non-pod-memaccess'
        name <<-'END'
        `%select{destination for|source of}` this `%1` call is a pointer to ownership-qualified type `%2`
        END
    end

    entry do
        command '-Warc-performSelector-leaks'
        name <<-'END'
        PerformSelector may cause a leak because its selector is unknown
        END
    end

    entry do
        command '-Warc-repeated-use-of-weak'
        name <<-'END'
        `weak` `%select{variable|property|implicit property|instance variable}` `%1` is accessed multiple times in this `%select{function|method|block|lambda}` but may be unpredictably set to `nil` assign to a `strong` variable to keep the object alive
        END
    end

    entry do
        command '-Warc-retain-cycles'
        name <<-'END'
        Capturing `%0` strongly in this block is likely to lead to a retain cycle
        END
    end

    entry do
        command '-Warc-unsafe-retained-assign'
        name <<-'END'
        Assigning `retained` object to unsafe property object will be released after assignment
        END
    end
    
    entry do
        command '-Warc-unsafe-retained-assign'
        name <<-'END'
        assigning retained object to unsafe property object will be released after assignment
        END
    end
          
              entry do
                command '-Warc-unsafe-retained-assign'
                name <<-'END'
                assigning %select{array literal|dictionary literal|numeric literal|boxed expression|should not happen|block literal}0 to a weak %select{property|variable}1 object will be released after assignment
        END
     end
          
              entry do
                command '-Warc-unsafe-retained-assign'
                name <<-'END'
                assigning retained object to %select{weak|unsafe_unretained}0 %select{property|variable}1 object will be released after assignment
        END
     end
          
              entry do
                command '-Warray-bounds'
                name <<-'END'
                array index %0 is past the end of the array (which contains %1 element%s2)
        END
     end
          
              entry do
                command '-Warray-bounds'
                name <<-'END'
                array index %0 is before the beginning of the array
        END
     end
          
              entry do
                command '-Warray-bounds'
                name <<-'END'
                'static' has no effect on zero-length arrays
        END
     end
          
              entry do
                command '-Warray-bounds'
                name <<-'END'
                array argument is too small contains %0 elements, callee requires at least %1
        END
     end
          
              entry do
                command '-Warray-bounds-pointer-arithmetic'
                name <<-'END'
                the pointer incremented by %0 refers past the end of the array (that contains %1 element%s2)
        END
     end
          
              entry do
                command '-Warray-bounds-pointer-arithmetic'
                name <<-'END'
                the pointer decremented by %0 refers before the beginning of the array
        END
     end
          
              entry do
                command '-Wassign-enum'
                name <<-'END'
                integer constant not in range of enumerated type %0
        END
     end
          
              entry do
                command '-Watomic-property-with-user-defined-accessor'
                name <<-'END'
                writable atomic property %0 cannot pair a synthesized %select{getter|setter}1 with a user defined %select{getter|setter}2
        END
     end
          
              entry do
                command '-Wattributes'
                name <<-'END'
                unknown attribute %0 ignored
        END
     end
          
              entry do
                command '-Wauto-var-id'
                name <<-'END'
                'auto' deduced as 'id' in declaration of %0
        END
     end
          
              entry do
                command '-Wavailability'
                name <<-'END'
                unknown platform %0 in availability macro
        END
     end
          
              entry do
                command '-Wavailability'
                name <<-'END'
                overriding method %select{introduced after|deprecated before|obsoleted before}0 overridden method on %1 (%2 vs. %3)
        END
     end
          
              entry do
                command '-Wavailability'
                name <<-'END'
                availability does not match previous declaration
        END
     end
          
              entry do
                command '-Wavailability'
                name <<-'END'
                overriding method cannot be unavailable on %0 when its overridden method is available
        END
     end
          
              entry do
                command '-Wavailability'
                name <<-'END'
                feature cannot be %select{introduced|deprecated|obsoleted}0 in %1 version %2 before it was %select{introduced|deprecated|obsoleted}3 in version %4 attribute ignored
        END
     end
          
              entry do
                command '-Wbad-function-cast'
                name <<-'END'
                cast from function call of type %0 to non-matching type %1
        END
     end
          
              entry do
                command '-Wbitfield-constant-conversion'
                name <<-'END'
                implicit truncation from %2 to bitfield changes value from %0 to %1
        END
     end
          
              entry do
                command '-Wbitwise-op-parentheses'
                name <<-'END'
                '&' within '|'
        END
     end
          
              entry do
                command '-Wbool-conversion'
                name <<-'END'
                initialization of pointer of type %0 to null from a constant boolean "  "expression
        END
     end
          
              entry do
                command '-Wbridge-cast'
                name <<-'END'
                %0 cannot bridge to %1
        END
     end
          
              entry do
                command '-Wbridge-cast'
                name <<-'END'
                %0 bridges to %1, not %2
        END
     end
          
              entry do
                command '-Wbuiltin-requires-header'
                name <<-'END'
                declaration of built-in function '%0' requires inclusion of the header stdio.h
        END
     end
          
              entry do
                command '-Wbuiltin-requires-header'
                name <<-'END'
                declaration of built-in function '%0' requires inclusion of the header setjmp.h
        END
     end
          
              entry do
                command '-Wbuiltin-requires-header'
                name <<-'END'
                declaration of built-in function '%0' requires inclusion of the header ucontext.h
        END
     end
          
              entry do
                command '-Wc++-compat'
                name <<-'END'
                %select{|empty }0%select{struct|union}1 has size 0 in C, %select{size 1|non-zero size}2 in C++
        END
     end
          
              entry do
                command '-Wc++11-compat'
                name <<-'END'
                explicit instantiation cannot be 'inline'
        END
     end
          
              entry do
                command '-Wc++11-compat'
                name <<-'END'
                explicit instantiation of %0 must occur at global scope
        END
     end
          
              entry do
                command '-Wc++11-compat'
                name <<-'END'
                explicit instantiation of %0 not in a namespace enclosing %1
        END
     end
          
              entry do
                command '-Wc++11-compat'
                name <<-'END'
                explicit instantiation of %q0 must occur in namespace %1
        END
     end
          
              entry do
                command '-Wc++11-narrowing'
                name <<-'END'
                constant expression evaluates to %0 which cannot be narrowed to type %1 in C++11
        END
     end
          
              entry do
                command '-Wc++11-narrowing'
                name <<-'END'
                type %0 cannot be narrowed to %1 in initializer list in C++11
        END
     end
          
              entry do
                command '-Wc++11-narrowing'
                name <<-'END'
                non-constant-expression cannot be narrowed from type %0 to %1 in initializer list in C++11
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                type definition in a constexpr %select{function|constructor}0 is incompatible with C++ standards before C++1y
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                use of this statement in a constexpr %select{function|constructor}0 is incompatible with C++ standards before C++1y
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                init-captures.def warn_cxx11_compat_init_capture : Warning  "initialized lambda captures are incompatible with C++ standards "  "before C++1y"
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                variable declaration in a constexpr %select{function|constructor}0 is incompatible with C++ standards before C++1y
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                constexpr function with no return statements is incompatible with C++ standards before C++1y
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                multiple return statements in constexpr function is incompatible with C++ standards before C++1y
        END
     end
          
              entry do
                command '-Wc++98-c++11-compat'
                name <<-'END'
                variable templates are incompatible with C++ standards before C++1y
        END
     end

     entry do
                command '-Wc++98-compat'
                name <<-'END'
                substitution failure due to access control is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                %select{anonymous struct|union}0 member %1 with a non-trivial %select{constructor|copy constructor|move constructor|copy assignment operator|move assignment operator|destructor}2 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                enumeration type in nested name specifier is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                static data member %0 in union is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                default template arguments for a function template are incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                scalar initialized from empty initializer list is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                befriending %1 without '%select{struct|interface|union|class|enum}0' keyword is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                use of null pointer as non-type template argument is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                friend declaration naming a member of the declaring class is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                non-class friend type %0 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                befriending enumeration type %0 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                use of non-static data member %0 in an unevaluated context is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                friend function %0 would be implicitly redefined in C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                %select{class template|class template partial|variable template|variable template partial|function template|member function|static data member|member class|member enumeration}0 specialization of %1 outside namespace %2 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                reference initialized from initializer list is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                redundant parentheses surrounding address non-type template argument are incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                initialization of initializer_list object is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                use of 'template' keyword outside of a template is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                non-type template argument referring to %select{function|object}0 %1 with internal linkage is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                use of 'typename' outside of a template is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                passing object of trivial but non-POD type %0 through variadic %select{function|block|method|constructor}1 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                goto would jump into protected scope in C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                constructor call from initializer list is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                'auto' type specifier is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                delegating constructors are incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                'constexpr' specifier is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                inheriting constructors are incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                explicit conversion functions are incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                switch case would be in a protected scope in C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                '%0' type specifier is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat'
                name <<-'END'
                indirect goto might cross protected scopes in C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat-pedantic'
                name <<-'END'
                cast between pointer-to-function and pointer-to-object is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wc++98-compat-pedantic'
                name <<-'END'
                implicit conversion from array size expression of type %0 to %select{integral|enumeration}1 type %2 is incompatible with C++98
        END
     end
            
          
            
              entry do
                command '-Wcast-align'
                name <<-'END'
                cast from %0 to %1 increases required alignment from %2 to %3
        END
     end
            
          
            
              entry do
                command '-Wcast-of-sel-type'
                name <<-'END'
                cast of type %0 to %1 is deprecated use sel_getName instead
        END
     end
            
          
            
              entry do
                command '-Wchar-subscripts'
                name <<-'END'
                array subscript is of type 'char'
        END
     end
            
          
            
              entry do
                command '-Wconditional-uninitialized'
                name <<-'END'
                variable %0 may be uninitialized when %select{used here|captured by block}1
        END
     end
            
          
            
              entry do
                command '-Wconstant-logical-operand'
                name <<-'END'
                use of logical '%0' with constant operand
        END
     end
            
          
            
              entry do
                command '-Wconstexpr-not-const'
                name <<-'END'
                'constexpr' non-static member function will not be implicitly 'const' in C++1y add 'const' to avoid a change in behavior
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                state of variable '%0' must match at the entry and exit of loop
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                parameter '%0' not in expected state when the function returns: expected '%1', observed '%2'
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                argument not in expected state expected '%0', observed '%1'
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                invalid invocation of method '%0' on a temporary object while it is in the '%1' state
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                return state set for an unconsumable type '%0'
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                "consumed analysis attribute is attached to member of class '%0' which isn't marked as consumable"
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                invalid invocation of method '%0' on object '%1' while it is in the '%2' state
        END
     end
            
          
            
              entry do
                command '-Wconsumed'
                name <<-'END'
                return value not in expected state expected '%0', observed '%1'
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                implicit conversion discards imaginary component: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                non-type template argument with value '%0' converted to '%1' for unsigned template parameter of type %2
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                implicit conversion loses floating-point precision: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                implicit conversion loses integer precision: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                non-type template argument value '%0' truncated to '%1' for template parameter of type %2
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                implicit conversion turns vector to scalar: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wconversion'
                name <<-'END'
                implicit conversion turns floating-point number into integer: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wcovered-switch-default'
                name <<-'END'
                default label in switch which covers all enumeration values
        END
     end
            
          
            
              entry do
                command '-Wcustom-atomic-properties'
                name <<-'END'
                atomic by default property %0 has a user defined %select{getter|setter}1 (property should be marked 'atomic' if this is intended)
        END
     end
            
          
            
              entry do
                command '-Wdangling-field'
                name <<-'END'
                initializing pointer member %0 with the stack address of parameter %1
        END
     end
            
          
            
              entry do
                command '-Wdangling-field'
                name <<-'END'
                binding reference %select{|subobject of }1member %0 to a temporary value
        END
     end
            
              entry do
                command '-Wdangling-field'
                name <<-'END'
                binding reference member %0 to stack allocated parameter %1
        END
     end
            
          
            
              entry do
                command '-Wdangling-initializer-list'
                name <<-'END'
                array backing the initializer list will be destroyed at the end of %select{the full-expression|the constructor}0
        END
     end
            
          
            
              entry do
                command '-Wdelete-incomplete'
                name <<-'END'
                deleting pointer to incomplete type %0 may cause undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wdelete-non-virtual-dtor'
                name <<-'END'
                delete called on %0 that is abstract but has non-virtual destructor
        END
     end
            
          
            
              entry do
                command '-Wdelete-non-virtual-dtor'
                name <<-'END'
                delete called on %0 that has virtual functions but non-virtual destructor
        END
     end
            
          
            
              entry do
                command '-Wdeprecated'
                name <<-'END'
                access declarations are deprecated use using declarations instead
        END
     end
            
          
            
              entry do
                command '-Wdeprecated'
                name <<-'END'
                definition of implicit copy %select{constructor|assignment operator}1 for %0 is deprecated because it has a user-declared %select{copy %select{assignment operator|constructor}1|destructor}2
        END
     end
            
          
            
              entry do
                command '-Wdeprecated'
                name <<-'END'
                dynamic exception specifications are deprecated
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-increment-bool'
                name <<-'END'
                incrementing expression of type bool is deprecated
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-objc-isa-usage'
                name <<-'END'
                assignment to Objective-C's isa is deprecated in favor of object_setClass()
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-objc-isa-usage'
                name <<-'END'
                direct access to Objective-C's isa is deprecated in favor of object_getClass()
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-objc-pointer-introspection'
                name <<-'END'
                bitmasking for introspection of Objective-C object pointers is strongly discouraged
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-objc-pointer-introspection-performSelector'
                name <<-'END'
                warn_objc_pointer_masking.Text
        END
     end
            
          
            
              entry do
                command '-Wdeprecated-writable-strings'
                name <<-'END'
                dummy warning to enable -fconst-strings
        END
     end
            
          
            
              entry do
                command '-Wdirect-ivar-access'
                name <<-'END'
                instance variable %0 is being directly accessed
        END
     end
            
          
            
              entry do
                command '-Wdistributed-object-modifiers'
                name <<-'END'
                conflicting distributed object modifiers on return type in implementation of %0
        END
     end
            
          
            
              entry do
                command '-Wdistributed-object-modifiers'
                name <<-'END'
                conflicting distributed object modifiers on parameter type in implementation of %0
        END
     end
            
          
            
              entry do
                command '-Wdivision-by-zero'
                name <<-'END'
                division by zero is undefined
        END
     end
            
          
            
              entry do
                command '-Wdivision-by-zero'
                name <<-'END'
                remainder by zero is undefined
        END
     end
            
          
            
              entry do
                command '-Wdocumentation'
                name <<-'END'
                parameter '%0' not found in the function declaration
        END
     end
            
          
            
              entry do
                command '-Wdocumentation'
                name <<-'END'
                not a Doxygen trailing comment
        END
     end
            
          
            
              entry do
                command '-Wduplicate-enum'
                name <<-'END'
                element %0 has been implicitly assigned %1 which another element has been assigned
        END
     end
            
          
            
              entry do
                command '-Wduplicate-method-match'
                name <<-'END'
                multiple declarations of method %0 found and ignored
        END
     end
            
          
            
              entry do
                command '-Wdynamic-class-memaccess'
                name <<-'END'
                %select{destination for|source of|first operand of|second operand of}0 this %1 call is a pointer to dynamic class %2 vtable pointer will be %select{overwritten|copied|moved|compared}3
        END
     end
            
          
            
              entry do
                command '-Wempty-body'
                name <<-'END'
                switch statement has empty body
        END
     end
            
          
            
              entry do
                command '-Wempty-body'
                name <<-'END'
                for loop has empty body
        END
     end
            
          
            
              entry do
                command '-Wempty-body'
                name <<-'END'
                if statement has empty body
        END
     end
            
          
            
              entry do
                command '-Wempty-body'
                name <<-'END'
                range-based for loop has empty body
        END
     end
            
          
            
              entry do
                command '-Wempty-body'
                name <<-'END'
                while loop has empty body
        END
     end
            
          
            
              entry do
                command '-Wenum-compare'
                name <<-'END'
                comparison of two values with different enumeration types%diff{ ($ and $)|}0,1
        END
     end
            
          
            
              entry do
                command '-Wenum-conversion'
                name <<-'END'
                implicit conversion from enumeration type %0 to different enumeration type %1
        END
     end
            
          
            
              entry do
                command '-Wexit-time-destructors'
                name <<-'END'
                declaration requires an exit-time destructor
        END
     end
            
          
            
              entry do
                command '-Wexplicit-ownership-type'
                name <<-'END'
                method parameter of type %0 with no explicit ownership
        END
     end
            
          
            
              entry do
                command '-Wextern-c-compat'
                name <<-'END'
                %select{|empty }0%select{struct|union}1 has size 0 in C, %select{size 1|non-zero size}2 in C++
        END
     end
            
          
            
              entry do
                command '-Wextern-initializer'
                name <<-'END'
                'extern' variable has an initializer
        END
     end
            
          
            
              entry do
                command '-Wfloat-equal'
                name <<-'END'
                comparing floating point with == or != is unsafe
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                data argument position '%0' exceeds the number of data arguments (%1)
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                position arguments in format strings start counting at 1 (not 0)
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                invalid position specified for %select{field width|field precision}0
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                cannot mix positional and non-positional arguments in format string
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                values of type '%0' should not be used as format arguments add an explicit cast to %1 instead
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                format specifies type %0 but the argument has type %1
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                zero field width in scanf format string is unused
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                no closing ']' for '%%[' in scanf format string
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                format string should not be a wide string
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                format string contains '\\0' within the string body
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                '%select{*|.*}0' specified field %select{width|precision}0 is missing a matching 'int' argument
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                field %select{width|precision}0 should have type %1, but argument has type %2
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                %select{field width|precision}0 used with '%1' conversion specifier, resulting in undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                format string missing
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                incomplete format specifier
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                flag '%0' results in undefined behavior with '%1' conversion specifier
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                flag '%0' is ignored when flag '%1' is present
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                more '%%' conversions than data arguments
        END
     end
            
          
            
              entry do
                command '-Wformat'
                name <<-'END'
                length modifier '%0' results in undefined behavior or no effect with '%1' conversion specifier
        END
     end
            
          
            
              entry do
                command '-Wformat-extra-args'
                name <<-'END'
                data argument not used by format string
        END
     end
            
          
            
              entry do
                command '-Wformat-invalid-specifier'
                name <<-'END'
                invalid conversion specifier '%0'
        END
     end
            
          
            
              entry do
                command '-Wformat-nonliteral'
                name <<-'END'
                format string is not a string literal
        END
     end
            
          
            
              entry do
                command '-Wformat-security'
                name <<-'END'
                format string is not a string literal (potentially insecure)
        END
     end
            
          
            
              entry do
                command '-Wformat-zero-length'
                name <<-'END'
                format string is empty
        END
     end
            
          
            
              entry do
                command '-Wgcc-compat'
                name <<-'END'
                GCC does not allow the 'cleanup' attribute argument to be anything other than a simple identifier
        END
     end
            
          
            
              entry do
                command '-Wglobal-constructors'
                name <<-'END'
                declaration requires a global constructor
        END
     end
            
          
            
              entry do
                command '-Wglobal-constructors'
                name <<-'END'
                declaration requires a global destructor
        END
     end
            
          
            
              entry do
                command '-Wgnu-conditional-omitted-operand'
                name <<-'END'
                use of GNU ?: conditional expression extension, omitting middle operand
        END
     end
            
          
            
              entry do
                command '-Wheader-hygiene'
                name <<-'END'
                using namespace directive in global context in header
        END
     end
            
          
            
              entry do
                command '-Widiomatic-parentheses'
                name <<-'END'
                using the result of an assignment as a condition without parentheses
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                'malloc' attribute only applies to functions returning a pointer type
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute only applies to %select{functions|unions|variables and functions|functions and methods|parameters|functions, methods and blocks|functions, methods, and classes|functions, methods, and parameters|classes|variables|methods|variables, functions and labels|fields and global variables|structs|variables, functions and tag types|thread-local variables|variables and fields|variables, data members and tag types|types and namespaces|Objective-C interfaces}1
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                '%0' attribute cannot be specified on a definition
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                __weak attribute cannot be specified on an automatic variable when ARC is not enabled
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                Objective-C GC does not allow weak variables on the stack
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                __weak attribute cannot be specified on a field declaration
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 cannot be applied to %select{functions|Objective-C method}1 without return value
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute declaration must precede definition
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 is ignored, place it after "%select{class|struct|union|interface|enum}" to apply attribute to type declaration
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                __declspec attribute %0 is not supported
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 ignored, because it cannot be applied to a type
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 after definition is ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                'sentinel' attribute only supported for variadic %select{functions|blocks}0
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                'sentinel' attribute requires named arguments
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                '%0' only applies to %select{function|pointer|Objective-C object or block pointer}1 types type here is %2
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                'nonnull' attribute applied to function with no pointer arguments
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute can only be applied to instance variables or properties
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                ibaction attribute can only be applied to Objective-C instance methods
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 calling convention ignored on variadic function
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 only applies to variables with static storage duration and functions
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute argument not supported: %1
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                ```
                #pramga ms_struct can not be used with dynamic classes or structures
                ```
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                transparent union definition must contain at least one field transparent_union attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                first field of a transparent union cannot have %select{floating point|vector}0 type %1 transparent_union attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                'gnu_inline' attribute requires function to be marked 'inline', attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                calling convention %0 ignored for this target
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                transparent_union attribute can only be applied to a union definition attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %select{alignment|size}0 of field %1 (%2 bits) does not match the %select{alignment|size}0 of the first field in transparent union transparent_union attribute ignored
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 is already applied
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute ignored for field of type %1
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute ignored when parsing type
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute only applies to %select{functions|methods|properties}1 that return %select{an Objective-C object|a pointer|a non-retainable pointer}2
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                %0 attribute only applies to %select{Objective-C object|pointer}1 parameters
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                attribute %0 is already applied with different parameters
        END
     end
            
          
            
              entry do
                command '-Wignored-attributes'
                name <<-'END'
                unknown visibility %0
        END
     end
            
          
            
              entry do
                command '-Wignored-qualifiers'
                name <<-'END'
                '%0' type qualifier%s1 on return type %plural{1:has|:have}1 no effect
        END
     end
            
          
            
              entry do
                command '-Wignored-qualifiers'
                name <<-'END'
                ARC %select{unused|__unsafe_unretained|__strong|__weak|__autoreleasing}0 lifetime qualifier on return type is ignored
        END
     end
            
          
            
              entry do
                command '-Wimplicit-atomic-properties'
                name <<-'END'
                property is assumed atomic by default
        END
     end
            
          
            
              entry do
                command '-Wimplicit-atomic-properties'
                name <<-'END'
                property is assumed atomic when auto-synthesizing the property
        END
     end
            
          
            
              entry do
                command '-Wimplicit-fallthrough'
                name <<-'END'
                fallthrough annotation in unreachable code
        END
     end
            
          
            
              entry do
                command '-Wimplicit-fallthrough'
                name <<-'END'
                unannotated fall-through between switch labels
        END
     end
            
          
            
              entry do
                command '-Wimplicit-fallthrough'
                name <<-'END'
                fallthrough annotation does not directly precede switch label
        END
     end
            
          
            
              entry do
                command '-Wimplicit-function-declaration'
                name <<-'END'
                implicit declaration of function %0
        END
     end
            
          
            
              entry do
                command '-Wimplicit-function-declaration'
                name <<-'END'
                use of unknown builtin %0
        END
     end
            
          
            
              entry do
                command '-Wimplicit-retain-self'
                name <<-'END'
                block implicitly retains 'self' explicitly mention 'self' to indicate this is intended behavior
        END
     end
            
          
            
              entry do
                command '-Wincompatible-library-redeclaration'
                name <<-'END'
                incompatible redeclaration of library function %0
        END
     end
            
          
            
              entry do
                command '-Wincomplete-implementation'
                name <<-'END'
                method definition for %0 not found
        END
     end
            
          
            
              entry do
                command '-Winherited-variadic-ctor'
                name <<-'END'
                inheriting constructor does not inherit ellipsis
        END
     end
            
          
            
              entry do
                command '-Winitializer-overrides'
                name <<-'END'
                subobject initialization overrides initialization of other fields within its enclosing subobject
        END
     end
            
          
            
              entry do
                command '-Winitializer-overrides'
                name <<-'END'
                initializer overrides prior initialization of this subobject
        END
     end
            
          
            
              entry do
                command '-Wint-to-pointer-cast'
                name <<-'END'
                cast to %1 from smaller integer type %0
        END
     end
            
          
            
              entry do
                command '-Wint-to-void-pointer-cast'
                name <<-'END'
                cast to %1 from smaller integer type %0
        END
     end
            
          
            
              entry do
                command '-Winvalid-iboutlet'
                name <<-'END'
                IBOutletCollection properties should be copy/strong and not assign
        END
     end
            
          
            
              entry do
                command '-Winvalid-iboutlet'
                name <<-'END'
                %select{instance variable|property}2 with %0 attribute must be an object type (invalid %1)
        END
     end
            
          
            
              entry do
                command '-Winvalid-noreturn'
                name <<-'END'
                function %0 declared 'noreturn' should not return
        END
     end
            
          
            
              entry do
                command '-Winvalid-noreturn'
                name <<-'END'
                function declared 'noreturn' should not return
        END
     end
            
          
            
              entry do
                command '-Wlarge-by-value-copy'
                name <<-'END'
                return value of %0 is a large (%1 bytes) pass-by-value object pass it by reference instead ?
        END
     end
            
          
            
              entry do
                command '-Wlarge-by-value-copy'
                name <<-'END'
                %0 is a large (%1 bytes) pass-by-value argument pass it by reference instead ?
        END
     end
            
          
            
              entry do
                command '-Wliteral-conversion'
                name <<-'END'
                implicit conversion from %0 to %1 changes value from %2 to %3
        END
     end
            
          
            
              entry do
                command '-Wliteral-range'
                name <<-'END'
                magnitude of floating-point constant too large for type %0 maximum is %1
        END
     end
            
          
            
              entry do
                command '-Wliteral-range'
                name <<-'END'
                magnitude of floating-point constant too small for type %0 minimum is %1
        END
     end
            
          
            
              entry do
                command '-Wlogical-not-parentheses'
                name <<-'END'
                logical not is only applied to the left hand side of this comparison
        END
     end
            
          
            
              entry do
                command '-Wlogical-op-parentheses'
                name <<-'END'
                '&&' within '||'
        END
     end
            
          
            
              entry do
                command '-Wloop-analysis'
                name <<-'END'
                variable%select{s| %1|s %1 and %2|s %1, %2, and %3|s %1, %2, %3, and %4}0 used in loop condition not modified in loop body
        END
     end
            
          
            
              entry do
                command '-Wloop-analysis'
                name <<-'END'
                variable %0 is %select{decremented|incremented}1 both in the loop header and in the loop body
        END
     end
            
          
            
              entry do
                command '-Wmethod-signatures'
                name <<-'END'
                conflicting parameter types in implementation of %0: %1 vs %2
        END
     end
            
          
            
              entry do
                command '-Wmethod-signatures'
                name <<-'END'
                conflicting return type in implementation of %0: %1 vs %2
        END
     end
            
          
            
              entry do
                command '-Wmicrosoft'
                name <<-'END'
                extra qualification on member %0
        END
     end
            
          
            
              entry do
                command '-Wmismatched-method-attributes'
                name <<-'END'
                attributes on method implementation and its declaration must match
        END
     end
            
          
            
              entry do
                command '-Wmismatched-parameter-types'
                name <<-'END'
                conflicting parameter types in implementation of %0%diff{: $ vs $|}1,2
        END
     end
            
          
            
              entry do
                command '-Wmismatched-return-types'
                name <<-'END'
                conflicting return type in implementation of %0%diff{: $ vs $|}1,2
        END
     end
            
          
            
              entry do
                command '-Wmissing-braces'
                name <<-'END'
                suggest braces around initialization of subobject
        END
     end
            
          
            
              entry do
                command '-Wmissing-declarations'
                name <<-'END'
                '%0' ignored on this declaration
        END
     end
            
          
            
              entry do
                command '-Wmissing-field-initializers'
                name <<-'END'
                missing field '%0' initializer
        END
     end
            
          
            
              entry do
                command '-Wmissing-method-return-type'
                name <<-'END'
                method has no return type specified defaults to 'id'
        END
     end
            
          
            
              entry do
                command '-Wmissing-noreturn'
                name <<-'END'
                %select{function|method}0 %1 could be declared with attribute 'noreturn'
        END
     end
            
          
            
              entry do
                command '-Wmissing-noreturn'
                name <<-'END'
                block could be declared with attribute 'noreturn'
        END
     end
            
          
            
              entry do
                command '-Wmissing-prototypes'
                name <<-'END'
                no previous prototype for function %0
        END
     end
            
          
            
              entry do
                command '-Wmissing-variable-declarations'
                name <<-'END'
                no previous extern declaration for non-static variable %0
        END
     end
            
          
            
              entry do
                command '-Wmultiple-move-vbase'
                name <<-'END'
                defaulted move assignment operator of %0 will move assign virtual base class %1 multiple times
        END
     end
            
          
            
              entry do
                command '-Wnested-anon-types'
                name <<-'END'
                anonymous types declared in an anonymous union/struct are an extension
        END
     end
            
          
            
              entry do
                command '-Wno-typedef-redefinition'
                name <<-'END'
                Redefinition of typedef '%0' is a C11 feature
        END
     end
            
          
            
              entry do
                command '-Wnon-literal-null-conversion'
                name <<-'END'
                expression which evaluates to zero treated as a null pointer constant of "  "type %0
        END
     end
            
          
            
              entry do
                command '-Wnon-pod-varargs'
                name <<-'END'
                second argument to 'va_arg' is of ARC ownership-qualified type %0
        END
     end
            
          
            
              entry do
                command '-Wnon-pod-varargs'
                name <<-'END'
                cannot pass %select{non-POD|non-trivial}0 object of type %1 to variadic %select{function|block|method|constructor}2 expected type from format string was %3
        END
     end
            
          
            
              entry do
                command '-Wnon-pod-varargs'
                name <<-'END'
                second argument to 'va_arg' is of non-POD type %0
        END
     end
            
          
            
              entry do
                command '-Wnon-pod-varargs'
                name <<-'END'
                cannot pass object of %select{non-POD|non-trivial}0 type %1 through variadic %select{function|block|method|constructor}2 call will abort at runtime
        END
     end
            
          
            
              entry do
                command '-Wnon-virtual-dtor'
                name <<-'END'
                %0 has virtual functions but non-virtual destructor
        END
     end
            
          
            
              entry do
                command '-Wnonnull'
                name <<-'END'
                null passed to a callee which requires a non-null argument
        END
     end
            
          
            
              entry do
                command '-Wnull-arithmetic'
                name <<-'END'
                use of NULL in arithmetic operation
        END
     end
            
          
            
              entry do
                command '-Wnull-arithmetic'
                name <<-'END'
                comparison between NULL and non-pointer %select{(%1 and NULL)|(NULL and %1)}0
        END
     end
            
          
            
              entry do
                command '-Wnull-dereference'
                name <<-'END'
                indirection of non-volatile null pointer will be deleted, not trap
        END
     end
            
          
            
              entry do
                command '-Wobjc-autosynthesis-property-ivar-name-match'
                name <<-'END'
                autosynthesized property %0 will use %select{|synthesized}1 instance variable %2, not existing instance variable %3
        END
     end
            
          
            
              entry do
                command '-Wobjc-forward-class-redefinition'
                name <<-'END'
                redefinition of forward class %0 of a typedef name of an object type is ignored
        END
     end
            
          
            
              entry do
                command '-Wobjc-interface-ivars'
                name <<-'END'
                declaration of instance variables in the interface is deprecated
        END
     end
            
          
            
              entry do
                command '-Wobjc-literal-compare'
                name <<-'END'
                direct comparison of %select{an array literal|a dictionary literal|a numeric literal|a boxed expression|}0 has undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wobjc-literal-missing-atsign'
                name <<-'END'
                string literal must be prefixed by '@'
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                instance method %objcinstance0 not found (return type defaults to 'id') did you mean %objcinstance2?
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                class method %objcclass0 not found (return type defaults to 'id') did you mean %objcclass2?
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                instance method %objcinstance0 not found (return type defaults to 'id')
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                instance method %0 is being used on 'Class' which is not in the root class
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                class method %objcclass0 not found (return type defaults to 'id')
        END
     end
            
          
            
              entry do
                command '-Wobjc-method-access'
                name <<-'END'
                instance method %0 found instead of class method %1
        END
     end
            
          
            
              entry do
                command '-Wobjc-missing-property-synthesis'
                name <<-'END'
                auto property synthesis is synthesizing property not explicitly synthesized
        END
     end
            
          
            
              entry do
                command '-Wobjc-missing-super-calls'
                name <<-'END'
                method possibly missing a [super %0] call
        END
     end
            
          
            
              entry do
                command '-Wobjc-noncopy-retain-block-property'
                name <<-'END'
                "retain'ed block property does not copy the block   - use copy attribute instead"
        END
     end
            
          
            
              entry do
                command '-Wobjc-nonunified-exceptions'
                name <<-'END'
                can not catch an exception thrown with @throw in C++ in the non-unified exception model
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-implementation'
                name <<-'END'
                property %0 requires method %1 to be defined - use @dynamic or provide a method implementation in this category
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-implementation'
                name <<-'END'
                property %0 requires method %1 to be defined - use @synthesize, @dynamic or provide a method implementation in this class implementation
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-implicit-mismatch'
                name <<-'END'
                primary property declaration is implicitly strong while redeclaration in class extension is weak
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-matches-cocoa-ownership-rule'
                name <<-'END'
                property's synthesized getter follows Cocoa naming convention for returning 'owned' objects
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-no-attribute'
                name <<-'END'
                "no 'assign', 'retain', or 'copy' attribute is specified - 'assign' is assumed"
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-no-attribute'
                name <<-'END'
                default property attribute \'assign\' not appropriate for non-GC object
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-synthesis'
                name <<-'END'
                auto property synthesis will not synthesize property '%0' because it is 'readwrite' but it will be synthesized 'readonly' via another property
        END
     end
            
          
            
              entry do
                command '-Wobjc-property-synthesis'
                name <<-'END'
                "auto property synthesis will not synthesize property '%0' because it cannot share an ivar with another synthesized property
        END
     end
            
          
            
              entry do
                command '-Wobjc-protocol-method-implementation'
                name <<-'END'
                category is implementing a method which will also be implemented by its primary class
        END
     end
            
          
            
              entry do
                command '-Wobjc-protocol-property-synthesis'
                name <<-'END'
                auto property synthesis will not synthesize property declared in a protocol
        END
     end
            
          
            
              entry do
                command '-Wobjc-redundant-literal-use'
                name <<-'END'
                using %0 with a literal is redundant
        END
     end
            
          
            
              entry do
                command '-Wobjc-root-class'
                name <<-'END'
                class %0 defined without specifying a base class
        END
     end
            
          
            
              entry do
                command '-Wobjc-string-compare'
                name <<-'END'
                direct comparison of a string literal has undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wobjc-string-concatenation'
                name <<-'END'
                concatenated NSString literal for an NSArray expression - possibly missing a comma
        END
     end
            
          
            
              entry do
                command '-Wover-aligned'
                name <<-'END'
                type %0 requires %1 bytes of alignment and the default allocator only guarantees %2 bytes
        END
     end
            
          
            
              entry do
                command '-Woverloaded-shift-op-parentheses'
                name <<-'END'
                overloaded operator %select{|}0 has lower precedence than comparison operator
        END
     end
            
          
            
              entry do
                command '-Woverloaded-virtual'
                name <<-'END'
                %q0 hides overloaded virtual %select{function|functions}1
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting distributed object modifiers on parameter type in declaration of %0
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting parameter types in declaration of %0: %1 vs %2
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting variadic declaration of method and its implementation
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting distributed object modifiers on return type in declaration of %0
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting parameter types in declaration of %0%diff{: $ vs $|}1,2
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting return type in declaration of %0%diff{: $ vs $|}1,2
        END
     end
            
          
            
              entry do
                command '-Woverriding-method-mismatch'
                name <<-'END'
                conflicting return type in declaration of %0: %1 vs %2
        END
     end
            
          
            
              entry do
                command '-Wpacked'
                name <<-'END'
                packed attribute is unnecessary for %0
        END
     end
            
          
            
              entry do
                command '-Wpadded'
                name <<-'END'
                padding %select{struct|interface|class}0 %1 with %2 %select{byte|bit}3%select{|s}4 to align anonymous bit-field
        END
     end
            
          
            
              entry do
                command '-Wpadded'
                name <<-'END'
                padding %select{struct|interface|class}0 %1 with %2 %select{byte|bit}3%select{|s}4 to align %5
        END
     end
            
          
            
              entry do
                command '-Wpadded'
                name <<-'END'
                padding size of %0 with %1 %select{byte|bit}2%select{|s}3 to alignment boundary
        END
     end
            
          
            
              entry do
                command '-Wparentheses'
                name <<-'END'
                using the result of an assignment as a condition without parentheses
        END
     end
            
          
            
              entry do
                command '-Wparentheses'
                name <<-'END'
                %0 has lower precedence than %1 %1 will be evaluated first
        END
     end
            
          
            
              entry do
                command '-Wparentheses'
                name <<-'END'
                operator '?:' has lower precedence than '%0' '%0' will be evaluated first
        END
     end
            
          
            
              entry do
                command '-Wparentheses-equality'
                name <<-'END'
                equality comparison with extraneous parentheses
        END
     end
            
          
            
              entry do
                command '-Wpointer-arith'
                name <<-'END'
                subtraction of pointers to type %0 of zero size has undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wpredefined-identifier-outside-function'
                name <<-'END'
                predefined identifier is only valid inside function
        END
     end
            
          
            
              entry do
                command '-Wprivate-extern'
                name <<-'END'
                use of __private_extern__ on a declaration may not produce external symbol private to the linkage unit and is deprecated
        END
     end
            
          
            
              entry do
                command '-Wprotocol'
                name <<-'END'
                method %0 in protocol not implemented
        END
     end
            
          
            
              entry do
                command '-Wprotocol-property-synthesis-ambiguity'
                name <<-'END'
                property of type %0 was selected for synthesis
        END
     end
            
          
            
              entry do
                command '-Wreadonly-iboutlet-property'
                name <<-'END'
                readonly IBOutlet property '%0' when auto-synthesized may not work correctly with 'nib' loader
        END
     end
            
          
            
              entry do
                command '-Wreadonly-setter-attrs'
                name <<-'END'
                property attributes '%0' and '%1' are mutually exclusive
        END
     end
            
          
            
              entry do
                command '-Wreceiver-expr'
                name <<-'END'
                receiver type %0 is not 'id' or interface pointer, consider casting it to 'id'
        END
     end
            
          
            
              entry do
                command '-Wreceiver-forward-class'
                name <<-'END'
                receiver type %0 for instance message is a forward declaration
        END
     end
            
          
            
              entry do
                command '-Wreceiver-is-weak'
                name <<-'END'
                "weak %select{receiver|property|implicit property}0 may be unpredictably set to nil
        END
     end
            
          
            
              entry do
                command '-Wreinterpret-base-class'
                name <<-'END'
                'reinterpret_cast' %select{from|to}3 class %0 %select{to|from}3 its %select{virtual base|base at non-zero offset}2 %1 behaves differently from 'static_cast'
        END
     end
            
          
            
              entry do
                command '-Wreorder'
                name <<-'END'
                %select{field|base class}0 %1 will be initialized after %select{field|base}2 %3
        END
     end
            
          
            
              entry do
                command '-Wrequires-super-attribute'
                name <<-'END'
                %0 attribute cannot be applied to %select{methods in protocols|dealloc}1
        END
     end
            
          
            
              entry do
                command '-Wreturn-stack-address'
                name <<-'END'
                returning address of local temporary object
        END
     end
            
          
            
              entry do
                command '-Wreturn-stack-address'
                name <<-'END'
                returning address of label, which is local
        END
     end
            
          
            
              entry do
                command '-Wreturn-stack-address'
                name <<-'END'
                address of stack memory associated with local variable %0 returned
        END
     end
            
          
            
              entry do
                command '-Wreturn-stack-address'
                name <<-'END'
                reference to stack memory associated with local variable %0 returned
        END
     end
            
          
            
              entry do
                command '-Wreturn-stack-address'
                name <<-'END'
                returning reference to local temporary object
        END
     end
            
          
            
              entry do
                command '-Wreturn-type'
                name <<-'END'
                control may reach end of non-void function
        END
     end
            
          
            
              entry do
                command '-Wreturn-type'
                name <<-'END'
                non-void %select{function|method}1 %0 should return a value, DefaultError
        END
     end
            
          
            
              entry do
                command '-Wreturn-type'
                name <<-'END'
                control reaches end of non-void function
        END
     end
            
          
            
              entry do
                command '-Wreturn-type-c-linkage'
                name <<-'END'
                %0 has C-linkage specified, but returns incomplete type %1 which could be incompatible with C
        END
     end
            
          
            
              entry do
                command '-Wreturn-type-c-linkage'
                name <<-'END'
                %0 has C-linkage specified, but returns user-defined type %1 which is incompatible with C
        END
     end
            
          
            
              entry do
                command '-Wsection'
                name <<-'END'
                section does not match previous declaration
        END
     end
            
          
            
              entry do
                command '-Wselector'
                name <<-'END'
                creating selector for nonexistent method %0
        END
     end
            
          
            
              entry do
                command '-Wselector-type-mismatch'
                name <<-'END'
                multiple selectors named %0 found
        END
     end
            
          
            
              entry do
                command '-Wself-assign'
                name <<-'END'
                explicitly assigning a variable of type %0 to itself
        END
     end
            
          
            
              entry do
                command '-Wself-assign-field'
                name <<-'END'
                assigning %select{field|instance variable}0 to itself
        END
     end
            
          
            
              entry do
                command '-Wsentinel'
                name <<-'END'
                "missing sentinel in %select{function call|method dispatch|block call}0
        END
     end
            
          
            
              entry do
                command '-Wsentinel'
                name <<-'END'
                not enough variable arguments in %0 declaration to fit a sentinel
        END
     end
            
          
            
              entry do
                command '-Wshadow'
                name <<-'END'
                declaration shadows a %select{"        "local variable|"        "variable in %2|"        "static data member of %2|"        "field of %2}1
        END
     end
            
          
            
              entry do
                command '-Wshadow-ivar'
                name <<-'END'
                local declaration of %0 hides instance variable
        END
     end
            
          
            
              entry do
                command '-Wshift-count-negative'
                name <<-'END'
                shift count is negative
        END
     end
            
          
            
              entry do
                command '-Wshift-count-overflow'
                name <<-'END'
                shift count = width of type
        END
     end
            
          
            
              entry do
                command '-Wshift-op-parentheses'
                name <<-'END'
                operator '%0' has lower precedence than '%1' '%1' will be evaluated first
        END
     end
            
          
            
              entry do
                command '-Wshift-overflow'
                name <<-'END'
                signed shift result (%0) requires %1 bits to represent, but %2 only has %3 bits
        END
     end
            
          
            
              entry do
                command '-Wshift-sign-overflow'
                name <<-'END'
                signed shift result (%0) sets the sign bit of the shift expression's type (%1) and becomes negative
        END
     end
            
          
            
              entry do
                command '-Wshorten-64-to-32'
                name <<-'END'
                implicit conversion loses integer precision: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wsign-compare'
                name <<-'END'
                comparison of integers of different signs: %0 and %1
        END
     end
            
          
            
              entry do
                command '-Wsign-conversion'
                name <<-'END'
                implicit conversion changes signedness: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wsign-conversion'
                name <<-'END'
                operand of ? changes signedness: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wsizeof-array-argument'
                name <<-'END'
                sizeof on array function parameter will return size of %0 instead of %1
        END
     end
            
          
            
              entry do
                command '-Wsizeof-array-decay'
                name <<-'END'
                sizeof on pointer operation will return size of %0 instead of %1
        END
     end
            
          
            
              entry do
                command '-Wsizeof-pointer-memaccess'
                name <<-'END'
                '%0' call operates on objects of type %1 while the size is based on a " "different type %2
        END
     end
            
          
            
              entry do
                command '-Wsizeof-pointer-memaccess'
                name <<-'END'
                argument to 'sizeof' in %0 call is the same pointer type %1 as the %select{destination|source}2 expected %3 or an explicit length
        END
     end
            
          
            
              entry do
                command '-Wsometimes-uninitialized'
                name <<-'END'
                variable %0 is %select{used|captured}1 uninitialized whenever %select{'%3' condition is %select{true|false}4|'%3' loop %select{is entered|exits because its condition is false}4|'%3' loop %select{condition is true|exits because its condition is false}4|switch %3 is taken|its declaration is reached|%3 is called}2
        END
     end
            
          
            
              entry do
                command '-Wstatic-local-in-inline'
                name <<-'END'
                non-constant static local variable in inline function may be different in different files
        END
     end
            
          
            
              entry do
                command '-Wstatic-self-init'
                name <<-'END'
                static variable %0 is suspiciously used within its own initialization
        END
     end
            
          
            
              entry do
                command '-Wstrict-selector-match'
                name <<-'END'
                multiple methods named %0 found
        END
     end
            
          
            
              entry do
                command '-Wstring-compare'
                name <<-'END'
                result of comparison against %select{a string literal|@encode}0 is unspecified (use strncmp instead)
        END
     end
            
          
            
              entry do
                command '-Wstring-conversion'
                name <<-'END'
                implicit conversion turns string literal into bool: %0 to %1
        END
     end
            
          
            
              entry do
                command '-Wstring-plus-char'
                name <<-'END'
                adding %0 to a string pointer does not append to the string
        END
     end
            
          
            
              entry do
                command '-Wstring-plus-int'
                name <<-'END'
                adding %0 to a string does not append to the string
        END
     end
            
          
            
              entry do
                command '-Wstrlcpy-strlcat-size'
                name <<-'END'
                size argument in %0 call appears to be size of the source expected the size of the destination
        END
     end
            
          
            
              entry do
                command '-Wstrncat-size'
                name <<-'END'
                the value of the size argument in 'strncat' is too large, might lead to a " "buffer overflow
        END
     end
            
          
            
              entry do
                command '-Wstrncat-size'
                name <<-'END'
                size argument in 'strncat' call appears " "to be size of the source
        END
     end
            
          
            
              entry do
                command '-Wstrncat-size'
                name <<-'END'
                the value of the size argument to 'strncat' is wrong
        END
     end
            
          
            
              entry do
                command '-Wsuper-class-method-mismatch'
                name <<-'END'
                method parameter type %diff{$ does not match super class method parameter type $|does not match super class method parameter type}0,1
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                overflow converting case value to switch condition type (%0 to %1)
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                case value not in enumerated type %0
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                %0 enumeration values not handled in switch: %1, %2, %3...
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                enumeration values %0 and %1 not handled in switch
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                enumeration value %0 not handled in switch
        END
     end
            
          
            
              entry do
                command '-Wswitch'
                name <<-'END'
                enumeration values %0, %1, and %2 not handled in switch
        END
     end
            
          
            
              entry do
                command '-Wswitch-enum'
                name <<-'END'
                enumeration values %0, %1, and %2 not explicitly handled in switch
        END
     end
            
          
            
              entry do
                command '-Wswitch-enum'
                name <<-'END'
                enumeration values %0 and %1 not explicitly handled in switch
        END
     end
            
          
            
              entry do
                command '-Wswitch-enum'
                name <<-'END'
                %0 enumeration values not explicitly handled in switch: %1, %2, %3...
        END
     end
            
          
            
              entry do
                command '-Wswitch-enum'
                name <<-'END'
                enumeration value %0 not explicitly handled in switch
        END
     end
            
          
            
              entry do
                command '-Wtautological-compare'
                name <<-'END'
                comparison of %0 unsigned%select{| enum}2 expression is always %1
        END
     end
            
          
            
              entry do
                command '-Wtautological-compare'
                name <<-'END'
                %select{self-|array }0comparison always evaluates to %select{false|true|a constant}1
        END
     end
            
          
            
              entry do
                command '-Wtautological-compare'
                name <<-'END'
                comparison of unsigned%select{| enum}2 expression %0 is always %1
        END
     end
            
          
            
              entry do
                command '-Wtautological-constant-out-of-range-compare'
                name <<-'END'
                comparison of constant %0 with expression of type %1 is always %select{false|true}2
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                locking '%0' that is already locked
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                cannot call function '%0' while mutex '%1' is locked
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                %select{reading|writing}2 the value pointed to by '%0' requires locking %select{'%1'|'%1' exclusively}2
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                unlocking '%0' that was not locked
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                mutex '%0' is locked exclusively and shared in the same scope
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                calling function '%0' requires %select{shared|exclusive}2 lock on '%1'
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                %select{reading|writing}2 variable '%0' requires locking %select{'%1'|'%1' exclusively}2
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                cannot resolve lock expression
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                expecting mutex '%0' to be locked at the end of function
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                mutex '%0' is not locked on every path through here
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                %select{reading|writing}1 the value pointed to by '%0' requires locking %select{any mutex|any mutex exclusively}1
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                %select{reading|writing}1 variable '%0' requires locking %select{any mutex|any mutex exclusively}1
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                mutex '%0' is still locked at the end of function
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-analysis'
                name <<-'END'
                expecting mutex '%0' to be locked at start of each loop
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                ignoring %0 attribute because its argument is invalid
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                %0 attribute only applies to %select{fields and global variables|functions and methods|classes and structs}1
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                %0 attribute requires arguments that are class type or point to class type type here is '%1'
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                %0 attribute can only be applied in a context annotated with 'lockable' attribute
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                %0 attribute requires arguments whose type is annotated with 'lockable' attribute type here is '%1'
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-attributes'
                name <<-'END'
                '%0' only applies to pointer types type here is %1
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-beta'
                name <<-'END'
                Thread safety beta warning.
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-precise'
                name <<-'END'
                %select{reading|writing}2 the value pointed to by '%0' requires locking %select{'%1'|'%1' exclusively}2
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-precise'
                name <<-'END'
                %select{reading|writing}2 variable '%0' requires locking %select{'%1'|'%1' exclusively}2
        END
     end
            
          
            
              entry do
                command '-Wthread-safety-precise'
                name <<-'END'
                calling function '%0' requires %select{shared|exclusive}2 lock on '%1'
        END
     end
            
          
            
              entry do
                command '-Wtype-safety'
                name <<-'END'
                this type tag was not designed to be used with this function
        END
     end
            
          
            
              entry do
                command '-Wtype-safety'
                name <<-'END'
                specified %0 type tag requires a null pointer
        END
     end
            
          
            
              entry do
                command '-Wtype-safety'
                name <<-'END'
                argument type %0 doesn't match specified '%1' type tag %select{that requires %3|}2
        END
     end
            
          
            
              entry do
                command '-Wundeclared-selector'
                name <<-'END'
                undeclared selector %0 did you mean %1?
        END
     end
            
          
            
              entry do
                command '-Wundeclared-selector'
                name <<-'END'
                undeclared selector %0
        END
     end
            
          
            
              entry do
                command '-Wundefined-inline'
                name <<-'END'
                inline function %q0 is not defined
        END
     end
            
          
            
              entry do
                command '-Wundefined-internal'
                name <<-'END'
                %select{function|variable}0 %q1 has internal linkage but is not defined
        END
     end
            
          
            
              entry do
                command '-Wundefined-reinterpret-cast'
                name <<-'END'
                dereference of type %1 that was reinterpret_cast from type %0 has undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wundefined-reinterpret-cast'
                name <<-'END'
                reinterpret_cast from %0 to %1 has undefined behavior
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                reference %0 is not yet bound to a value when used within its own initialization
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                field %0 is uninitialized when used here
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                block pointer variable %0 is uninitialized when captured by block
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                variable %0 is uninitialized when used within its own initialization
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                variable %0 is uninitialized when %select{used here|captured by block}1
        END
     end
            
          
            
              entry do
                command '-Wuninitialized'
                name <<-'END'
                reference %0 is not yet bound to a value when used here
        END
     end
            
          
            
              entry do
                command '-Wunneeded-internal-declaration'
                name <<-'END'
                %select{function|variable}0 %1 is not needed and will not be emitted
        END
     end
            
          
            
              entry do
                command '-Wunneeded-internal-declaration'
                name <<-'END'
                'static' function %0 declared in header file should be declared 'static inline'
        END
     end
            
          
            
              entry do
                command '-Wunneeded-member-function'
                name <<-'END'
                member function %0 is not needed and will not be emitted
        END
     end
            
          
            
              entry do
                command '-Wunreachable-code'
                name <<-'END'
                will never be executed
        END
     end
            
          
            
              entry do
                command '-Wunsequenced'
                name <<-'END'
                multiple unsequenced modifications to %0
        END
     end
            
          
            
              entry do
                command '-Wunsequenced'
                name <<-'END'
                unsequenced modification and access to %0
        END
     end
            
          
            
              entry do
                command '-Wunsupported-friend'
                name <<-'END'
                dependent nested name specifier '%0' for friend template declaration is not supported ignoring this friend declaration
        END
     end
            
          
            
              entry do
                command '-Wunsupported-friend'
                name <<-'END'
                dependent nested name specifier '%0' for friend class declaration is not supported turning off access control for %1
        END
     end
            
          
            
              entry do
                command '-Wunsupported-visibility'
                name <<-'END'
                target does not support 'protected' visibility using 'default'
        END
     end
            
          
            
              entry do
                command '-Wunused-comparison'
                name <<-'END'
                %select{equality|inequality}0 comparison result unused
        END
     end
            
          
            
              entry do
                command '-Wunused-const-variable'
                name <<-'END'
                unused variable %0
        END
     end
            
          
            
              entry do
                command '-Wunused-exception-parameter'
                name <<-'END'
                unused exception parameter %0
        END
     end
            
          
            
              entry do
                command '-Wunused-function'
                name <<-'END'
                unused function %0
        END
     end
            
          
            
              entry do
                command '-Wunused-label'
                name <<-'END'
                unused label %0
        END
     end
            
          
            
              entry do
                command '-Wunused-member-function'
                name <<-'END'
                unused member function %0
        END
     end
            
          
            
              entry do
                command '-Wunused-parameter'
                name <<-'END'
                unused parameter %0
        END
     end
            
          
            
              entry do
                command '-Wunused-private-field'
                name <<-'END'
                private field %0 is not used
        END
     end
            
          
            
              entry do
                command '-Wunused-property-ivar'
                name <<-'END'
                ivar %0 which backs the property is not referenced in this property's accessor
        END
     end
            
          
            
              entry do
                command '-Wunused-result'
                name <<-'END'
                ignoring return value of function declared with warn_unused_result attribute
        END
     end
            
          
            
              entry do
                command '-Wunused-value'
                name <<-'END'
                ignoring return value of function declared with %0 attribute
        END
     end
            
          
            
              entry do
                command '-Wunused-value'
                name <<-'END'
                expression result unused should this cast be to 'void'?
        END
     end
            
          
            
              entry do
                command '-Wunused-value'
                name <<-'END'
                expression result unused
        END
     end
            
          
            
              entry do
                command '-Wunused-variable'
                name <<-'END'
                unused variable %0
        END
     end
            
          
            
              entry do
                command '-Wunused-volatile-lvalue'
                name <<-'END'
                expression result unused assign into a variable to force a volatile load
        END
     end
            
          
            
              entry do
                command '-Wused-but-marked-unused'
                name <<-'END'
                %0 was marked unused but was used
        END
     end
            
          
            
              entry do
                command '-Wuser-defined-literals'
                name <<-'END'
                user-defined literal suffixes not starting with '_' are reserved%select{ no literal will invoke this operator|}0
        END
     end
            
          
            
              entry do
                command '-Wvarargs'
                name <<-'END'
                second parameter of 'va_start' not last named argument
        END
     end
            
          
            
              entry do
                command '-Wvarargs'
                name <<-'END'
                'va_start' has undefined behavior with reference types
        END
     end
            
          
            
              entry do
                command '-Wvarargs'
                name <<-'END'
                second argument to 'va_arg' is of promotable type %0 this va_arg has undefined behavior because arguments will be promoted to %1
        END
     end
            
          
            
              entry do
                command '-Wvector-conversion'
                name <<-'END'
                incompatible vector types %select{%diff{assigning to $ from $|assigning to different types}0,1|%diff{passing $ to parameter of type $|passing to parameter of different type}0,1|%diff{returning $ from a function with result type $|returning from function with different return type}0,1|%diff{converting $ to type $|converting between types}0,1|%diff{initializing $ with an expression of type $|initializing with expression of different type}0,1|%diff{sending $ to parameter of type $|sending to parameter of different type}0,1|%diff{casting $ to type $|casting between types}0,1}2
        END
     end
            
          
            
              entry do
                command '-Wvexing-parse'
                name <<-'END'
                parentheses were disambiguated as a function declaration
        END
     end
            
          
            
              entry do
                command '-Wvexing-parse'
                name <<-'END'
                empty parentheses interpreted as a function declaration
        END
     end
            
          
            
              entry do
                command '-Wvisibility'
                name <<-'END'
                declaration of %0 will not be visible outside of this function
        END
     end
            
          
            
              entry do
                command '-Wvisibility'
                name <<-'END'
                redefinition of %0 will not be visible outside of this function
        END
     end
            
          
            
              entry do
                command '-Wvla'
                name <<-'END'
                variable length array used
        END
     end
            
          
            
              entry do
                command '-Wvla-extension'
                name <<-'END'
                variable length arrays are a C99 feature
        END
     end
            
          
            
              entry do
                command '-Wweak-template-vtables'
                name <<-'END'
                explicit template instantiation %0 will emit a vtable in every translation unit
        END
     end
            
          
            
              entry do
                command '-Wweak-vtables'
                name <<-'END'
                %0 has no out-of-line virtual method definitions; its vtable will be emitted in every translation unit
        END
     end

  end
  
  notes <<-'END'
    * Based on [Mattt Thompson](https://twitter.com/mattt)'s compiled list located at [fuckclangwarnings](http://fuckingclangwarnings.com/). <br/>
    Source Code available at [GitHub](https://github.com/mattt/fuckingclangwarnings.com)
  END
end
