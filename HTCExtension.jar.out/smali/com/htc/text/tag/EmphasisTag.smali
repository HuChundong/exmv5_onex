.class public Lcom/htc/text/tag/EmphasisTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "EmphasisTag.java"


# static fields
.field private static final ATTR_ARGB:Ljava/lang/String; = "argb"

.field private static final ATTR_CONTENT:Ljava/lang/String; = "value"

.field private static final TYPE:Ljava/lang/String; = "emp"


# instance fields
.field private mArgb:I

.field private mIsEmpty:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/text/tag/EmphasisTag;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "text"
    .parameter "argb"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/htc/text/tag/EmphasisTag;->mIsEmpty:Z

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/htc/text/tag/EmphasisTag;->mArgb:I

    .line 21
    invoke-static {p1}, Lcom/htc/text/tag/EmphasisTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/htc/text/tag/EmphasisTag;->mArgb:I

    .line 23
    iget-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/EmphasisTag;->mIsEmpty:Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iput-boolean v1, p0, Lcom/htc/text/tag/EmphasisTag;->mIsEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "emp"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/text/tag/EmphasisTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, ""

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " %s %s %s %s %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/text/tag/EmphasisTag;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmphasisTag;->getEndPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/text/tag/EmphasisTag;->getTagType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/text/tag/EmphasisTag;->mArgb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/htc/text/tag/EmphasisTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 41
    const-string v1, ""

    .line 48
    :goto_0
    return-object v1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmphasisTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "argb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/text/tag/EmphasisTag;->mArgb:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmphasisTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "value"

    iget-object v2, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/EmphasisTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmphasisTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->mText:Ljava/lang/String;

    return-object v0
.end method
