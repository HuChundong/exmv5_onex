.class Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeywordSequenceRepresentation"
.end annotation


# instance fields
.field private keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/util/ParsingDroid$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;)[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    return-object v0
.end method


# virtual methods
.method assignKeyword(Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V
    .locals 4
    .parameter "assignedKeyword"

    .prologue
    const/4 v3, 0x0

    .line 671
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    if-nez v1, :cond_0

    .line 672
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    aput-object p1, v1, v3

    iput-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 682
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 676
    .local v0, tmpList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 680
    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    goto :goto_0
.end method

.method varargs assignKeywordList([Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;)V
    .locals 4
    .parameter "assignedKeywordList"

    .prologue
    const/4 v3, 0x0

    .line 686
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    if-nez v1, :cond_0

    .line 687
    iput-object p1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 696
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 691
    .local v0, tmpList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    iget-object v2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    iget-object v1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordSequenceRepresentation;->keywordList:[Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    goto :goto_0
.end method
