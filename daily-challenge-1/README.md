# Daily Challenge 4 - Grep Practice

**Author:** Quantums-meruit
**Course:** IYF Weekend Academy - Season 12  
**Week:** 03 - Tools & Workflow  
**Challenge:** Day 4 - Grep Practice

## Project Description

This challenge focuses on searching file contents using command-line tools. I practised using PowerShell's `Select-String`, which provides functionality similar to the Unix `grep` command.

## Objective

- Search files for specific words and patterns.
- Search through multiple files and subdirectories.
- Understand how command-line text searching works.

## Technologies Used

- PowerShell
- Visual Studio Code
- Windows Terminal

## Commands Practised

### 1. Search for HTML

```powershell
Get-ChildItem .\daily-challenge-1 -Recurse -File |
Select-String -Pattern "html"
```

### 2. Search for CSS

```powershell
Get-ChildItem .\daily-challenge-1 -Recurse -File |
Select-String -Pattern "css"
```

### 3. Search README files for a word

```powershell
Get-ChildItem . -Filter README.md -Recurse -File |
Select-String -Pattern "project"
```

## What I Learned

- How to search file contents from the terminal.
- How to use `Select-String` with search patterns.
- How to combine commands using the PowerShell pipeline.
- The relationship between PowerShell's `Select-String` and Unix `grep`.

## Challenges Faced

Learning the difference between searching for files and searching inside files, and understanding how to combine PowerShell commands.

## Conclusion

This exercise improved my understanding of command-line text searching and helped me become more comfortable working with files through the terminal.
