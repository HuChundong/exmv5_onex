.class public Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseRequest"
.end annotation


# instance fields
.field private imagelinkParseContent:I

.field private quotedTextParseContent:I

.field private urlLinkParseContent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->quotedTextParseContent:I

    .line 104
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->imagelinkParseContent:I

    .line 105
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->urlLinkParseContent:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->quotedTextParseContent:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->imagelinkParseContent:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->urlLinkParseContent:I

    return v0
.end method


# virtual methods
.method public parseImageLink(I)V
    .locals 0
    .parameter "numOfParseContent"

    .prologue
    .line 122
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->imagelinkParseContent:I

    .line 123
    return-void
.end method

.method public parseQuotedText(I)V
    .locals 0
    .parameter "numOfParseContent"

    .prologue
    .line 113
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->quotedTextParseContent:I

    .line 114
    return-void
.end method

.method public parseUrlLink(I)V
    .locals 3
    .parameter "numOfParseContent"

    .prologue
    .line 131
    const-string v0, "ParsingDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUrlLink with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseRequest;->urlLinkParseContent:I

    .line 133
    return-void
.end method
