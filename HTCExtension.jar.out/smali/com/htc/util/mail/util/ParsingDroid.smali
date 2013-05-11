.class public Lcom/htc/util/mail/util/ParsingDroid;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/util/ParsingDroid$1;,
        Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;,
        Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;,
        Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;,
        Lcom/htc/util/mail/util/ParsingDroid$Pattern;,
        Lcom/htc/util/mail/util/ParsingDroid$ParseResult;,
        Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;,
        Lcom/htc/util/mail/util/ParsingDroid$IndexPair;
    }
.end annotation


# static fields
.field private static final CR:I = 0xd

.field private static final LF:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ParsingDroid"

.field private static sParsingDroid:Lcom/htc/util/mail/util/ParsingDroid;


# instance fields
.field private mAnchorEnd:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

.field private mAnchorStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

.field private mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

.field private mPattern:Lcom/htc/util/mail/util/ParsingDroid$Pattern;

.field private mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

.field private mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;

    invoke-direct {v0}, Lcom/htc/util/mail/util/ParsingDroid$Pattern;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid;->mPattern:Lcom/htc/util/mail/util/ParsingDroid$Pattern;

    .line 699
    return-void
.end method

.method public static getInstance()Lcom/htc/util/mail/util/ParsingDroid;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/util/mail/util/ParsingDroid;->sParsingDroid:Lcom/htc/util/mail/util/ParsingDroid;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid;

    invoke-direct {v0}, Lcom/htc/util/mail/util/ParsingDroid;-><init>()V

    sput-object v0, Lcom/htc/util/mail/util/ParsingDroid;->sParsingDroid:Lcom/htc/util/mail/util/ParsingDroid;

    .line 96
    :cond_0
    sget-object v0, Lcom/htc/util/mail/util/ParsingDroid;->sParsingDroid:Lcom/htc/util/mail/util/ParsingDroid;

    return-object v0
.end method

.method private initImageLinkSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V
    .locals 6
    .parameter "pattern"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 492
    new-array v1, v4, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    iput-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 500
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 501
    .local v0, createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<img"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mFindSrcAttrButGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "http"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 503
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v5

    .line 504
    return-void
.end method

.method private initQuotedKeywordSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V
    .locals 10
    .parameter "pattern"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 541
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    iput-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 545
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 546
    .local v0, createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLineOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mReply:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mMessage:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLine:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 548
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v5

    .line 551
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 552
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLineOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mOriginal:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mMessage:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLine:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 554
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v7

    .line 557
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 558
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v7, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<div class=\"gmail_quote\">"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 559
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v8

    .line 562
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 563
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "________________________________"

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 564
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v9

    .line 567
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 568
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "<hr id=\"stopspelling\">"

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 569
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 573
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 574
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "<hr id=\"ecxstopspelling\">"

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 575
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 578
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 579
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "<hr size=\"1\"><b><span style=\"font-weight:bold\">from:"

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 580
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 583
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 584
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mBlockQuoteTagStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExitZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mTypeAttrCite:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 586
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 589
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 590
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "<br class=\"apple-interchange-newline\">"

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 591
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 594
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 595
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v9, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mBlockQuoteTagStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mTypeAttrCite:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 596
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 599
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 600
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-instance v1, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v2, "<span id=\"olk_src_body_section\""

    invoke-direct {v1, v5, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 601
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 605
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 606
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/16 v1, 0x15

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<div style="

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationtionOne:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "border:none;"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "border-top:solid #b5c4df 1.0pt;"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "padding:3.0pt"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->num:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->num:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->num:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationtionOne:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 611
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 618
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 619
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/16 v1, 0x17

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<hr size="

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->numOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "width=\"100%\" align="

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "center"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "tabindex="

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->numOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "</span></font></div>"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "<p class="

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "msonormal"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 626
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    .line 632
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 633
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<hr tabindex="

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->numOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 635
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    .line 647
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v6}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 648
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mLessThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButAtSignOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v7

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAtSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButAndSignZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButColonZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mColon:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mBrTag:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mSpace:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 650
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 652
    return-void
.end method

.method private initUrlLinkSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V
    .locals 10
    .parameter "pattern"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    iput-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 514
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 515
    .local v0, createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v6, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "http://"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 516
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v5

    .line 518
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 519
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v6, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "https://"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 520
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v6

    .line 522
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 523
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v6, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "rtsp://"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 524
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v8

    .line 526
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 527
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    new-array v1, v6, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "www."

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 528
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    aput-object v0, v1, v9

    .line 530
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 531
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v6

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "a"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "href"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 532
    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid;->mAnchorStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 534
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .end local v0           #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    invoke-direct {v0, v7}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V

    .line 535
    .restart local v0       #createdKeywordSequence:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "<"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v6

    new-instance v2, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v3, "/"

    invoke-direct {v2, v5, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, "a"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const-string v4, ">"

    invoke-direct {v3, v5, v4}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V

    .line 536
    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid;->mAnchorEnd:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    .line 537
    return-void
.end method


# virtual methods
.method public parsingStart(Ljava/lang/String;Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)Lcom/htc/util/mail/util/ParsingDroid$ParseResult;
    .locals 31
    .parameter "originalContent"
    .parameter "request"

    .prologue
    .line 181
    new-instance v21, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;

    invoke-direct/range {v21 .. v21}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;-><init>()V

    .line 183
    .local v21, result:Lcom/htc/util/mail/util/ParsingDroid$ParseResult;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_0

    if-nez p2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v21

    .line 187
    :cond_1
    const-string v29, "ParsingDroid"

    const-string v30, "parsingDroid before parsing"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v20, 0x0

    .line 190
    .local v20, quotedMatcherList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    const/4 v12, 0x0

    .line 191
    .local v12, imageLinkMatcherList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    const/16 v28, 0x0

    .line 192
    .local v28, urlLinkMatcherList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    const/16 v24, 0x0

    .line 193
    .local v24, urlAnchorStartMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    const/16 v23, 0x0

    .line 195
    .local v23, urlAnchorEndMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->quotedTextParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$000(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    if-lez v29, :cond_3

    const/16 v17, 0x1

    .line 196
    .local v17, needMatchQuotedText:Z
    :goto_1
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->imagelinkParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$100(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    if-lez v29, :cond_4

    const/16 v16, 0x1

    .line 197
    .local v16, needMatchImageLink:Z
    :goto_2
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->urlLinkParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$200(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    if-lez v29, :cond_5

    const/16 v18, 0x1

    .line 200
    .local v18, needMatchUrlLink:Z
    :goto_3
    if-eqz v17, :cond_6

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mPattern:Lcom/htc/util/mail/util/ParsingDroid$Pattern;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid;->initQuotedKeywordSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    move-object/from16 v20, v0

    .line 207
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_6

    .line 208
    new-instance v29, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mQuotedKeywordSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v30, v0

    aget-object v30, v30, v9

    invoke-direct/range {v29 .. v30}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;-><init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V

    aput-object v29, v20, v9

    .line 207
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 195
    .end local v9           #i:I
    .end local v16           #needMatchImageLink:Z
    .end local v17           #needMatchQuotedText:Z
    .end local v18           #needMatchUrlLink:Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 196
    .restart local v17       #needMatchQuotedText:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 197
    .restart local v16       #needMatchImageLink:Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 213
    .restart local v18       #needMatchUrlLink:Z
    :cond_6
    if-eqz v16, :cond_8

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    if-nez v29, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mPattern:Lcom/htc/util/mail/util/ParsingDroid$Pattern;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid;->initImageLinkSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V

    .line 218
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v12, v0, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    .line 220
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_8

    .line 221
    new-instance v29, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mImageLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v30, v0

    aget-object v30, v30, v9

    invoke-direct/range {v29 .. v30}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;-><init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V

    aput-object v29, v12, v9

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 225
    .end local v9           #i:I
    :cond_8
    if-eqz v18, :cond_b

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mPattern:Lcom/htc/util/mail/util/ParsingDroid$Pattern;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid;->initUrlLinkSequenceList(Lcom/htc/util/mail/util/ParsingDroid$Pattern;)V

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    move-object/from16 v28, v0

    .line 232
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_a

    .line 233
    new-instance v29, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mUrlLinkSequenceList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v30, v0

    aget-object v30, v30, v9

    invoke-direct/range {v29 .. v30}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;-><init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V

    aput-object v29, v28, v9

    .line 232
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 236
    :cond_a
    new-instance v24, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    .end local v24           #urlAnchorStartMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mAnchorStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;-><init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V

    .line 237
    .restart local v24       #urlAnchorStartMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    new-instance v23, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;

    .end local v23           #urlAnchorEndMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/util/ParsingDroid;->mAnchorEnd:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;-><init>(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)V

    .line 241
    .end local v9           #i:I
    .restart local v23       #urlAnchorEndMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_b
    const/4 v6, 0x0

    .line 242
    .local v6, continueParsing:Z
    const/4 v8, 0x0

    .line 243
    .local v8, foundUrlStartPattern:Z
    const/4 v13, 0x0

    .line 244
    .local v13, insideHtmlTag:Z
    const/4 v4, 0x0

    .line 245
    .local v4, betweenAnchorTag:Z
    const/4 v15, 0x0

    .line 246
    .local v15, metLeftBracket:Z
    const/16 v26, -0x1

    .line 248
    .local v26, urlBeginIndex:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    .local v22, stringSize:I
    :goto_7
    move/from16 v0, v22

    if-ge v9, v0, :cond_19

    .line 249
    const/4 v6, 0x0

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 253
    .local v5, charReader:C
    if-eqz v17, :cond_c

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->quotedTextParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$000(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    move/from16 v0, v29

    if-lt v0, v9, :cond_c

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I
    invoke-static/range {v21 .. v21}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->access$300(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)I

    move-result v29

    if-gez v29, :cond_c

    .line 254
    const/4 v6, 0x1

    .line 257
    move-object/from16 v3, v20

    .local v3, arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    array-length v14, v3

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_8
    if-ge v10, v14, :cond_c

    aget-object v19, v3, v10

    .line 259
    .local v19, quotedKeywordMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v9}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->parsingOneChar(CI)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 261
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStartCharPlace:I
    invoke-static/range {v19 .. v19}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->access$400(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;)I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    #setter for: Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I
    invoke-static {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->access$302(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;I)I

    .line 262
    const/4 v6, 0x0

    .line 268
    .end local v3           #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v19           #quotedKeywordMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_c
    if-eqz v16, :cond_d

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->imagelinkParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$100(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    move/from16 v0, v29

    if-lt v0, v9, :cond_d

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I
    invoke-static/range {v21 .. v21}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->access$500(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)I

    move-result v29

    if-gez v29, :cond_d

    .line 269
    const/4 v6, 0x1

    .line 272
    move-object v3, v12

    .restart local v3       #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    array-length v14, v3

    .restart local v14       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_9
    if-ge v10, v14, :cond_d

    aget-object v11, v3, v10

    .line 274
    .local v11, imageLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    invoke-virtual {v11, v5, v9}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->parsingOneChar(CI)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 276
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStartCharPlace:I
    invoke-static {v11}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->access$400(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;)I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    #setter for: Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I
    invoke-static {v0, v1}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->access$502(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;I)I

    .line 277
    const/4 v6, 0x0

    .line 284
    .end local v3           #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v10           #i$:I
    .end local v11           #imageLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v14           #len$:I
    :cond_d
    if-eqz v18, :cond_18

    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->urlLinkParseContent:I
    invoke-static/range {p2 .. p2}, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->access$200(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I

    move-result v29

    move/from16 v0, v29

    if-lt v0, v9, :cond_18

    .line 285
    const/4 v6, 0x1

    .line 288
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v9}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->parsingOneChar(CI)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 289
    invoke-virtual/range {v24 .. v24}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->resetMatching()V

    .line 290
    const/4 v4, 0x1

    .line 293
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v9}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->parsingOneChar(CI)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 294
    invoke-virtual/range {v23 .. v23}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->resetMatching()V

    .line 295
    const/4 v4, 0x0

    .line 298
    :cond_f
    if-eqz v4, :cond_13

    .line 248
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 257
    .restart local v3       #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .restart local v10       #i$:I
    .restart local v14       #len$:I
    .restart local v19       #quotedKeywordMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 272
    .end local v19           #quotedKeywordMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .restart local v11       #imageLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 303
    .end local v3           #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v10           #i$:I
    .end local v11           #imageLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v14           #len$:I
    :cond_13
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_14

    const/16 v29, 0x3e

    move/from16 v0, v29

    if-ne v5, v0, :cond_10

    .line 307
    :cond_14
    const/16 v29, 0x3c

    move/from16 v0, v29

    if-ne v5, v0, :cond_1a

    .line 308
    const/4 v13, 0x1

    .line 317
    :cond_15
    :goto_a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v8, v0, :cond_16

    .line 318
    move-object/from16 v3, v28

    .restart local v3       #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    array-length v14, v3

    .restart local v14       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_b
    if-ge v10, v14, :cond_16

    aget-object v27, v3, v10

    .line 319
    .local v27, urlLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v9}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->parsingOneChar(CI)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 321
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->matchingStartCharPlace:I
    invoke-static/range {v27 .. v27}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->access$400(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;)I

    move-result v26

    .line 322
    const/4 v8, 0x1

    .line 323
    const/4 v15, 0x0

    .line 324
    invoke-virtual/range {v27 .. v27}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;->resetMatching()V

    .line 330
    .end local v3           #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v27           #urlLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_16
    if-eqz v8, :cond_18

    .line 331
    const/4 v7, 0x0

    .line 333
    .local v7, foundUrlEndPattern:Z
    const/16 v29, 0x26

    move/from16 v0, v29

    if-ne v5, v0, :cond_1e

    .line 335
    add-int/lit8 v29, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x6c

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    add-int/lit8 v29, v9, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x74

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    add-int/lit8 v29, v9, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x3b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 337
    const/4 v7, 0x1

    .line 368
    :cond_17
    :goto_c
    if-eqz v7, :cond_18

    .line 369
    new-instance v25, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;

    add-int/lit8 v29, v9, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;-><init>(II)V

    .line 370
    .local v25, urlBeginEndIndex:Lcom/htc/util/mail/util/ParsingDroid$IndexPair;
    #getter for: Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->urlLinkLocation:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->access$600(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v8, 0x0

    .line 376
    .end local v7           #foundUrlEndPattern:Z
    .end local v25           #urlBeginEndIndex:Lcom/htc/util/mail/util/ParsingDroid$IndexPair;
    :cond_18
    if-nez v6, :cond_10

    .line 381
    .end local v5           #charReader:C
    :cond_19
    const-string v29, "ParsingDroid"

    const-string v30, "parsingDroid after parsing"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    .restart local v5       #charReader:C
    :cond_1a
    const/16 v29, 0x3e

    move/from16 v0, v29

    if-ne v5, v0, :cond_15

    .line 310
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 318
    .restart local v3       #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .restart local v10       #i$:I
    .restart local v14       #len$:I
    .restart local v27       #urlLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 338
    .end local v3           #arr$:[Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v27           #urlLinkMatcher:Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceMatcher;
    .restart local v7       #foundUrlEndPattern:Z
    :cond_1c
    add-int/lit8 v29, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x67

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    add-int/lit8 v29, v9, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x74

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    add-int/lit8 v29, v9, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x3b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    .line 340
    const/4 v7, 0x1

    goto :goto_c

    .line 341
    :cond_1d
    add-int/lit8 v29, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x23

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    add-int/lit8 v29, v9, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x33

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    add-int/lit8 v29, v9, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x32

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    add-int/lit8 v29, v9, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x3b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 344
    const/4 v7, 0x1

    goto/16 :goto_c

    .line 346
    :cond_1e
    const/16 v29, 0xa

    move/from16 v0, v29

    if-eq v5, v0, :cond_1f

    const/16 v29, 0xd

    move/from16 v0, v29

    if-eq v5, v0, :cond_1f

    const/16 v29, 0x20

    move/from16 v0, v29

    if-eq v5, v0, :cond_1f

    const/16 v29, 0x3c

    move/from16 v0, v29

    if-ne v5, v0, :cond_20

    .line 348
    :cond_1f
    const/4 v7, 0x1

    goto/16 :goto_c

    .line 349
    :cond_20
    const/16 v29, 0x28

    move/from16 v0, v29

    if-ne v5, v0, :cond_21

    .line 351
    const/4 v15, 0x1

    goto/16 :goto_c

    .line 352
    :cond_21
    const/16 v29, 0x29

    move/from16 v0, v29

    if-ne v5, v0, :cond_22

    .line 354
    if-nez v15, :cond_17

    .line 357
    const/4 v7, 0x1

    .line 358
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 362
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ne v9, v0, :cond_17

    .line 363
    const/4 v7, 0x1

    .line 364
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c
.end method
