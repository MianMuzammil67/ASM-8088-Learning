# File Naming Rules for This Repository

To ensure consistency and avoid issues with file handling, please follow these simple rules for naming files and paths in this repository:

### 1. **Keep It Short**
- DOS has a limit of 8 characters for the file name and 3 characters for the file extension (called 8.3 filename format).
- In general, try to keep your file names under 8 characters.
  - **Good Example**: `myprog.asm`
  - **Bad Example**: `longfilenameforprogram.asm`

### 2. **Avoid Spaces in File Names**
- DOS and older systems may have trouble with spaces in filenames.
- Use underscores (`_`) or dashes (`-`) instead.
  - **Good Example**: `input_buffer.asm`
  - **Bad Example**: `input buffer.asm`

### 3. **Use Only Letters, Numbers, Underscores, or Dashes**
- Stick to alphanumeric characters (`A-Z`, `0-9`), and use underscores (`_`) or dashes (`-`) for separation.
- Avoid special characters like `@`, `#`, `!`, etc., because they can confuse the system.
  - **Good Example**: `my_program.asm`
  - **Bad Example**: `my@program.asm`

### 4. **Keep It Consistent**
- Always use the same case (all lowercase or all uppercase) to avoid confusion later.
  - **Good Example**: `buffer_input.asm`
  - **Bad Example**: `Buffer_Input.asm` (might cause confusion on case-sensitive systems)

### 5. **Don't Make It Too Long**
- If you're using GitHub or working in a Windows environment, file names longer than 255 characters can cause problems.
- Keep your paths short and simple. If the path is too long, you may get errors when trying to access the file.
  - **Good Example**: `C:\ASM\buffer_input.asm`
  - **Bad Example**: `C:\Users\YourName\Documents\Projects\SomeSuperLongProjectFolderName\buffer_input.asm`

### 6. **Use `.asm` for Assembly Files**
- Always save your assembly source files with the `.asm` extension.
  - **Good Example**: `hello.asm`
  - **Bad Example**: `hello.txt` (will confuse the system)

### 7. **File Extensions Are Important**
- Use the correct file extension for the type of file you're saving:
  - `.asm` for assembly source code.
  - `.com` for compiled programs (if you're creating `.COM` executables).
  - `.exe` for Windows executables.
- **Don't** change the extension unless necessary.
