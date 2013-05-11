.class public Lcom/htc/text/tag/PrimaryAutoLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryAutoLinkTag.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "ak1"


# instance fields
.field private mIsEmpty:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 9
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mIsEmpty:Z

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mIsEmpty:Z

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mIsEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "ak1"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " %s %s %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getEndPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\n"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, ""

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->mText:Ljava/lang/String;

    return-object v0
.end method
