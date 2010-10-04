package Sword::Module;
BEGIN {
  $Sword::Module::VERSION = '0.102770';
}
use strict;
use warnings;

require XSLoader;
XSLoader::load('Sword', $Sword::Module::VERSION);

# ABSTRACT: Sword modules (Bibles, commentaries, dictionaries, etc.)

1;



=pod

=head1 NAME

Sword::Module - Sword modules (Bibles, commentaries, dictionaries, etc.)

=head1 VERSION

version 0.102770

=head1 SYNOPSIS

  use Sword;

  my $library = Sword::Manager->new;

  my $module = $library->get_module('KJV');
  $module->set_key('jn3.16');
  print "John 3:16 says (KJV): ", $module->render_text, "\n";

=head1 DESCRIPTION

This Perl module provides access to the C<SWModule> class from the Sword Engine API.

This documetnation should cover everything that you can do with it. If something is wrong or missing, please report a bug.

=head1 METHODS

=head2 name

  my $name = $module->name;
  $module->name($new_name);

This is the getter/setter for the short name of the module.

=head2 description

  my $description = $module->description;
  $module->description($new_description);

This is the getter/setter for the long description of the module.

=head2 type

  my $type = $module->type;
  $module->type($new_type);

This is the getter/setter for the type of the module. This is the name of the category this module belongs to, like "Biblical Texts" or "Lexicons / Dictionaries".

=head2 set_key

  $module->set_key($key);

This selects a key pointing into the text. The kind of key value used depends on the module. For example, in a Bible or commentary, this may be a scripture reference or an abbreviation of one like "John 3:16" or "Ps 23" or "rm8.28". In a dictionary, this may be a word or word number.

=head2 render_text

  my $str = $module->render_text;

Returns the the text for the key that has been selected.

=head1 SEE ALSO

L<Sword::Manager>

=head1 AUTHOR

Andrew Sterling Hanenkamp <hanenkamp@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Qubling Software LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
