.class public Lcom/htc/text/SocialMarkupBuilder;
.super Ljava/lang/Object;
.source "SocialMarkupBuilder.java"


# static fields
.field private static final ROOT_TAG_END:Ljava/lang/String; = "</z>"

.field private static final ROOT_TAG_START:Ljava/lang/String; = "<z>"

.field private static final SENSE:Ljava/lang/String; = null

.field private static final SENSE40:Ljava/lang/String; = "4.0"


# instance fields
.field private mDecContentStringBuilder:Ljava/lang/StringBuilder;

.field private mDecStyleStringBuilder:Ljava/lang/StringBuilder;

.field private mEndPosition:I

.field private mFormat:Lcom/htc/text/tag/ITag$Format;

.field private mIsDecFormat:Z

.field private mIsProfileTagAdded:Z

.field private mIsXmlFormat:Z

.field private mStartPosition:I

.field private mTrimmedStringBuilder:Ljava/lang/StringBuilder;

.field private mXmlStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    sput-object v0, Lcom/htc/text/SocialMarkupBuilder;->SENSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    invoke-direct {p0, v0}, Lcom/htc/text/SocialMarkupBuilder;-><init>(Lcom/htc/text/tag/ITag$Format;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/htc/text/tag/ITag$Format;)V
    .locals 3
    .parameter "format"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsDecFormat:Z

    .line 25
    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsXmlFormat:Z

    .line 26
    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsProfileTagAdded:Z

    .line 27
    iput v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mStartPosition:I

    .line 28
    iput v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mEndPosition:I

    .line 29
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    .line 40
    iput-object p1, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    .line 41
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_1

    .line 42
    :cond_0
    iput-boolean v2, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsXmlFormat:Z

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_3

    .line 46
    :cond_2
    iput-boolean v2, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsDecFormat:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public static combineDecFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "style"
    .parameter "content"

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/htc/text/SocialMarkupBuilder;->combineDecFormat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static combineDecFormat([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strings"

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, builder:Ljava/lang/StringBuilder;
    array-length v3, p0

    .line 139
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 140
    aget-object v0, p0, v2

    .line 141
    .local v0, a:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_0

    .line 147
    const-string v4, "\ufffb"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    .end local v0           #a:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static encloseXmlRootTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<z>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</z>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isTagWithLink(Lcom/htc/text/tag/ITag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 170
    instance-of v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/htc/text/tag/ImageTag;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static splitDecFormat(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 154
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\ufffb"

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 156
    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 157
    .local v2, size:I
    new-array v0, v2, [Ljava/lang/String;

    .line 158
    .local v0, array:[Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-object v0
.end method


# virtual methods
.method public append(Lcom/htc/text/tag/ITag;)Lcom/htc/text/SocialMarkupBuilder;
    .locals 2
    .parameter "tag"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsXmlFormat:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p1}, Lcom/htc/text/SocialMarkupBuilder;->isTagWithLink(Lcom/htc/text/tag/ITag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsDecFormat:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mStartPosition:I

    .line 63
    iget v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mStartPosition:I

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->getContentLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mEndPosition:I

    .line 64
    iget v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mStartPosition:I

    invoke-interface {p1, v0}, Lcom/htc/text/tag/ITag;->setStartPosition(I)V

    .line 65
    iget v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mEndPosition:I

    invoke-interface {p1, v0}, Lcom/htc/text/tag/ITag;->setEndPosition(I)V

    .line 66
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toRawContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p1}, Lcom/htc/text/SocialMarkupBuilder;->isTagWithLink(Lcom/htc/text/tag/ITag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toDecoration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toTrimmedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    instance-of v0, p1, Lcom/htc/text/tag/ProfileTag;

    if-eqz v0, :cond_4

    .line 75
    iget-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsProfileTagAdded:Z

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsProfileTagAdded:Z

    .line 81
    :cond_4
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    :cond_3
    iput-boolean v1, p0, Lcom/htc/text/SocialMarkupBuilder;->mIsProfileTagAdded:Z

    .line 128
    iput v1, p0, Lcom/htc/text/SocialMarkupBuilder;->mStartPosition:I

    .line 129
    iput v1, p0, Lcom/htc/text/SocialMarkupBuilder;->mEndPosition:I

    .line 130
    return-void
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/SocialMarkupBuilder;->encloseXmlRootTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/SocialMarkupBuilder;->combineDecFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    sget-object v0, Lcom/htc/text/SocialMarkupBuilder;->SENSE:Ljava/lang/String;

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mXmlStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/SocialMarkupBuilder;->encloseXmlRootTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecStyleStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/SocialMarkupBuilder;->combineDecFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/htc/text/SocialMarkupBuilder;->SENSE:Ljava/lang/String;

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mTrimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->mDecContentStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
