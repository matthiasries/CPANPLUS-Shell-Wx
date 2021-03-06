# Module name:         CPANPLUS::Shell::Wx::PODReader
# Author:             Skaman Sam Tyler
# Date:             May 9th, 2008
# Description:         This is a perl Module which is a frontend to CPANPLUS.
#
#     generated by wxGlade 0.6.1 on Tue Jul  1 08:11:13 2008
#     To get wxPerl visit http://wxPerl.sourceforge.net/
#

# Preloaded methods go here.

=head1 NAME

CPANPLUS::Shell::Wx::PODReader - GUI POD Reader

=head1 SYNOPSIS

    use Wx qw[:allclasses];
    use CPANPLUS::Shell::Wx::PODReader;

    local *Wx::App::OnInit = sub{1};
    my $app = Wx::App->new();
    Wx::InitAllImageHandlers();

    my $frame_podreader = CPANPLUS::Shell::Wx::PODReader::Frame->new();

    $app->SetTopWindow($frame_podreader);
    $frame_podreader->Show(1);
    $app->MainLoop();
    .....
    $frame_podreader->Search($module_name,$where)

also

    $podReader=CPANPLUS::Shell::Wx::PODReader::Embed->new($notebook);
    $notebook->AddPage($podReader,"POD Reader");


=head1 DESCRIPTION

There are two types of PODReader: a windowed version,
CPANPLUS::Shell::Wx::PODReader::Frame (a Wx::Frame), and a version which
can be embedded within other Wx::Windows,
CPANPLUS::Shell::Wx::PODReader::Emed (a Wx::Panel). They both have only one method,
Search().

=head1 GUI DESCRIPTION

The GUI contains 3 basic entities: a Search Bar, the Status Text, and the
Tabs.

=head2 Search Bar

The search bar contains a Find button, which enacts the Search() facility, a
ComboBox, which is where you can type in the text to search for, and the
type box, where you can select where you want to search for the documentation.
It looks like this:
Find $text in $where.
The search box displays the previous 10 successful searches between sessions,
in $HOME/.wxPODReader/searches.txt. You can type in the location of a file
in this box to see the POD for that file.


=head2 Status Text

Some status information is displayed here.

=head2 Tabs

There are 4 tabs available: "Builtin Methods", "FAQ", "Module"
and "Source". They correspond to the values in the 'type' dropdown list.
Only the relevant tabs are displayed per search.

=head1 METHODS

=head2 $podreader->Search($text,$where)

This method searches for pod documentation, using the perldoc command.

=over 4

=item $text

=over 4

The text to search for. Can be anything.

=back

=item $where

=over 4

The place to look for documentation. Can be any one of
"All", "Builtin Methods", "FAQ", "Modules" or "Sources". The default is 'All',
which searches through all documentation, and displays only the tabs that
contain the result. For example, a search for CPANPLUS will only show
the Source and Module tab.

=back

=back

=head1 SEE ALSO

CPAN, CPANPLUS, CPANPLUS::Shell::Tk

website: http://wxcpan.googlecode.com
mailing-list: wxcpan@googlegroups.com
mailing-list website: http://groups.google.com/group/wxcpan

=head1 AUTHOR

Skaman Sam Tyler, E<lt>skamansam@gmail.comE<gt>
website: http://rbe.homeip.net

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 by Skaman Sam Tyler

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut


package CPANPLUS::Shell::Wx::PODReader::Embed;
use Wx qw[:everything];
use base qw(Wx::Panel);
use strict;
use File::Spec;
use Data::Dumper;
use LWP::Simple;
use URI::Escape;
use File::HomeDir;

use constant NUM_SEARCHES=>10;

sub new {
    my( $self, $parent, $id, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;


    $style = wxTAB_TRAVERSAL
        unless defined $style;

    Wx::InitAllImageHandlers();

    $self = $self->SUPER::new( $parent, $id, $pos, $size, $style, $name );

    $self->{nb_podreader} = Wx::Notebook->new($self, -1, wxDefaultPosition, wxDefaultSize, 0);

    #setup tabs
    $self->{module_tab} = Wx::Panel->new($self->{nb_podreader}, -1, wxDefaultPosition, wxDefaultSize, );
    $self->{faq_tab} = Wx::Panel->new($self->{nb_podreader}, -1, wxDefaultPosition, wxDefaultSize, );
    $self->{builtin_tab} = Wx::Panel->new($self->{nb_podreader}, -1, wxDefaultPosition, wxDefaultSize, );
    $self->{source_tab} = Wx::Panel->new($self->{nb_podreader}, -1, wxDefaultPosition, wxDefaultSize, );

    #setup search
    $self->{search_btn} = Wx::Button->new($self, wxID_FIND, "");
    $self->{search_text} = Wx::ComboBox->new($self, -1, "", wxDefaultPosition, wxDefaultSize, [], wxCB_DROPDOWN);
    $self->{label_1} = Wx::StaticText->new($self, -1, "   in   ", wxDefaultPosition, wxDefaultSize, );
    $self->{status_text} = Wx::StaticText->new($self, -1, "[No Module Found]", wxDefaultPosition, wxDefaultSize, wxALIGN_CENTRE);
    $self->{type_text} = Wx::ComboBox->new($self, -1, "", wxDefaultPosition, wxDefaultSize, ["All", "Builtin Methods", "FAQ", "Modules","Sources"], wxCB_DROPDOWN);
    $self->{search_text}->SetSelection(-1);
    $self->{type_text}->SetSelection(0);

    $self->{module_text} = Wx::HtmlWindow->new($self->{module_tab}, -1);
    $self->{faq_text} = Wx::HtmlWindow->new($self->{faq_tab}, -1);
    $self->{source_text} = Wx::RichTextCtrl->new($self->{source_tab}, -1);
    $self->{builtin_text} = Wx::HtmlWindow->new($self->{builtin_tab}, -1);
    $self->{builtin_tab}->Show(0);
    $self->{faq_tab}->Show(0);
    $self->{module_tab}->Show(0);
    $self->{source_tab}->Show(0);

    $self->{podreader_embed_sizer} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{sizer_module} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_faq} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_builtin} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_source} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_search} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_search}->Add($self->{search_btn}, 0, wxADJUST_MINSIZE, 0);
    $self->{sizer_search}->Add($self->{search_text}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL|wxADJUST_MINSIZE, 0);
    $self->{sizer_search}->Add($self->{label_1}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL|wxADJUST_MINSIZE, 0);
    $self->{sizer_search}->Add($self->{type_text}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL|wxADJUST_MINSIZE, 0);
    $self->{podreader_embed_sizer}->Add($self->{sizer_search}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 0);
    $self->{podreader_embed_sizer}->Add($self->{status_text}, 0, wxEXPAND, 0);

    $self->{sizer_builtin}->Add($self->{builtin_text}, 1, wxEXPAND|wxADJUST_MINSIZE, 0);
    $self->{builtin_tab}->SetSizer($self->{sizer_builtin});
    $self->{sizer_faq}->Add($self->{faq_text}, 1, wxEXPAND|wxADJUST_MINSIZE, 0);
    $self->{faq_tab}->SetSizer($self->{sizer_faq});
    $self->{sizer_module}->Add($self->{module_text}, 1, wxEXPAND|wxADJUST_MINSIZE, 0);
    $self->{module_tab}->SetSizer($self->{sizer_module});
    $self->{sizer_source}->Add($self->{source_text}, 1, wxEXPAND|wxADJUST_MINSIZE, 0);
    $self->{source_tab}->SetSizer($self->{sizer_source});
    $self->{nb_podreader}->AddPage($self->{builtin_tab}, "Builtin");
    $self->{nb_podreader}->AddPage($self->{faq_tab}, "FAQ");
    $self->{nb_podreader}->AddPage($self->{module_tab}, "Modules");
    $self->{nb_podreader}->AddPage($self->{source_tab}, "Source");
    $self->{podreader_embed_sizer}->Add($self->{nb_podreader}, 2, wxEXPAND, 0);
    $self->SetSizer($self->{podreader_embed_sizer});
    $self->{podreader_embed_sizer}->Fit($self);

    Wx::Event::EVT_WINDOW_DESTROY($self,$self->GetId,\&SaveSearches);
    Wx::Event::EVT_BUTTON($self, $self->{search_btn}->GetId,
        sub{$self->Search($self->{search_text}->GetValue,$self->{type_text}->GetValue);}
    );
    Wx::Event::EVT_TEXT_ENTER($self, $self->{search_text}->GetId,
        sub{$self->Search($self->{search_text}->GetValue,$self->{type_text}->GetValue);}
    );
    Wx::Event::EVT_HTML_LINK_CLICKED($self,$self->{module_text}->GetId,\&OnLinkClicked);
    Wx::Event::EVT_HTML_LINK_CLICKED($self,$self->{builtin_text}->GetId,\&OnLinkClicked);
    Wx::Event::EVT_HTML_LINK_CLICKED($self,$self->{faq_text}->GetId,\&OnLinkClicked);

    $self->{searches}=GetSearches();
    foreach my $s (@{$self->{searches}}){
        $self->{search_text}->Append($s);
    }



    return $self;

}

#read previous searches from file: $ENV{'HOME'}.'.wxPODReader/searches.txt'
sub GetSearches{
    my ($self,$event)=@_;
    my @searches=();
    my $saveDir=File::Spec->catdir(File::HomeDir->my_home,'.wxPODReader');
    my $searchFile=File::Spec->catfile($saveDir,'searches.txt');
    mkdir($saveDir,0750) unless (-e $saveDir);
    if (open(F, $searchFile)){
        foreach my $l (<F>){
            chomp $l;
            push (@searches,$l);
        }
        close F;
    }
    return \@searches;
}
#save previous searches to file: $ENV{'HOME'}.'.wxPODReader/searches.txt'
sub SaveSearches{
    my ($self,$event)=@_;
    my $saveDir=File::Spec->catdir(File::HomeDir->my_home,'.wxPODReader');
    my $searchFile=File::Spec->catfile($saveDir,'searches.txt');
    mkdir($saveDir,0750) unless (-e $saveDir);

    if (open(F, ">$searchFile")){
        foreach (@{$self->{searches}}){
            print F "$_\n";
        }
        close F;
        return 1;
    }
    return 0;
}


sub OnLinkClicked{
    my ($self,$event)=@_;
    my $ctrl=$event->GetEventObject();
    my $link=$event->GetLinkInfo()->GetHref();
    my $tmp=(split('/',$link))[-1];
    my $newref=uri_unescape($tmp);
    $newref=~s/.*\?(.*)/$1/;
    $self->Search($newref);
}
sub Search {
    my ($self,$term,$where,$event) = @_;
    $self->{status_text}->SetLabel("[Searching for $term".(($where)?" in $where]":']'));
    my $hasFound=0;
    my $content='';
    if (!$where || $where eq 'All' || $where eq 'Builtin Methods'){
        $self->{status_text}->SetLabel($self->{status_text}->GetLabel()." [Builtin Methods] ");
        $content=`perldoc -o html -f $term`;
        $self->{builtin_text}->SetPage($content);
        $hasFound=1;
    }
    $self->{builtin_tab}->Show(($content?1:0));
    $content='';
    if (!$where || $where eq 'All' || $where eq 'FAQ'){
        $self->{status_text}->SetLabel($self->{status_text}->GetLabel()." [Perl FAQ] ");
        $content=`perldoc -o html -q $term`;
        $self->{faq_text}->SetPage($content);
        $hasFound=1;
    }
    $self->{faq_tab}->Show(($content?1:0));

    $content='';
    if (!$where || $where eq 'All' || $where eq 'Modules'){
        $self->{status_text}->SetLabel($self->{status_text}->GetLabel()." [Modules] ");
        $content=`perldoc -o html $term`;
        $self->{module_text}->SetPage($content);
        $hasFound=1;
    }
    $self->{module_tab}->Show(($content?1:0));
    $content='';
    if (!$where || $where eq 'All' || $where eq 'Source'){
        $self->{status_text}->SetLabel($self->{status_text}->GetLabel()." [Sources] ");
        $content=`perldoc -o html -m $term`;
        $self->{source_text}->SetValue($content);
        $hasFound=1;
    }
    $self->{source_tab}->Show(($content?1:0));
    unless ($hasFound){
        $self->{status_text}->SetLabel("[No Documents found for $term ".(($where)?" in $where]":']'));
    }else{
        $self->{search_text}->SetValue($term);
        unless (grep($term,@{$self->{searches}})){
            $self->{search_text}->Insert(($term),0);
            while (@{$self->{searches}}>NUM_SEARCHES){
                pop @{$self->{searches}};
            }
            push(@{$self->{searches}},$term);
        }
    }
}


package CPANPLUS::Shell::Wx::PODReader::Frame;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    $style = wxDEFAULT_FRAME_STYLE
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->{podreader_embed} = CPANPLUS::Shell::Wx::PODReader::Embed->new($self, -1);

    $self->SetTitle("PODReader");
    $self->SetSize(Wx::Size->new(520, 518));

    $self->{sizer_1} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_1}->Add($self->{podreader_embed}, 1, wxEXPAND, 0);
    $self->SetSizer($self->{sizer_1});
    $self->Layout();

    return $self;

}
sub Search{
    my $self = shift;
    $self->{podreader_embed}->Search(@_);
}

1;
