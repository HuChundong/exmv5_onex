.class public abstract Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.super Ljava/lang/Object;
.source "SimpleObjectFormatter.java"

# interfaces
.implements Lcom/htc/album/ObjectWriter/ObjectFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected capAllHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x200

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 19
    .local v1, out:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 25
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected capArrayInt([I)Ljava/lang/String;
    .locals 3
    .parameter "arrayInt"

    .prologue
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 46
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected capHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 10
    .local v0, out:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected capListObjHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, listData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x200

    const/16 v7, 0x5d

    const/16 v6, 0x5b

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0[]"

    .line 39
    :goto_0
    return-object v4

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 32
    .local v0, content:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 33
    .local v2, out:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 39
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "cappedData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 85
    :cond_0
    return-object v2

    .line 74
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, startPos:I
    const/4 v1, -0x1

    .local v1, endPos:I
    const/4 v0, -0x1

    .line 77
    .local v0, dataLen:I
    :goto_0
    const/16 v4, 0x5b

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 78
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    add-int/lit8 v3, v1, 0x1

    .line 80
    add-int v1, v3, v0

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4

    .line 82
    :cond_2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v3, v1, 0x1

    goto :goto_0
.end method

.method protected removeArrayInt(Ljava/lang/String;)[I
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 126
    .local v2, output:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 127
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-object v2
.end method

.method protected removeHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cappedData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, content:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, startPos:I
    const/4 v2, -0x1

    .local v2, endPos:I
    const/4 v1, -0x1

    .line 57
    .local v1, dataLen:I
    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 58
    if-eq v2, v5, :cond_1

    .line 59
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 61
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 62
    add-int v2, v3, v1

    .line 63
    if-eq v1, v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_2

    .line 64
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
.end method

.method protected removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "cappedListData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x5d

    const/16 v7, 0x5b

    const/4 v6, -0x1

    .line 90
    if-nez p1, :cond_1

    .line 119
    :cond_0
    return-object v3

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 93
    .local v0, content:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, startPos:I
    const/4 v2, -0x1

    .local v2, endPos:I
    const/4 v1, -0x1

    .line 95
    .local v1, dataLen:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 96
    if-eq v2, v6, :cond_2

    .line 97
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 100
    add-int v2, v4, v1

    .line 101
    if-eq v1, v6, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 102
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_3
    if-eqz v0, :cond_0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 108
    const/4 v2, -0x1

    .line 109
    const/4 v1, -0x1

    .line 111
    :goto_0
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 112
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    add-int/lit8 v4, v2, 0x1

    .line 114
    add-int v2, v4, v1

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5

    .line 116
    :cond_4
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v2, 0x1

    goto :goto_0
.end method
