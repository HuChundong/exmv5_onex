.class public abstract Lcom/htc/text/tag/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lcom/htc/text/tag/ITag;


# instance fields
.field private mEndPosition:I

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/htc/text/tag/AbstractTag;->mStartPosition:I

    .line 10
    iput v0, p0, Lcom/htc/text/tag/AbstractTag;->mEndPosition:I

    return-void
.end method

.method protected static appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "value"

    .prologue
    .line 157
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    return-void
.end method

.method protected static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    const-string v5, "&"

    const-string v6, "&amp;"

    invoke-static {p0, v5, v6}, Lcom/htc/text/tag/AbstractTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, escapedAmpersand:Ljava/lang/String;
    const-string v5, "<"

    const-string v6, "&lt;"

    invoke-static {v0, v5, v6}, Lcom/htc/text/tag/AbstractTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, escapedLessThan:Ljava/lang/String;
    const-string v5, ">"

    const-string v6, "&gt;"

    invoke-static {v4, v5, v6}, Lcom/htc/text/tag/AbstractTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, escapedGreaterThan:Ljava/lang/String;
    const-string v5, "\'"

    const-string v6, "&apos;"

    invoke-static {v3, v5, v6}, Lcom/htc/text/tag/AbstractTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, escapedApostrophe:Ljava/lang/String;
    const-string v5, "\""

    const-string v6, "&quot;"

    invoke-static {v1, v5, v6}, Lcom/htc/text/tag/AbstractTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, escapedDoubleQuote:Ljava/lang/String;
    return-object v2
.end method

.method protected static escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "pattern"
    .parameter "replace"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 22
    .local v2, startIndex:I
    const/4 v0, 0x0

    .line 24
    .local v0, endIndex:I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 25
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static getNonNegativeInteger(I)I
    .locals 0
    .parameter "integer"

    .prologue
    .line 105
    if-ltz p0, :cond_0

    .line 108
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected static getNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/text/tag/AbstractTag;->stripNonValidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getNonSpaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 78
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, st:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected static stripNonValidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 54
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v2, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string v3, ""

    .line 71
    :goto_0
    return-object v3

    .line 60
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, current:C
    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const v3, 0xd7ff

    if-gt v0, v3, :cond_1

    const/16 v3, 0x2028

    if-ne v0, v3, :cond_3

    :cond_1
    const v3, 0xe000

    if-lt v0, v3, :cond_2

    const v3, 0xfffd

    if-le v0, v3, :cond_3

    :cond_2
    const/high16 v3, 0x1

    if-lt v0, v3, :cond_4

    const v3, 0x10ffff

    if-gt v0, v3, :cond_4

    .line 68
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v0           #current:C
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getEndPosition()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/htc/text/tag/AbstractTag;->mEndPosition:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/htc/text/tag/AbstractTag;->mStartPosition:I

    return v0
.end method

.method public setEndPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/htc/text/tag/AbstractTag;->getNonNegativeInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/text/tag/AbstractTag;->mEndPosition:I

    .line 126
    return-void
.end method

.method public setStartPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    invoke-static {p1}, Lcom/htc/text/tag/AbstractTag;->getNonNegativeInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/text/tag/AbstractTag;->mStartPosition:I

    .line 118
    return-void
.end method
