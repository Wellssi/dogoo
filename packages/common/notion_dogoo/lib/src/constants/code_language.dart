enum CodeLanguage {
  abap(key: 'abap'),
  arduino(key: 'arduino'),
  bash(key: 'bash'),
  basic(key: 'basic'),
  c(key: 'c'),
  clojure(key: 'clojure'),
  coffeescript(key: 'coffeescript'),
  cpp(key: 'c++'),
  csharp(key: 'c#'),
  css(key: 'css'),
  dart(key: 'dart'),
  diff(key: 'diff'),
  docker(key: 'docker'),
  elixir(key: 'elixir'),
  elm(key: 'elm'),
  erlang(key: 'erlang'),
  flow(key: 'flow'),
  fortran(key: 'fortran'),
  fsharp(key: 'f#'),
  gherkin(key: 'gherkin'),
  glsl(key: 'glsl'),
  go(key: 'go'),
  graphql(key: 'graphql'),
  groovy(key: 'groovy'),
  haskell(key: 'haskell'),
  html(key: 'html'),
  java(key: 'java'),
  javascript(key: 'javascript'),
  json(key: 'json'),
  julia(key: 'julia'),
  kotlin(key: 'kotlin'),
  latex(key: 'latex'),
  less(key: 'less'),
  lisp(key: 'lisp'),
  livescript(key: 'livescript'),
  lua(key: 'lua'),
  makefile(key: 'makefile'),
  markdown(key: 'markdown'),
  markup(key: 'markup'),
  matlab(key: 'matlab'),
  mermaid(key: 'mermaid'),
  nix(key: 'nix'),
  objectivec(key: 'objective-c'),
  ocaml(key: 'ocaml'),
  pascal(key: 'pascal'),
  perl(key: 'perl'),
  php(key: 'php'),
  plaintext(key: 'plain text'),
  powershell(key: 'powershell'),
  prolog(key: 'prolog'),
  protobuf(key: 'protobuf'),
  python(key: 'python'),
  r(key: 'r'),
  reason(key: 'reason'),
  ruby(key: 'ruby'),
  rust(key: 'rust'),
  sass(key: 'sass'),
  scala(key: 'scala'),
  scheme(key: 'scheme'),
  scss(key: 'scss'),
  shell(key: 'shell'),
  sql(key: 'sql'),
  swift(key: 'swift'),
  typescript(key: 'typescript'),
  vbnet(key: 'vb.net'),
  verilog(key: 'verilog'),
  vhdl(key: 'vhdl'),
  visualbasic(key: 'visual basic'),
  webassembly(key: 'webassembly'),
  xml(key: 'xml'),
  yaml(key: 'yaml'),
  javaCCppCsharp(key: 'java/c/c++/c#'),
  ;

  const CodeLanguage({
    required this.key,
  });

  final String key;

  CodeLanguage fromString(String key) {
    if (key == 'abap') return abap;
    if (key == 'arduino') return arduino;
    if (key == 'bash') return bash;
    if (key == 'basic') return basic;
    if (key == 'c') return c;
    if (key == 'clojure') return clojure;
    if (key == 'coffeescript') return coffeescript;
    if (key == 'c++') return cpp;
    if (key == 'c#') return csharp;
    if (key == 'css') return css;
    if (key == 'dart') return dart;
    if (key == 'diff') return diff;
    if (key == 'docker') return docker;
    if (key == 'elixir') return elixir;
    if (key == 'elm') return elm;
    if (key == 'erlang') return erlang;
    if (key == 'flow') return flow;
    if (key == 'fortran') return fortran;
    if (key == 'f#') return fsharp;
    if (key == 'gherkin') return gherkin;
    if (key == 'glsl') return glsl;
    if (key == 'go') return go;
    if (key == 'graphql') return graphql;
    if (key == 'groovy') return groovy;
    if (key == 'haskell') return haskell;
    if (key == 'html') return html;
    if (key == 'java') return java;
    if (key == 'javascript') return javascript;
    if (key == 'json') return json;
    if (key == 'julia') return julia;
    if (key == 'kotlin') return kotlin;
    if (key == 'latex') return latex;
    if (key == 'less') return less;
    if (key == 'lisp') return lisp;
    if (key == 'livescript') return livescript;
    if (key == 'lua') return lua;
    if (key == 'makefile') return makefile;
    if (key == 'markdown') return markdown;
    if (key == 'markup') return markup;
    if (key == 'matlab') return matlab;
    if (key == 'mermaid') return mermaid;
    if (key == 'nix') return nix;
    if (key == 'objectivec') return objectivec;
    if (key == 'ocaml') return ocaml;
    if (key == 'pascal') return pascal;
    if (key == 'perl') return perl;
    if (key == 'php') return php;
    if (key == 'plain text') return plaintext;
    if (key == 'powershell') return powershell;
    if (key == 'prolog') return prolog;
    if (key == 'protobuf') return protobuf;
    if (key == 'python') return python;
    if (key == 'r') return r;
    if (key == 'reason') return reason;
    if (key == 'ruby') return ruby;
    if (key == 'rust') return rust;
    if (key == 'sass') return sass;
    if (key == 'scala') return scala;
    if (key == 'scheme') return scheme;
    if (key == 'scss') return scss;
    if (key == 'shell') return shell;
    if (key == 'sql') return sql;
    if (key == 'swift') return swift;
    if (key == 'typescript') return typescript;
    if (key == 'vb.net') return vbnet;
    if (key == 'verilog') return verilog;
    if (key == 'vhdl') return vhdl;
    if (key == 'visual basic') return visualbasic;
    if (key == 'webassembly') return webassembly;
    if (key == 'xml') return xml;
    if (key == 'yaml') return yaml;
    if (key == 'java/c/c++/c#') return javaCCppCsharp;

    throw Exception('Invalid key: $key');
  }
}
