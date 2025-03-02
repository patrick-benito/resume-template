# pats-resume-template
A LaTeX template for your CV and Resume

## Example

An example of the CV is provided in the [example.tex](example.tex) file. You can view a PDF example of the generated CV [here](example.pdf).

Here is an example image of the CV template in use:

<img src="example.png" alt="CV Template Example" width="50%">

## Usage

If you are using Overleaf, you can simply use the `\documentclass{pats-resume-template}` command. Otherwise, make sure to copy the `pats-resume-template.cls` file to your project directory.

```
/my-resume
├── pats-resume-template.cls
└── myresume.tex 
```

Then use the `pats-resume-template` class in your LaTeX document:

```latex
\documentclass{pats-resume-template}

\begin{document}
... Your CV content here ...
\end{document}
```

## Features

- You can set your name, address, phone number, and email in the preamble.
- You can add sections and entries to your CV.
- You can choose the file format of your CV (A4 or Letter).
- You can provide a `\tech` or `\consulting` command to show the relevant experience depending on the job you are applying for, by setting the `\def\techFlag{}` or `\def\consultingFlag{}` in the preamble.
- Similarly, you can provide a `\def\gpFlag{}` to show the GPA in the CV provided the `\gpa` command.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```