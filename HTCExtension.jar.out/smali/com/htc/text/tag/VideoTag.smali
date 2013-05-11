.class public Lcom/htc/text/tag/VideoTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "VideoTag.java"


# static fields
.field private static final ATTR_PV_THUMBNAIL:Ljava/lang/String; = "pv"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final TYPE:Ljava/lang/String; = "vid"


# instance fields
.field private mPv:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "pv_uri"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mText:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mUri:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mPv:Ljava/lang/String;

    .line 15
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mText:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/htc/text/tag/VideoTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/VideoTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mUri:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lcom/htc/text/tag/VideoTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/VideoTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/VideoTag;->mPv:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/text/tag/VideoTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "vid"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/VideoTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/VideoTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/text/tag/VideoTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/htc/text/tag/VideoTag;->mUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/htc/text/tag/VideoTag;->mPv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/VideoTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/VideoTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "uri"

    iget-object v2, p0, Lcom/htc/text/tag/VideoTag;->mUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/VideoTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/VideoTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "pv"

    iget-object v2, p0, Lcom/htc/text/tag/VideoTag;->mPv:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/VideoTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/VideoTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/text/tag/VideoTag;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    return-object v0
.end method
