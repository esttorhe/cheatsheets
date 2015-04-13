cheatsheet do
  title 'Clang Warnings'
  docset_file_name 'Clang Warnings'
  keyword 'clang'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Semantic Warnings'
    entry do
        name 'String Literal'
        command '-WCFString-literal'
        notes <<-'END'
        Input conversion stopped due to an input byte that does not belong to the input codeset `UTF-8`
        END
    end

    entry do
        name 'Object can be used as typedef only attribute'
        command '-WNSObject-attribute'
        notes <<-'END'
        `__attribute ((NSObject))` may be put on a typedef only, attribute is ignored
        END
    end

    entry do
        name 'Suppress initializer will never be used on virtual base class'
        command '-Wabstract-vbase-init'
        notes <<-'END'
        Initializer for virtual base class `%0` of abstract class %1 will never be used
        END
    end

    entry do
        name 'Pointer initialized by temp array will be destroyed'
        command '-Waddress-of-array-temporary'
        notes <<-'END'
        Pointer is initialized by a temporary array, which will be destroyed at the end of the full-expression
        END
    end
  end
  
  notes <<-'END'
    * Based on [Mattt Thompson](https://twitter.com/mattt)'s compiled list located at [fuckclangwarnings](http://fuckingclangwarnings.com/). <br/>
    Source Code available at [GitHub](https://github.com/mattt/fuckingclangwarnings.com)
  END
end
