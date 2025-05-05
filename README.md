# vscode-ts-vue-defaults

Default (opiniated) config for VSCode, for Typescript and Vue/Nuxt projects.

It adds eslint and prettier config, that works both inside of VSCode, or
just for linting/fomatting code from command line only.

**WARNING:** Current config will be overwritten completely.


## The following NPM scripts will be added

1. **`lint`**  
   Runs ESLint on all `.js`, `.ts`, and `.vue` files in the project directory to check for linting errors.

2. **`lintfix`**  
   Runs ESLint on all `.js`, `.ts`, and `.vue` files and automatically fixes fixable linting issues.

3. **`pretty`**  
   Uses Prettier to format all relevant files, including JavaScript, TypeScript, Vue, JSON, CSS, SCSS, and Markdown files, ensuring consistent code style.

4. **`format`**  
   Combines the `lintfix` and `pretty` scripts to both fix linting issues and format the code in a single step.

5. **`cleanbuild`**  
   A comprehensive script for preparing a clean build of the project:
   - Deletes the `./dist/` directory to remove any previous build artifacts.
   - Fixes linting issues (`lintfix`).
   - Formats the code (`format`).
   - Builds the project (`npm run build`).

   This script ensures a clean, properly formatted, and lint-free build of the project.

---

### Usage

You can run any of these scripts using the `npm run <script-name>` command. For example:

```bash
# Check for linting errors
npm run lint

# Automatically fix linting issues
npm run lintfix

# Format the codebase
npm run pretty

# Fix linting issues and format the code
npm run format

# Clean the build directory, fix issues, format code, and build the project
npm run cleanbuild
```

## Install

Unix/Linux/FreeBSD/MacOS:

```bash
curl -L https://github.com/technomoron/vscode-eslint-defaults/releases/download/v1.0.10/installer.tgz | tar -vxz && node configure-eslint.cjs && rm installer-tgz configure-eslint.cjs
```

Windows with Power Shell

```bash
Invoke-WebRequest -Uri https://github.com/technomoron/vscode-eslint-defaults/releases/download/v1.0.10/installer.tgz -OutFile installer.tgz; tar -xvzf installer.tgz; node configure-eslint.cjs; Remove-Item -Force installer.tgz, configure-eslint.cjs

```

The configure script will remove old eslint packages and add new ones,
update eslint to v9.x and add some script targets to package.json


## Recommended/Required VS Code Extensions

Below is a list of recommended extensions for this project:

1. **ESLint** - [dbaeumer.vscode-eslint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)  
   Publisher: Dirk Baeumer  
   Description: Integrates ESLint into VS Code for identifying and fixing linting issues.

2. **Prettier - Code Formatter** - [esbenp.prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)  
   Publisher: Esben Petersen  
   Description: A code formatter that supports many languages and integrates seamlessly into VS Code.

3. **EditorConfig for VS Code** - [editorconfig.editorconfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)  
   Publisher: EditorConfig  
   Description: Maintains consistent coding styles between editors by using `.editorconfig` files.

4. **Volar** - [Vue.volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar)  
   Publisher: Vue.js Language Tools  
   Description: Provides Vue 3 support, including TypeScript integration, template IntelliSense, and more.

5. **TODO Highlight** - [wayou.vscode-todo-highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)  
   Publisher: Wayou  
   Description: Highlights TODOs, FIXMEs, and other annotations in your code for quick visibility.
