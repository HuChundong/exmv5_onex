.class public Lcom/htc/text/tag/PlurkQualifierTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PlurkQualifierTag.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final TYPE:Ljava/lang/String; = "plq"


# instance fields
.field private mIsEmpty:Z

.field private mName:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mText:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mType:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/htc/text/tag/PlurkQualifierTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mType:Ljava/lang/String;

    .line 19
    invoke-static {p2}, Lcom/htc/text/tag/PlurkQualifierTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mText:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_1
    iput-boolean v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, ""

    .line 106
    :goto_0
    return-object v1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PlurkQualifierTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PlurkQualifierTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    const-string v1, "plq"

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/PlurkQualifierTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    iget-boolean v1, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 35
    const-string v1, ""

    .line 42
    :goto_0
    return-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "type"

    iget-object v2, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mType:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/PlurkQualifierTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/PlurkQualifierTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "name"

    iget-object v2, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/PlurkQualifierTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/PlurkQualifierTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, ""

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, ""

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->mText:Ljava/lang/String;

    goto :goto_0
.end method
