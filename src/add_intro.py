import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '../..'))
import json
import nbformat


def add_intro(markdowns_path: str=None,
              sub_folders=True):
    ## get current directory location
    current_dir = os.path.dirname(os.path.realpath(__file__))
    config_file_path = os.path.join(current_dir, "../../pheno-examples", "config/config.json")
    f = open(config_file_path, 'r')
    config = json.load(f)
    datasets = config['datasets']
    if markdowns_path is None:
        markdowns_path = config["markdowns_path"]
    
    for key, value in datasets.items():

        if key in ['vascular_health', 'curated_phenotypes']:
            continue
    
        input_notebook_path = os.path.join(current_dir, f"../pheno_knowledge_base/datasets/{value['id']}-{key}.ipynb")
        output_notebook_path = os.path.join(current_dir, f"../pheno_knowledge_base/datasets/{value['id']}-{key}.ipynb")
        if sub_folders:
            markdown_file_path = os.path.join(markdowns_path, f"{value['id']}-{key}", f"{value['id']}-{key}.md")
        else:
            markdown_file_path = os.path.join(markdowns_path, f"{value['id']}-{key}.md")

        notebook = read_notebook(input_notebook_path)
        add_intro_cell(notebook, markdown_file_path, cell_position=1, replace=True)
        write_notebook(notebook, output_notebook_path)


def read_notebook(notebook_file):
    notebook = nbformat.read(notebook_file, as_version=4)
    return notebook


def write_notebook(notebook, notebook_file):
    nbformat.write(notebook, notebook_file)


def add_intro_cell(notebook, markdown_file, cell_position=0, replace = False):
    cells = notebook['cells']

    markdown_content = open(markdown_file, 'r').read()
    if replace == False:
        new_cell = nbformat.v4.new_markdown_cell()
        new_cell['source'] = markdown_content

        cells.insert(cell_position, new_cell)
    else: 
        cells[cell_position]['source'] = markdown_content

    return notebook


if __name__ == '__main__':
    path = '/home/ec2-user/projects/pheno-docs/markdowns-expanded'
    add_intro(path)
