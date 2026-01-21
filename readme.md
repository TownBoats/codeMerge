# CodeMerge

[中文](#codemerge) | [English](#codemerge-1)

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=TownBoats/codeMerge&type=Date)](https://www.star-history.com/#TownBoats/codeMerge&Date)

# CodeMerge

一键合并代码结构，为 AI 提供完整上下文。

## 界面预览
🌐 [在线演示](https://codemerge.townboats.work/)

![Initial Interface](./images/initial.png)
*初始界面 - 支持文件上传和配置选项*

![Configuration Interface](./images/initial2.png)
*配置界面 - 使用指南和处理选项*

![Processing Result](./images/processed.png)
*处理结果 - 显示详细的统计信息和合并内容*

## 功能特点

- 📁 支持文件夹和单个文件上传
- 🔍 自动识别和过滤二进制文件、图片等
- 📊 提供详细的统计信息
  - 字符数统计
  - Token计算
- ⚡ 代码压缩功能
- 🚫 智能文件夹过滤系统
  - 支持从.gitignore文件自动读取忽略规则
    - 自动检测项目根目录的.gitignore文件
    - 支持单独上传.gitignore文件直接应用
  - 专门选项控制是否忽略.git文件夹
  - 自定义黑名单文件夹设置
- 📥 多种输出格式支持（感谢[repomix](https://github.com/yamadashy/repomix)）
  - 默认格式：原始格式，包含文件统计信息
  - XML格式：结构化XML格式，包含目录树
  - 纯文本格式：简洁的文本格式，使用分隔符
  - Markdown格式：支持语法高亮的Markdown格式
- 🌲 自动生成文件夹树状结构视图
  - 直观展示项目文件组织
  - 支持复制树状结构
  - 自动过滤黑名单中的文件和文件夹
- 🔄 灵活处理模式
  - 完整处理模式：提取文件树和合并文件内容
  - 仅文件树模式：只生成项目结构，不处理文件内容

🌐 [在线演示](https://codemerge.townboats.work/)

## 支持的文件类型

### 代码文件
- JavaScript (.js)
- Python (.py)
- Java (.java)
- C++ (.cpp, .h)
- C# (.cs)
- PHP (.php)
- Ruby (.rb)
- Swift (.swift)
- Go (.go)
- Rust (.rs)
- TypeScript (.ts)
- JSX/TSX (.jsx, .tsx)

### 配置和文本文件
- JSON (.json)
- YAML (.yaml, .yml)
- XML (.xml)
- TOML (.toml)
- INI (.ini)
- 配置文件 (.conf)
- 文本文件 (.txt)
- 日志文件 (.log)
- Markdown (.md)
- CSV (.csv)

## 使用方法

1. **文件选择**
   - 点击"文件夹上传"选择整个项目文件夹
   - 或点击"文件上传"选择单个或多个文件

2. **.gitignore处理**
   - 选择文件夹后，系统会自动检测根目录中的.gitignore文件
   - 或者可以单独上传.gitignore文件并点击"应用"
   - .gitignore规则会自动添加到黑名单设置中

3. **处理选项设置**
   - 选择处理模式：完整处理或仅生成文件树
   - 选择输出格式：默认格式、XML格式、纯文本格式或Markdown格式
   - 选择是否使用.gitignore文件中的规则
   - 选择是否忽略.git文件夹
   - 自定义黑名单文件夹

4. **代码处理选项**
   - 选择是否压缩代码（删除多余空白）

5. **开始处理**
   - 点击"开始处理"按钮
   - 等待处理完成
   - 根据选择的模式查看文件树或合并内容

## 统计信息

工具会提供以下统计数据：
- 处理的文件总数
- 跳过的文件数
- 总字符数
- 预估Token数

## 本地部署

由于项目使用了ES6模块，无法直接通过文件系统打开，需要通过HTTP服务器运行。

### 方案一：Python HTTP服务器（推荐）

1. 下载项目文件到本地
2. 在项目根目录打开终端/命令行
3. 运行以下命令之一：
   ```bash
   # Python 3
   python -m http.server 8000
   
   # 或者 Python 2
   python -m SimpleHTTPServer 8000
   ```
4. 在浏览器中访问 `http://localhost:8000`

### 方案二：VSCode Live Server扩展

1. 在VSCode中安装 "Live Server" 扩展
2. 下载项目文件并在VSCode中打开项目文件夹
3. 右键点击 `index.html` 文件
4. 选择 "Open with Live Server"
5. 浏览器会自动打开并访问项目

### 方案三：Windows 批处理脚本

1. 下载项目文件到本地
2. 在项目根目录双击 `start_server_and_open.bat` 脚本
3. 脚本会自动启动 Python HTTP 服务器并尝试在默认浏览器中打开 `http://localhost:8000`

### 注意事项
- 无需安装其他依赖，所有必要的库都通过CDN加载
- 确保选择的端口没有被其他应用占用
- 按 `Ctrl+C` 可停止Python服务器

## 注意事项

- 所有处理都在浏览器本地进行，不会上传文件到服务器
- 大文件夹处理可能需要一定时间，请耐心等待
- 建议使用现代浏览器（Chrome、Firefox、Edge等）以获得最佳体验
- 某些文件可能因编码问题无法正确读取

## 技术栈

- HTML5
- Tailwind CSS
- JavaScript
- js-beautify

## 贡献

欢迎提交Issue和Pull Request来改进这个工具。

## 许可证

MIT License

---

# CodeMerge

One-click code merge, full context for AI.

## Interface Preview
🌐 [Online Demo](https://codemerge.townboats.work/)

![Initial Interface](./images/initial-en.png)
*Initial Interface - Supporting file upload and configuration options*

![Configuration Interface](./images/initial2-en.png)
*Configuration Interface - Usage guide and processing options*

![Processing Result](./images/processed-en.png)
*Processing Result - Showing detailed statistics and merged content*

## Features

- 📁 Support for folder and single file uploads
- 🔍 Automatic binary file detection and filtering
- 📊 Detailed statistics
  - Character count
  - Token calculation
- ⚡ Code compression functionality
- 🚫 Smart folder filtering system
  - Support for automatically reading rules from .gitignore files
    - Auto-detection of .gitignore in project root directory
    - Support for uploading standalone .gitignore files
  - Dedicated option to control ignoring .git folder
  - Custom blacklist folder settings
- 📥 Multiple output format support (thanks to [repomix](https://github.com/yamadashy/repomix))
  - Default format: Original format with file statistics
  - XML format: Structured XML format with directory tree
  - Plain text format: Clean text format with separators
  - Markdown format: Markdown format with syntax highlighting
- 🌲 Folder tree structure visualization
  - Intuitive project file organization display
  - Copy tree structure functionality
  - Automatic filtering of blacklisted files and folders
- 🔄 Flexible processing modes
  - Full processing: Extract file tree and merge file contents
  - Tree-only mode: Only generate project structure without processing file contents

🌐 [Online Demo](https://codemerge.townboats.work/)

## Supported File Types

### Code Files
- JavaScript (.js)
- Python (.py)
- Java (.java)
- C++ (.cpp, .h)
- C# (.cs)
- PHP (.php)
- Ruby (.rb)
- Swift (.swift)
- Go (.go)
- Rust (.rs)
- TypeScript (.ts)
- JSX/TSX (.jsx, .tsx)

### Configuration and Text Files
- JSON (.json)
- YAML (.yaml, .yml)
- XML (.xml)
- TOML (.toml)
- INI (.ini)
- Configuration files (.conf)
- Text files (.txt)
- Log files (.log)
- Markdown (.md)
- CSV (.csv)

## How to Use

1. **File Selection**
   - Click "Upload Folder" to select an entire project folder
   - Or click "Upload File" to select single or multiple files

2. **.gitignore Processing**
   - After selecting a folder, the system will automatically detect .gitignore in the root directory
   - Or you can upload a .gitignore file separately and click "Apply"
   - .gitignore rules will be automatically added to blacklist settings

3. **Processing Options Setup**
   - Choose processing mode: Full processing or Tree-only
   - Choose output format: Default, XML, Plain text, or Markdown format
   - Choose whether to use rules from .gitignore file
   - Choose whether to ignore .git folder
   - Customize blacklist folders

4. **Code Processing Options**
   - Choose whether to compress code (remove excess whitespace)

5. **Start Processing**
   - Click "Start Processing" button
   - Wait for processing to complete
   - View file tree or merged content based on selected mode

## Statistics

The tool provides the following statistics:
- Total files processed
- Number of files skipped
- Total character count
- Estimated token count

## Local Deployment

Since the project uses ES6 modules, it cannot be opened directly through the file system and requires an HTTP server.

### Option 1: Python HTTP Server (Recommended)

1. Download project files to local directory
2. Open terminal/command prompt in the project root directory
3. Run one of the following commands:
   ```bash
   # Python 3
   python -m http.server 8000
   
   # Or Python 2
   python -m SimpleHTTPServer 8000
   ```
4. Access `http://localhost:8000` in your browser

### Option 2: VSCode Live Server Extension

1. Install "Live Server" extension in VSCode
2. Download project files and open the project folder in VSCode
3. Right-click on `index.html` file
4. Select "Open with Live Server"
5. Browser will automatically open and access the project

### Option 3: Windows Batch Script

1.  Download the project files to your local machine.
2.  In the project root directory, double-click the `start_server_and_open.bat` script.
3.  The script will automatically start the Python HTTP server and attempt to open `http://localhost:8000` in your default browser.

### Notes
- No additional dependencies needed, all required libraries are loaded via CDN
- Ensure the selected port is not occupied by other applications
- Press `Ctrl+C` to stop the Python server

## Notes

- All processing is done locally in the browser, no files are uploaded to servers
- Large folders may take some time to process, please be patient
- Recommended to use modern browsers (Chrome, Firefox, Edge, etc.) for best experience
- Some files may not be read correctly due to encoding issues

## Tech Stack

- HTML5
- Tailwind CSS
- JavaScript
- js-beautify

## Contributing

Issues and Pull Requests are welcome to improve this tool.

## License

MIT License
