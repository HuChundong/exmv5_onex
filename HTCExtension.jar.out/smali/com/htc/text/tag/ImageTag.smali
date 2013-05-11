.class public Lcom/htc/text/tag/ImageTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "ImageTag.java"


# static fields
.field public static final ATTR_PV_HIGH:Ljava/lang/String; = "pv3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_PV_MEDIUM:Ljava/lang/String; = "pv2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_PV_ORIGINAL:Ljava/lang/String; = "pv1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_PV_THUMBNAIL:Ljava/lang/String; = "pv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TYPE:Ljava/lang/String; = "img"


# instance fields
.field private mPv:Ljava/lang/String;

.field private mPv1:Ljava/lang/String;

.field private mPv2:Ljava/lang/String;

.field private mPv3:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "pv_uri"

    .prologue
    .line 51
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/tag/ImageTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "pv_uri"
    .parameter "pv1_uri"
    .parameter "pv2_uri"
    .parameter "pv3_uri"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mText:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mUri:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv1:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv2:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv3:Ljava/lang/String;

    .line 55
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mText:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ImageTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mUri:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ImageTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv:Ljava/lang/String;

    .line 58
    invoke-static {p3}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ImageTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv1:Ljava/lang/String;

    .line 59
    invoke-static {p4}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ImageTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv2:Ljava/lang/String;

    .line 60
    invoke-static {p5}, Lcom/htc/text/tag/ImageTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/tag/ImageTag;->getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ImageTag;->mPv3:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/text/tag/ImageTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "img"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ImageTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ImageTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/text/tag/ImageTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/text/tag/ImageTag;->mUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/text/tag/ImageTag;->mPv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/htc/text/tag/ImageTag;->mPv1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/htc/text/tag/ImageTag;->mPv2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/htc/text/tag/ImageTag;->mPv3:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/ImageTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/ImageTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "uri"

    iget-object v2, p0, Lcom/htc/text/tag/ImageTag;->mUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ImageTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "pv"

    iget-object v2, p0, Lcom/htc/text/tag/ImageTag;->mPv:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ImageTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "pv1"

    iget-object v2, p0, Lcom/htc/text/tag/ImageTag;->mPv1:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ImageTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "pv2"

    iget-object v2, p0, Lcom/htc/text/tag/ImageTag;->mPv2:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ImageTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "pv3"

    iget-object v2, p0, Lcom/htc/text/tag/ImageTag;->mPv3:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/ImageTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/ImageTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/text/tag/ImageTag;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    return-object v0
.end method
