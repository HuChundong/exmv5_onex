.class public Lcom/htc/text/tag/BlankTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "BlankTag.java"


# static fields
.field private static final CONTENT_DEC:Ljava/lang/String; = " "

.field private static final CONTENT_XML:Ljava/lang/String; = " "

.field private static final DEFAULT_NUMBER:I = 0x1


# instance fields
.field private mDecText:Ljava/lang/String;

.field private mNumber:I

.field private mXmlText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/text/tag/BlankTag;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 17
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 9
    iput v4, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    .line 18
    iput p1, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    .line 19
    iget v3, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    if-ge v3, v4, :cond_0

    .line 20
    iput v4, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v0, decOutput:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    if-ge v1, v3, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/htc/text/tag/BlankTag;->getDecContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/text/tag/BlankTag;->mDecText:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v2, xmlOutput:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/htc/text/tag/BlankTag;->mNumber:I

    if-ge v1, v3, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/htc/text/tag/BlankTag;->getXmlContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/text/tag/BlankTag;->mXmlText:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/text/tag/BlankTag;->mDecText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getDecContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, " "

    return-object v0
.end method

.method protected getXmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, " "

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/text/tag/BlankTag;->mXmlText:Ljava/lang/String;

    return-object v0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/text/tag/BlankTag;->mDecText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method
