.class public Lcom/htc/text/tag/PrimaryLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryLinkTag.java"


# static fields
.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final TYPE:Ljava/lang/String; = "lk1"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIsEmpty:Z

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    .line 22
    :goto_0
    invoke-static {p2}, Lcom/htc/text/tag/PrimaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    .line 26
    :cond_0
    return-void

    .line 20
    :cond_1
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "lk1"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 102
    const-string v1, ""

    .line 110
    :goto_0
    return-object v1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/PrimaryLinkTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/PrimaryLinkTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/PrimaryLinkTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/PrimaryLinkTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 109
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/PrimaryLinkTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    iget-boolean v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 39
    const-string v1, ""

    .line 47
    :goto_0
    return-object v1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "uri"

    iget-object v2, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/PrimaryLinkTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method
