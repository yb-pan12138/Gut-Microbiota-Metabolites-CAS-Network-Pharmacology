#!/usr/bin/perl
use strict;
use warnings;
use utf8;
binmode(STDOUT, ":utf8");

my $input_file = 'KEGG.txt';
my $gene_list_file = 'net.geneList.txt';
my $kegg_list_file = 'net.keggList.txt';
my $network_file = 'net.network.txt';
my $node_file = 'net.node.txt';

my %unique_genes;
my @kegg_list;
my @network_lines;

open(my $fh, '<:encoding(UTF-8)', $input_file) or die "Could not open file '$input_file': $!";
my $header = <$fh>;
my $line_counter = 0;
while (my $row = <$fh>) {
 chomp $row;
 last if $line_counter >= 20;
 $line_counter++;
 my @fields = split(/\t/, $row);
 my $description = $fields[3];
 my $gene_ids_str = $fields[12];
 next unless (defined $description && $description ne '' && defined $gene_ids_str && $gene_ids_str ne '');
 push @kegg_list, $description;
 my @genes = split(/\//, $gene_ids_str);
 foreach my $gene (@genes) {
  $unique_genes{$gene}=1;
  push @network_lines, "$description\t$gene\tKEGGgene";
 }
}
close $fh;

open(my $kegg_fh, '>:encoding(UTF-8)', $kegg_list_file) or die $!;
foreach my $x (@kegg_list){ print $kegg_fh "$x\n"; }
close $kegg_fh;

open(my $gene_fh, '>:encoding(UTF-8)', $gene_list_file) or die $!;
foreach my $g (sort keys %unique_genes){ print $gene_fh "$g\n"; }
close $gene_fh;

open(my $net_fh, '>:encoding(UTF-8)', $network_file) or die $!;
print $net_fh "Node1\tNode2\tInteraction\n";
foreach my $x (@network_lines){ print $net_fh "$x\n"; }
close $net_fh;

open(my $node_fh, '>:encoding(UTF-8)', $node_file) or die $!;
print $node_fh "Node\tType\n";
foreach my $x (@kegg_list){ print $node_fh "$x\tkegg\n"; }
foreach my $g (sort keys %unique_genes){ print $node_fh "$g\tgene\n"; }
close $node_fh;
