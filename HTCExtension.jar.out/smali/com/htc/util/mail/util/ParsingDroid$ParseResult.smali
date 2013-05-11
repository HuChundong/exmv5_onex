.class public Lcom/htc/util/mail/util/ParsingDroid$ParseResult;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseResult"
.end annotation


# instance fields
.field private imagelinkLocation:I

.field private quotedTextLocation:I

.field private urlLinkLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/util/ParsingDroid$IndexPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I

    .line 141
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->urlLinkLocation:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/util/mail/util/ParsingDroid$ParseResult;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->urlLinkLocation:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getImageLinkResult()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->imagelinkLocation:I

    return v0
.end method

.method public getLinkLocationResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/util/ParsingDroid$IndexPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->urlLinkLocation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQuotedTextResult()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$ParseResult;->quotedTextLocation:I

    return v0
.end method
