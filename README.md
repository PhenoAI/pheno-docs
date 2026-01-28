# pheno-docs

This repository contains the documentation of the Human Phenotype Project (HPP) for researchers.

## Sites in this Repository

This repository contains **two separate websites**:

1. **Pheno Knowledge Base** (`pheno_knowledge_base/`)
   - Published at: [Pheno Knowledgebase](https://knowledgebase.pheno.ai)
   - Output directory: `docs/`
   - The main knowledge base for the HPP

2. **Pheno Knowledge Base Expanded** (`pheno_knowledge_base_expanded/`)
   - Output directory: `docs-expanded/`
   - An expanded version with additional content (separate from the main site)
   - **Includes AI chatbot widget** on all pages

## AI Chatbot

The expanded knowledge base includes an interactive chatbot that answers questions based on the website content.

**Key features:**
- Appears on every page (purple button in bottom-right corner)
- Answers ONLY from website documentation
- No backend server required (works on GitHub Pages)
- Uses OpenRouter API (API key stored securely in `.env`)
- See `pheno_knowledge_base_expanded/CHATBOT_DEPLOY.md` for details

### 🔒 Security: API Key Setup

The chatbot requires an OpenRouter API key. **The key is NOT stored in git** for security.

**First-time setup:**
1. Copy `env.example` to `.env`
2. Add your OpenRouter API key to `.env`
3. The `.env` file is gitignored and will never be committed

```bash
# Copy the example file
cp env.example .env

# Edit .env and add your real API key
nano .env
```

## Contributing

- Updates should be made via a PR.
- Please separate commits for changes to the source files from the rendering of the docs.

# How to build the docs

## Prerequisites

1. Ensure [quarto](https://quarto.org/docs/get-started/) is installed.
2. Install the JupyterLab extension for Quarto. This is required to render the Jupyter Notebooks properly.

```bash
python3 -m pip install jupyterlab-quarto
```

## Building the Main Knowledge Base

1. Go to the `pheno_knowledge_base` folder.
2. Run `quarto render` to build the docs (outputs to `docs/`).
3. Run `quarto preview` to preview the docs before publishing.

## Building the Expanded Knowledge Base (with Chatbot)

**Option 1: Full deployment (recommended)**
```bash
# Automatically updates chatbot content and builds site
./deploy.sh
```

**Option 2: Manual build**
1. Update chatbot content: `./create-knowledge-base.sh`
2. Go to the `pheno_knowledge_base_expanded` folder
3. Run `quarto render` to build the docs (outputs to `docs-expanded/`)
4. Run `quarto preview` to preview the docs before publishing

⚠️ **Note:** Option 2 requires manually injecting the API key from `.env` into the chatbot widget.


# How to update the publications list

1. Run the `src/create_publications.ipynb` notebook.
2. Build the docs (see above).

# How to update the datasets introduction

1. Update the corresponding markdown file in the `markdowns-expanded` folder.
2. Run the `python ../pheno-examples/src/tools/add_intro.py pheno_knowledge_base/datasets` command to update the introduction to the datasets.
3. Build the docs (see above).

# How to update the chatbot content

When you update website content and want the chatbot to reflect those changes:

1. Run `./create-knowledge-base.sh` from the repository root
2. Rebuild the expanded knowledge base: `cd pheno_knowledge_base_expanded && quarto render`
3. Deploy as usual

The chatbot will now have the latest website content.
