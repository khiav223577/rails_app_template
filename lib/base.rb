def root_path
  File.dirname(__dir__)
end

def gem_path
  File.join(root_path, "gem")
end

def recipe_path
  File.join(root_path, "recipe")
end

def eval_file_content(file_path)
  eval File.read(file_path)
end

def init_gem(name)
  eval_file_content File.join(gem_path, "#{name}.rb")
end

def recipe(name)
  eval_file_content File.join(recipe_path, "#{name}.rb")
end

def update_yaml(file_path, data)
  yaml = Psych.load_file(file_path) || {}
  yaml.update(data)
  ast = Psych.parse_stream yaml.to_yaml
  ast.grep(Psych::Nodes::Scalar).each do |node|
    node.plain = true
    node.quoted = false
    node.style  = Psych::Nodes::Scalar::ANY
  end
  File.open(file_path, "w") { |f| f.write(ast.yaml) }
end
