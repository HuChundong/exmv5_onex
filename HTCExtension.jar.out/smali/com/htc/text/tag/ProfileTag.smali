.class public Lcom/htc/text/tag/ProfileTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "ProfileTag.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_NAME_ALT:Ljava/lang/String; = "name_alt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TYPE:Ljava/lang/String; = "pf"


# instance fields
.field private mIsEmpty:Z

.field private mName:Ljava/lang/String;

.field private mNameAlt:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 37
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/text/tag/ProfileTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "name"
    .parameter "nameAlt"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/htc/text/tag/ProfileTag;->mIsEmpty:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mUri:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mNameAlt:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ProfileTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mUri:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    .line 43
    invoke-static {p3}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mNameAlt:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/ProfileTag;->mIsEmpty:Z

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-boolean v1, p0, Lcom/htc/text/tag/ProfileTag;->mIsEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "pf"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/htc/text/tag/ProfileTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 110
    const-string v1, ""

    .line 118
    :goto_0
    return-object v1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ProfileTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ProfileTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ProfileTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ProfileTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/text/tag/ProfileTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ProfileTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/text/tag/ProfileTag;->mUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ProfileTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 117
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/ProfileTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/htc/text/tag/ProfileTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 59
    const-string v1, ""

    .line 67
    :goto_0
    return-object v1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ProfileTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "uri"

    iget-object v2, p0, Lcom/htc/text/tag/ProfileTag;->mUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ProfileTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "name"

    iget-object v2, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ProfileTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "name_alt"

    iget-object v2, p0, Lcom/htc/text/tag/ProfileTag;->mNameAlt:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ProfileTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->mName:Ljava/lang/String;

    return-object v0
.end method
