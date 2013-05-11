.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;
.super Ljava/lang/Object;
.source "SMISubtitleParse.java"


# static fields
.field private static final ALL_TAG_CHECKING_COUNT:I = 0x9

.field private static final FAIL_OPEN_FILE:Ljava/lang/String; = "Can\'t open file"

.field private static final NO_MATCH_TAG:Ljava/lang/String; = "no match tag"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TAG_END_BODY:I = 0x9

.field private static final TAG_END_HEAD:I = 0x3

.field private static final TAG_END_SAMI:I = 0x1

.field private static final TAG_END_STYLE:I = 0x7

.field private static final TAG_END_TITLE:I = 0x5

.field private static final TAG_START_BODY:I = 0x8

.field private static final TAG_START_HEAD:I = 0x2

.field private static final TAG_START_SAMI:I = 0x0

.field private static final TAG_START_STYLE:I = 0x6

.field private static final TAG_START_TITLE:I = 0x4


# instance fields
.field private isDebug:Z

.field private mAllSubtitle:Ljava/lang/String;

.field private mAllSubtitleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatChecking:Ljava/util/BitSet;

.field private mLangIndex:I

.field private mLangList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPEndStyle:Ljava/util/regex/Pattern;

.field private mPStartStyle:Ljava/util/regex/Pattern;

.field private mSubtitleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"
    .parameter "argSubtitle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangIndex:I

    .line 47
    const-string v1, "<(style)\\s+(type)=.*>.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mPStartStyle:Ljava/util/regex/Pattern;

    .line 48
    const-string v1, "</style>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mPEndStyle:Ljava/util/regex/Pattern;

    .line 52
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->startDocument()V

    .line 55
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 56
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    .line 57
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private SMIFormatChecking(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    .line 564
    const-string v0, "<sami>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_START_SAMI"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const-string v0, "</sami>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_END_SAMI"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    invoke-virtual {v0, v2, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 574
    :cond_2
    const-string v0, "<head>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_START_HEAD"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 579
    :cond_3
    const-string v0, "</head>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_END_HEAD"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 584
    :cond_4
    const-string v0, "<title>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 586
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_START_TITLE"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 589
    :cond_5
    const-string v0, "</title>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 591
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_END_TITLE"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mPStartStyle:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 596
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_START_STYLE"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_0

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mPEndStyle:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 601
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_END_STYLE"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_0

    .line 604
    :cond_8
    const-string v0, "<body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 606
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_START_BODY"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_0

    .line 609
    :cond_9
    const-string v0, "</body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "TAG_END_BODY"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_0
.end method

.method private readSubtitleLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, newLineOffset:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 508
    if-ne v0, v5, :cond_2

    .line 510
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 511
    if-ne v0, v5, :cond_1

    .line 513
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, tmpSubtitle:Ljava/lang/String;
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 528
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 531
    .end local v1           #tmpSubtitle:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 519
    .restart local v1       #tmpSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    goto :goto_0

    .line 524
    .end local v1           #tmpSubtitle:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 525
    .restart local v1       #tmpSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitlePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 68
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startDocument] Open file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "[startDocument] Can\'t open file"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can\'t open file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getEndPos(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getEndTimePos()I

    move-result v0

    .line 666
    :goto_0
    return v0

    .line 665
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "End of subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLangClasses()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected getStrPos(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getStartTimePos()I

    move-result v0

    .line 653
    :goto_0
    return v0

    .line 652
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "End of subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSubtitleList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected getSubtitleSize()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSubtitleText(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getsubtitleText()Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 639
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "End of subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v0, "The end of subtitle"

    goto :goto_0
.end method

.method protected releaseSubtitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 539
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 545
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 551
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 557
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitleList:Ljava/util/LinkedList;

    .line 559
    :cond_3
    return-void
.end method

.method protected setLangClass(I)V
    .locals 0
    .parameter "langIndex"

    .prologue
    .line 623
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangIndex:I

    .line 624
    return-void
.end method

.method protected startElement(ZZ)V
    .locals 37
    .parameter "bSearchLang"
    .parameter "bFromEncodingPage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] start"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x0

    .line 104
    .local v5, allSubtitleIndex:I
    const/16 v3, 0x64

    .line 105
    .local v3, SUBTITLE_LINE_SIZE:I
    :try_start_0
    const-string v7, ""

    .line 106
    .local v7, currentLineText:Ljava/lang/String;
    const-string v31, ""

    .line 107
    .local v31, tmpLineText:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const/16 v33, 0x64

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v32, tmpSubtitleText:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 109
    .local v9, endComment:Z
    new-instance v30, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-direct/range {v30 .. v30}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;-><init>()V

    .line 112
    .local v30, subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    const/16 v16, 0x0

    .line 113
    .local v16, langIndex:I
    const/4 v11, 0x1

    .line 114
    .local v11, endText:Z
    const/4 v15, 0x0

    .line 115
    .local v15, hasText:Z
    const/4 v14, 0x0

    .line 116
    .local v14, hasSync:Z
    const/4 v13, 0x0

    .line 122
    .local v13, hasLang:Z
    const/16 v27, 0x1

    .line 123
    .local v27, readSyncOutside:Z
    const/16 v26, 0x1

    .line 124
    .local v26, readCommentOutside:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mAllSubtitle:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    .line 125
    .local v4, allSubtitieListSize:I
    const/4 v6, 0x0

    .line 126
    .local v6, classIndex:I
    const-string v28, "(\\s*)<[sS][yY][nN][cC](\\s+)[sS][tT][aA][rR][tT](\\s*)=(\\s*)(\\d+)(\\s*)>"

    .line 127
    .local v28, sSyncPrototype:Ljava/lang/String;
    const-string v33, "(\\s*)<!--.*"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 128
    .local v19, pComment:Ljava/util/regex/Pattern;
    const-string v33, "-->"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 130
    .local v20, pEndComment:Ljava/util/regex/Pattern;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".*"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    .line 133
    .local v25, pSyncStart:Ljava/util/regex/Pattern;
    const-string v33, "<(/)*[a-zA-Z]+.*"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 134
    .local v23, pSMITag:Ljava/util/regex/Pattern;
    const-string v33, "(\\s*)<(\\s*)[P](\\s*)[C][L][A][S][S](\\s*)=(\\s*).*>.*"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 135
    .local v22, pNotMatchClass:Ljava/util/regex/Pattern;
    const-string v33, "(\\s*)<.*"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 136
    .local v24, pStartTag:Ljava/util/regex/Pattern;
    const-string v33, "</[a-zA-Z]+.*>"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 137
    .local v21, pEndTag:Ljava/util/regex/Pattern;
    const/16 v18, 0x0

    .line 138
    .local v18, pClassHasLang:Ljava/util/regex/Pattern;
    const-string v33, "(\\s*)<(\\s*)[P](\\s*)>.*"

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 139
    .local v17, pClass:Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 141
    .local v12, error:I
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->readSubtitleLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 143
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v33

    move/from16 v0, v33

    if-lt v0, v4, :cond_3

    .line 484
    .end local v4           #allSubtitieListSize:I
    .end local v6           #classIndex:I
    .end local v7           #currentLineText:Ljava/lang/String;
    .end local v9           #endComment:Z
    .end local v11           #endText:Z
    .end local v12           #error:I
    .end local v13           #hasLang:Z
    .end local v14           #hasSync:Z
    .end local v15           #hasText:Z
    .end local v16           #langIndex:I
    .end local v17           #pClass:Ljava/util/regex/Pattern;
    .end local v18           #pClassHasLang:Ljava/util/regex/Pattern;
    .end local v19           #pComment:Ljava/util/regex/Pattern;
    .end local v20           #pEndComment:Ljava/util/regex/Pattern;
    .end local v21           #pEndTag:Ljava/util/regex/Pattern;
    .end local v22           #pNotMatchClass:Ljava/util/regex/Pattern;
    .end local v23           #pSMITag:Ljava/util/regex/Pattern;
    .end local v24           #pStartTag:Ljava/util/regex/Pattern;
    .end local v25           #pSyncStart:Ljava/util/regex/Pattern;
    .end local v26           #readCommentOutside:Z
    .end local v27           #readSyncOutside:Z
    .end local v28           #sSyncPrototype:Ljava/lang/String;
    .end local v30           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .end local v31           #tmpLineText:Ljava/lang/String;
    .end local v32           #tmpSubtitleText:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] End"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] All Tag Match"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_2
    :goto_2
    return-void

    .line 149
    .restart local v4       #allSubtitieListSize:I
    .restart local v6       #classIndex:I
    .restart local v7       #currentLineText:Ljava/lang/String;
    .restart local v9       #endComment:Z
    .restart local v11       #endText:Z
    .restart local v12       #error:I
    .restart local v13       #hasLang:Z
    .restart local v14       #hasSync:Z
    .restart local v15       #hasText:Z
    .restart local v16       #langIndex:I
    .restart local v17       #pClass:Ljava/util/regex/Pattern;
    .restart local v18       #pClassHasLang:Ljava/util/regex/Pattern;
    .restart local v19       #pComment:Ljava/util/regex/Pattern;
    .restart local v20       #pEndComment:Ljava/util/regex/Pattern;
    .restart local v21       #pEndTag:Ljava/util/regex/Pattern;
    .restart local v22       #pNotMatchClass:Ljava/util/regex/Pattern;
    .restart local v23       #pSMITag:Ljava/util/regex/Pattern;
    .restart local v24       #pStartTag:Ljava/util/regex/Pattern;
    .restart local v25       #pSyncStart:Ljava/util/regex/Pattern;
    .restart local v26       #readCommentOutside:Z
    .restart local v27       #readSyncOutside:Z
    .restart local v28       #sSyncPrototype:Ljava/lang/String;
    .restart local v30       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .restart local v31       #tmpLineText:Ljava/lang/String;
    .restart local v32       #tmpSubtitleText:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-nez v33, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_39

    .line 157
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_2a

    .line 159
    :cond_5
    :goto_3
    if-nez v27, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->readSubtitleLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 161
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 162
    const/16 v27, 0x0

    .line 163
    if-eqz p2, :cond_8

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_8

    .line 165
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setSubtitleText(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] first subtitle longer than 50"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_7
    :goto_4
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 171
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 173
    if-eqz v11, :cond_9

    if-eqz v15, :cond_e

    .line 175
    :cond_9
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->styleFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 177
    if-eqz v31, :cond_a

    const-string v33, "\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 178
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 179
    :cond_a
    if-eqz v30, :cond_b

    .line 180
    invoke-virtual/range {v30 .. v31}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setSubtitleText(Ljava/lang/String;)V

    .line 181
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c

    .line 182
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] subtitle = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_c
    const/4 v11, 0x1

    .line 185
    const/4 v15, 0x0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    if-eqz v33, :cond_e

    .line 189
    const-string v33, "="

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    const-string v34, ">"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 190
    .local v10, endPos:I
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setEndTimePos(I)V

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_d

    .line 192
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "end pos = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    if-nez p2, :cond_2

    .line 199
    .end local v10           #endPos:I
    :cond_e
    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 200
    new-instance v30, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    .end local v30           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    invoke-direct/range {v30 .. v30}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;-><init>()V

    .line 201
    .restart local v30       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    const-string v33, "="

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    const-string v34, ">"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 202
    .local v29, startPos:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 203
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "start pos = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_f
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setStartTimePos(I)V

    .line 207
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string v34, "<p"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 208
    if-lez v6, :cond_14

    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 224
    :goto_5
    const/4 v14, 0x1

    .line 228
    .end local v29           #startPos:I
    :cond_10
    if-eqz v14, :cond_19

    if-eqz v13, :cond_11

    if-eqz v18, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-nez v33, :cond_12

    :cond_11
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_19

    .line 232
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    .line 233
    sget-object v34, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] <P Class="

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangIndex:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ">"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_13
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 238
    const/4 v11, 0x0

    .line 259
    :goto_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 216
    .restart local v29       #startPos:I
    :cond_14
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_15

    .line 217
    const-string v7, ""

    .line 221
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 479
    .end local v4           #allSubtitieListSize:I
    .end local v6           #classIndex:I
    .end local v7           #currentLineText:Ljava/lang/String;
    .end local v9           #endComment:Z
    .end local v11           #endText:Z
    .end local v12           #error:I
    .end local v13           #hasLang:Z
    .end local v14           #hasSync:Z
    .end local v15           #hasText:Z
    .end local v16           #langIndex:I
    .end local v17           #pClass:Ljava/util/regex/Pattern;
    .end local v18           #pClassHasLang:Ljava/util/regex/Pattern;
    .end local v19           #pComment:Ljava/util/regex/Pattern;
    .end local v20           #pEndComment:Ljava/util/regex/Pattern;
    .end local v21           #pEndTag:Ljava/util/regex/Pattern;
    .end local v22           #pNotMatchClass:Ljava/util/regex/Pattern;
    .end local v23           #pSMITag:Ljava/util/regex/Pattern;
    .end local v24           #pStartTag:Ljava/util/regex/Pattern;
    .end local v25           #pSyncStart:Ljava/util/regex/Pattern;
    .end local v26           #readCommentOutside:Z
    .end local v27           #readSyncOutside:Z
    .end local v28           #sSyncPrototype:Ljava/lang/String;
    .end local v29           #startPos:I
    .end local v30           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .end local v31           #tmpLineText:Ljava/lang/String;
    .end local v32           #tmpSubtitleText:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 481
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] error = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #allSubtitieListSize:I
    .restart local v6       #classIndex:I
    .restart local v7       #currentLineText:Ljava/lang/String;
    .restart local v9       #endComment:Z
    .restart local v11       #endText:Z
    .restart local v12       #error:I
    .restart local v13       #hasLang:Z
    .restart local v14       #hasSync:Z
    .restart local v15       #hasText:Z
    .restart local v16       #langIndex:I
    .restart local v17       #pClass:Ljava/util/regex/Pattern;
    .restart local v18       #pClassHasLang:Ljava/util/regex/Pattern;
    .restart local v19       #pComment:Ljava/util/regex/Pattern;
    .restart local v20       #pEndComment:Ljava/util/regex/Pattern;
    .restart local v21       #pEndTag:Ljava/util/regex/Pattern;
    .restart local v22       #pNotMatchClass:Ljava/util/regex/Pattern;
    .restart local v23       #pSMITag:Ljava/util/regex/Pattern;
    .restart local v24       #pStartTag:Ljava/util/regex/Pattern;
    .restart local v25       #pSyncStart:Ljava/util/regex/Pattern;
    .restart local v26       #readCommentOutside:Z
    .restart local v27       #readSyncOutside:Z
    .restart local v28       #sSyncPrototype:Ljava/lang/String;
    .restart local v29       #startPos:I
    .restart local v30       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .restart local v31       #tmpLineText:Ljava/lang/String;
    .restart local v32       #tmpSubtitleText:Ljava/lang/StringBuilder;
    :cond_15
    :try_start_2
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 243
    .end local v29           #startPos:I
    :cond_16
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-string v34, "&nbsp;"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 246
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_17

    .line 248
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] discard this subtitleData because &nbsp;"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_17
    const/4 v15, 0x0

    .line 250
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 254
    :cond_18
    const-string v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/4 v15, 0x1

    .line 256
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 262
    :cond_19
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 264
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 265
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] <P Class= not match>"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1a
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 269
    :cond_1b
    if-nez v11, :cond_1f

    .line 271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 272
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] the rest of the sentences = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1c
    const-string v33, "&nbsp;"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1e

    .line 275
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1d

    .line 277
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] discard this subtitleData because &nbsp;"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1d
    const/4 v15, 0x0

    .line 279
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 283
    :cond_1e
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const/4 v15, 0x1

    .line 285
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 288
    :cond_1f
    const-string v33, "</body>"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_27

    .line 290
    if-eqz v11, :cond_20

    if-eqz v15, :cond_26

    .line 292
    :cond_20
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->styleFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 294
    if-eqz v31, :cond_21

    const-string v33, "\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_21

    .line 295
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 296
    :cond_21
    if-eqz v30, :cond_22

    .line 297
    invoke-virtual/range {v30 .. v31}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setSubtitleText(Ljava/lang/String;)V

    .line 298
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_23

    .line 299
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] subtitle = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_23
    const/4 v15, 0x0

    .line 302
    const/4 v11, 0x1

    .line 303
    invoke-virtual/range {v30 .. v30}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getStartTimePos()I

    move-result v33

    invoke-virtual/range {v30 .. v30}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getEndTimePos()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_24

    .line 305
    invoke-virtual/range {v30 .. v30}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getStartTimePos()I

    move-result v33

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x1388

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setEndTimePos(I)V

    .line 307
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    if-eqz v33, :cond_25

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_25
    if-nez p2, :cond_2

    .line 313
    :cond_26
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->SMIFormatChecking(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 318
    :cond_27
    if-eqz v14, :cond_5

    .line 320
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-string v34, "&nbsp;"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_29

    .line 322
    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_28

    .line 324
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] discard this subtitleData because &nbsp;"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_28
    :goto_8
    const/4 v15, 0x1

    .line 332
    const/4 v11, 0x0

    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 335
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] no language case, text = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 328
    :cond_29
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 344
    :cond_2a
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_2b

    .line 346
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    .line 348
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_32

    .line 350
    move-object/from16 v31, v7

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->SMIFormatChecking(Ljava/lang/String;)V

    .line 374
    :cond_2b
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-nez v33, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-nez v33, :cond_0

    .line 376
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2d

    .line 377
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] start comment"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_2d
    :goto_9
    if-nez v26, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->readSubtitleLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 380
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    .line 381
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 382
    const/16 v26, 0x0

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-nez v33, :cond_30

    .line 386
    const-string v33, "."

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_30

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    const-string v35, "{"

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move/from16 v1, v16

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2f

    .line 392
    sget-object v34, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[startElement] LANG TAG = "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_2f
    add-int/lit8 v16, v16, 0x1

    .line 397
    :cond_30
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_34

    .line 399
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_31

    .line 400
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] end comment"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_31
    const/4 v9, 0x1

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->SMIFormatChecking(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-nez v33, :cond_33

    .line 405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2d

    .line 406
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] style not end"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 355
    :cond_32
    :goto_a
    const-string v33, "<"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    .line 357
    const-string v33, "<"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    const-string v34, ">"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->SMIFormatChecking(Ljava/lang/String;)V

    .line 360
    const-string v33, ">"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 361
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_a

    .line 412
    :cond_33
    if-eqz p1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_37

    .line 414
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] language searching finish"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 420
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mPEndStyle:Ljava/util/regex/Pattern;

    move-object/from16 v33, v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_2d

    .line 422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_35

    .line 423
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] end style"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_35
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->SMIFormatChecking(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-nez v33, :cond_36

    .line 427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->isDebug:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2d

    .line 428
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] style not end"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 431
    :cond_36
    if-eqz p1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mFormatChecking:Ljava/util/BitSet;

    move-object/from16 v33, v0

    const/16 v34, 0x7

    invoke-virtual/range {v33 .. v34}, Ljava/util/BitSet;->get(I)Z

    move-result v33

    if-eqz v33, :cond_37

    .line 433
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] language searching finish"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 442
    :cond_37
    const/16 v26, 0x1

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->size()I

    move-result v33

    if-lez v33, :cond_38

    .line 445
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "(\\s*)<(\\s*)[P](\\s*)[C][L][A][S][S](\\s*)=(\\s*)"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangList:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->mLangIndex:I

    move/from16 v35, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".*>.*"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 446
    const/4 v13, 0x1

    .line 453
    :goto_b
    if-nez v9, :cond_0

    .line 455
    sget-object v33, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->TAG:Ljava/lang/String;

    const-string v34, "[startElement] comment tag not end"

    invoke-static/range {v33 .. v34}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v33, Ljava/lang/Exception;

    const-string v34, "no match tag"

    invoke-direct/range {v33 .. v34}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v33

    .line 450
    :cond_38
    const/4 v13, 0x0

    goto :goto_b

    .line 466
    :cond_39
    if-eqz p2, :cond_3a

    .line 468
    add-int/lit8 v12, v12, 0x1

    .line 469
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ne v12, v0, :cond_3a

    .line 472
    new-instance v33, Ljava/lang/Exception;

    const-string v34, "error three times"

    invoke-direct/range {v33 .. v34}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method protected styleFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "styleString"

    .prologue
    .line 681
    move-object v0, p1

    .line 683
    .local v0, tmpLineText:Ljava/lang/String;
    const-string v1, "&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 684
    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_0
    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 686
    const-string v1, "<br>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_1
    const-string v1, "<i>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 688
    const-string v1, "<i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_2
    const-string v1, "</i>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 690
    const-string v1, "</i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    :cond_3
    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 692
    const-string v1, "<b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    :cond_4
    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 694
    const-string v1, "</b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_5
    return-object v0
.end method
