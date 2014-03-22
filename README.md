# block comment

This vim plugin helps you comment out/off some block code.
It cares **indents**.

## Install

With NeoBundle:

    NeoBundle 'shoichikaji/vim-block-comment'

Or manually, just copy `plugin/block-comment.vim` and `tools/block-comment.pl`
to your `~/.vim` directory.

## Key map

`#` commentout maps to `,#`.

`"` commentout maps to `,"`.

`//` commentout maps to `,/`.

`;` commentout maps to `,;`.

And comment off maps to `,c`.

## Example

Let's say you have the following code:

```perl
while (my $line = <>) {
   chomp $line;
   if ($line =~ /amazing/) {
       do_amazing($line);
       more_amazing($line);
   }
}
```

Select 4,5 lines with `V`, and type `,#`.
Then code will be:

```perl
while (my $line = <>) {
   chomp $line;
   if ($line =~ /amazing/) {
       # do_amazing($line);
       # more_amezing($line);
   }
}
```
It cares **indents**!
You can comment off (i.e. remove `#`'s) by `,c`.

## Requirements

* vim
* perl 5.8+

## Author

Shoichi Kaji

