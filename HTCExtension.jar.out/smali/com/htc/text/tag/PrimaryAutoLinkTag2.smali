.class public Lcom/htc/text/tag/PrimaryAutoLinkTag2;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryAutoLinkTag2.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "ak1"


# instance fields
.field private mDecResult:Ljava/lang/StringBuilder;

.field private mIsEmpty:Z

.field private mText:Ljava/lang/String;

.field private mXmlResult:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mIsEmpty:Z

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mDecResult:Ljava/lang/StringBuilder;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mXmlResult:Ljava/lang/StringBuilder;

    .line 21
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mIsEmpty:Z

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mIsEmpty:Z

    goto :goto_0
.end method

.method private static preprocess(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 17
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "decResult"
    .parameter "xmlResult"

    .prologue
    .line 97
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 98
    .local v4, content:Landroid/text/SpannableStringBuilder;
    const/4 v14, 0x1

    invoke-static {v4, v14}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 99
    const/4 v14, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const-class v16, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 100
    .local v13, urlSpans:[Landroid/text/style/URLSpan;
    const/4 v8, 0x0

    .line 101
    .local v8, markerStart:I
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 102
    .local v7, length:I
    const-string v1, ""

    .line 103
    .local v1, a:Ljava/lang/String;
    move-object v2, v13

    .local v2, arr$:[Landroid/text/style/URLSpan;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v9, v2, v5

    .line 104
    .local v9, span:Landroid/text/style/URLSpan;
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 105
    .local v11, spanStart:I
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 106
    .local v10, spanEnd:I
    if-ge v8, v11, :cond_0

    .line 107
    invoke-virtual {v4, v8, v11}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    invoke-virtual {v4, v11, v10}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, b:Ljava/lang/String;
    const/4 v12, 0x0

    .line 112
    .local v12, tag:Lcom/htc/text/tag/ITag;
    const-string v14, "http"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 113
    new-instance v12, Lcom/htc/text/tag/PrimaryLinkTag;

    .end local v12           #tag:Lcom/htc/text/tag/ITag;
    invoke-direct {v12, v3, v3}, Lcom/htc/text/tag/PrimaryLinkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .restart local v12       #tag:Lcom/htc/text/tag/ITag;
    :goto_1
    add-int v14, v11, p1

    invoke-interface {v12, v14}, Lcom/htc/text/tag/ITag;->setStartPosition(I)V

    .line 118
    add-int v14, v10, p1

    invoke-interface {v12, v14}, Lcom/htc/text/tag/ITag;->setEndPosition(I)V

    .line 120
    invoke-interface {v12}, Lcom/htc/text/tag/ITag;->toDecoration()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {v12}, Lcom/htc/text/tag/ITag;->toEncodedString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move v8, v10

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v12, Lcom/htc/text/tag/PrimaryTextTag;

    .end local v12           #tag:Lcom/htc/text/tag/ITag;
    invoke-direct {v12, v3}, Lcom/htc/text/tag/PrimaryTextTag;-><init>(Ljava/lang/String;)V

    .restart local v12       #tag:Lcom/htc/text/tag/ITag;
    goto :goto_1

    .line 125
    .end local v3           #b:Ljava/lang/String;
    .end local v9           #span:Landroid/text/style/URLSpan;
    .end local v10           #spanEnd:I
    .end local v11           #spanStart:I
    .end local v12           #tag:Lcom/htc/text/tag/ITag;
    :cond_2
    if-ge v8, v7, :cond_3

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_3
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "ak1"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, ""

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->getEndPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mDecResult:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mXmlResult:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->preprocess(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 84
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mDecResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, ""

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->getEndPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mDecResult:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mXmlResult:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->preprocess(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 38
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mXmlResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag2;->mText:Ljava/lang/String;

    return-object v0
.end method
