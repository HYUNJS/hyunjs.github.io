spec.files = `git ls-files -z`.split("\x0").select { |f| 
f.match(%r!^(_data|assets|_layouts|_includes|_sass|LICENSE|README)!i) }
