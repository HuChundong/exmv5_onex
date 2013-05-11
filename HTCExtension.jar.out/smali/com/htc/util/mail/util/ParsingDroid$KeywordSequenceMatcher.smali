.class Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeywordSequenceMatcher"
.end annotation


# static fields
.field private static final MATCHING_CONTINUED:I = 0xca

.field private static final MATCHING_FAILED:I = 0xcb

.field private static final MATCHING_NOT_STARTED:I = 0xc9


# instance fields
.field private currentIdentifyingWordPlace:I

.field private currentWord:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field private identifyingCharPlaceInCurrentWord:I

.field private identifyingWordPlace:I

.field private isCurrentCharWorkDone:Z

.field private keywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

.field private matchingStartCharPlace:I

.field private matchingStatus:I


# direct methods
.method constructor <init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V
    .locals 2
    .parameter "keywordSequenceRepresentation"

    .prologue
    const/4 v1, 0x0

    .line 724
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 712
    const/16 v0, 0xc9

    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    .line 714
    iput-boolean v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 718
    iput v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 720
    iput v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentIdentifyingWordPlace:I

    .line 725
    iput-object p1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->keywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 726
    return-void
.end method

.method static synthetic access$400(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStartCharPlace:I

    return v0
.end method


# virtual methods
.method public parsingOneChar(CI)Z
    .locals 9
    .parameter "charInput"
    .parameter "charLocation"

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0x3ed

    const/16 v6, 0xcb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 733
    iput-boolean v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 735
    move v0, p1

    .line 738
    .local v0, charIntegerValue:I
    const/16 v4, 0x41

    if-lt v0, v4, :cond_7

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_7

    .line 739
    add-int/lit8 v0, v0, 0x20

    .line 754
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    if-nez v4, :cond_28

    .line 756
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentIdentifyingWordPlace:I

    iget v5, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_2

    .line 757
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->keywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
    invoke-static {v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->access$800(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    move-result-object v4

    iget v5, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentWord:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 758
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentIdentifyingWordPlace:I

    .line 760
    :cond_2
    iget-object v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentWord:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget v4, v4, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->identificationValue:I

    packed-switch v4, :pswitch_data_0

    .line 1007
    :pswitch_0
    iget-object v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentWord:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v4, v4, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->keyword:Ljava/lang/String;

    iget v5, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1009
    .local v1, comparedChar:C
    const/16 v4, 0xa

    if-eq v1, v4, :cond_3

    const/16 v4, 0xd

    if-eq v1, v4, :cond_3

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1010
    :cond_3
    const/16 v1, 0x3ed

    .line 1013
    :cond_4
    if-ne v0, v1, :cond_25

    .line 1015
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 1017
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    iget-object v5, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->currentWord:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v5, v5, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->keyword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 1020
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 1021
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 1024
    :cond_5
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 1034
    .end local v1           #comparedChar:C
    :goto_1
    iget-boolean v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    if-eqz v4, :cond_26

    .line 1037
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_6

    .line 1038
    iput p2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStartCharPlace:I

    .line 1039
    const/16 v4, 0xca

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    .line 1042
    :cond_6
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    iget-object v5, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->keywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
    invoke-static {v5}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->access$800(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 1062
    :goto_2
    return v2

    .line 740
    :cond_7
    const/16 v4, 0xa

    if-eq v0, v4, :cond_8

    const/16 v4, 0xd

    if-eq v0, v4, :cond_8

    const/16 v4, 0x20

    if-ne v0, v4, :cond_0

    .line 742
    :cond_8
    const/16 v0, 0x3ed

    .line 743
    const/16 p1, 0x3ed

    goto/16 :goto_0

    .line 762
    :pswitch_1
    if-ne v0, v8, :cond_9

    .line 764
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 767
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto :goto_1

    .line 769
    :cond_9
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_a

    .line 771
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto :goto_1

    .line 774
    :cond_a
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 775
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_1

    .line 781
    :pswitch_2
    const/16 v4, 0x27

    if-eq v0, v4, :cond_b

    const/16 v4, 0x22

    if-ne v0, v4, :cond_c

    .line 783
    :cond_b
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 786
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 787
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_1

    .line 790
    :cond_c
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto :goto_1

    .line 795
    :pswitch_3
    const/16 v4, 0x27

    if-eq v0, v4, :cond_d

    const/16 v4, 0x22

    if-ne v0, v4, :cond_e

    .line 797
    :cond_d
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 800
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 801
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_1

    .line 805
    :cond_e
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 806
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_1

    .line 813
    :pswitch_4
    const/16 v4, 0x30

    if-lt v0, v4, :cond_f

    const/16 v4, 0x39

    if-le v0, v4, :cond_10

    :cond_f
    if-eq v0, v8, :cond_10

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_11

    .line 815
    :cond_10
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 818
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 820
    :cond_11
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_12

    .line 822
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 825
    :cond_12
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 826
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 832
    :pswitch_5
    const/16 v4, 0x30

    if-lt v0, v4, :cond_13

    const/16 v4, 0x39

    if-le v0, v4, :cond_14

    :cond_13
    if-eq v0, v8, :cond_14

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_15

    .line 834
    :cond_14
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 837
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 841
    :cond_15
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 842
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 847
    :pswitch_6
    if-ne v0, v7, :cond_16

    .line 850
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 853
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 854
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 858
    :cond_16
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 862
    :pswitch_7
    if-ne v0, v7, :cond_17

    .line 865
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 866
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 869
    :cond_17
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 872
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 876
    :pswitch_8
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_18

    .line 878
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 881
    :cond_18
    const/16 v4, 0x73

    if-ne v0, v4, :cond_19

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_19

    .line 883
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 901
    :goto_3
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 884
    :cond_19
    const/16 v4, 0x72

    if-ne v0, v4, :cond_1a

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-ne v4, v2, :cond_1a

    .line 886
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_3

    .line 887
    :cond_1a
    const/16 v4, 0x63

    if-ne v0, v4, :cond_1b

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 889
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_3

    .line 890
    :cond_1b
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_1c

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    .line 893
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 894
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_3

    .line 897
    :cond_1c
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto :goto_3

    .line 905
    :pswitch_9
    const/16 v4, 0x26

    if-ne v0, v4, :cond_1d

    .line 908
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 909
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 912
    :cond_1d
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 915
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 920
    :pswitch_a
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_1e

    .line 923
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 924
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 927
    :cond_1e
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 930
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 936
    :pswitch_b
    if-ne v0, v7, :cond_1f

    .line 938
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 941
    :cond_1f
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 944
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 945
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 950
    :pswitch_c
    const/16 v4, 0x40

    if-eq v0, v4, :cond_20

    .line 952
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 955
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 957
    :cond_20
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_21

    .line 959
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 963
    :cond_21
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 964
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 970
    :pswitch_d
    if-ne v0, v7, :cond_22

    .line 972
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 975
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 978
    :cond_22
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 979
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 985
    :pswitch_e
    if-ne v0, v7, :cond_23

    .line 987
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 990
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    goto/16 :goto_1

    .line 992
    :cond_23
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_24

    .line 994
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 998
    :cond_24
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 999
    iput v3, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    goto/16 :goto_1

    .line 1027
    .restart local v1       #comparedChar:C
    :cond_25
    iput v6, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_1

    .line 1048
    .end local v1           #comparedChar:C
    :cond_26
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    if-ne v4, v6, :cond_0

    .line 1049
    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    if-nez v4, :cond_27

    iget v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    if-nez v4, :cond_27

    .line 1051
    iput-boolean v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->isCurrentCharWorkDone:Z

    .line 1052
    const/16 v4, 0xc9

    iput v4, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    goto/16 :goto_0

    .line 1058
    :cond_27
    invoke-virtual {p0}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->resetMatching()V

    goto/16 :goto_0

    :cond_28
    move v2, v3

    .line 1062
    goto/16 :goto_2

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public resetMatching()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1066
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingWordPlace:I

    .line 1067
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->identifyingCharPlaceInCurrentWord:I

    .line 1068
    const/16 v0, 0xc9

    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStatus:I

    .line 1069
    return-void
.end method
