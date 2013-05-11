.class public Lcom/htc/text/tag/TimestampTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "TimestampTag.java"


# static fields
.field private static final ATTR_TS:Ljava/lang/String; = "value"

.field private static final TYPE:Ljava/lang/String; = "ts"


# instance fields
.field private mText:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/TimestampTag;->mText:Ljava/lang/String;

    .line 13
    iput-wide p1, p0, Lcom/htc/text/tag/TimestampTag;->mTimestamp:J

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/text/tag/TimestampTag;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/TimestampTag;->mText:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/text/tag/TimestampTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    const-string v0, " %s %s %s %s %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/text/tag/TimestampTag;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/text/tag/TimestampTag;->getEndPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ts"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/text/tag/TimestampTag;->mText:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/text/tag/TimestampTag;->mTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/TimestampTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/text/tag/TimestampTag;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    return-object v0
.end method
