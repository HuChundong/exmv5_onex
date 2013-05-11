.class public Lcom/htc/sunnyCore/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/Queue$ItemComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private addIndex:I

.field private buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bufferIncrementSize:I

.field private name:Ljava/lang/String;

.field private pollIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "queueName"

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "sunnyQueue"

    iput-object v0, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    .line 33
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunnyCore/Queue;->bufferIncrementSize:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    .line 37
    iput v1, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 38
    iput v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 48
    iput-object p1, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private extendBuffer(I)Z
    .locals 13
    .parameter "newBufferSize"

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 78
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-gtz p1, :cond_0

    .line 84
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return v8

    .line 88
    :cond_0
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    if-lt v9, p1, :cond_1

    .line 90
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget-object v10, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    iget-object v10, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 96
    :cond_2
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    const/4 v4, 0x0

    .line 107
    .local v4, newBuffer:[Ljava/lang/Object;,"[TT;"
    :try_start_0
    new-array v4, p1, [Ljava/lang/Object;

    .end local v4           #newBuffer:[Ljava/lang/Object;,"[TT;"
    check-cast v4, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .restart local v4       #newBuffer:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v6, v4

    .local v6, s:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 117
    aput-object v12, v4, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2           #i:I
    .end local v4           #newBuffer:[Ljava/lang/Object;,"[TT;"
    .end local v6           #s:I
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    const-string v10, "Create new buffer NG."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #i:I
    .restart local v4       #newBuffer:[Ljava/lang/Object;,"[TT;"
    .restart local v6       #s:I
    :cond_4
    const/4 v3, 0x0

    .line 124
    .local v3, itemsCount:I
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_9

    .line 126
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    if-le v9, v10, :cond_5

    .line 128
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 130
    iget v5, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 131
    .local v5, offset:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    .line 133
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v5, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 136
    .end local v5           #offset:I
    :cond_5
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    if-ge v9, v10, :cond_7

    .line 138
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 140
    iget v7, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 141
    .local v7, srcOffset:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 143
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 146
    :cond_6
    move v0, v3

    .line 147
    .local v0, destOffset:I
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    add-int/2addr v3, v9

    .line 149
    const/4 v2, 0x0

    :goto_4
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ge v2, v9, :cond_9

    .line 151
    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 156
    .end local v0           #destOffset:I
    .end local v7           #srcOffset:I
    :cond_7
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v9, v9, v10

    if-eqz v9, :cond_9

    .line 158
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 160
    iget v7, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 161
    .restart local v7       #srcOffset:I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_8

    .line 163
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 166
    :cond_8
    move v0, v3

    .line 167
    .restart local v0       #destOffset:I
    iget v9, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    add-int/2addr v3, v9

    .line 169
    const/4 v2, 0x0

    iget v6, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    :goto_6
    if-ge v2, v6, :cond_9

    .line 171
    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 179
    .end local v0           #destOffset:I
    .end local v7           #srcOffset:I
    :cond_9
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_a

    .line 181
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v6, v9

    :goto_7
    if-ge v2, v6, :cond_a

    .line 182
    iget-object v9, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aput-object v12, v9, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 187
    :cond_a
    iput-object v4, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    .line 188
    iput v8, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 189
    iput v3, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 191
    const/4 v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - null item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 266
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->bufferIncrementSize:I

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - create buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/htc/sunnyCore/Queue;->bufferIncrementSize:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - extend buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    aput-object p1, v1, v2

    .line 287
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 288
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 290
    iput v0, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 293
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 203
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_4
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    if-le v2, v3, :cond_5

    .line 220
    iget v0, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    .line 221
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0           #i:I
    :cond_5
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    if-ge v2, v3, :cond_7

    .line 225
    iget v0, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .restart local v0       #i:I
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    .local v1, s:I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 226
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    .line 228
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 232
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_7
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 234
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    .restart local v1       #s:I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 235
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 241
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_8
    iput v5, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 242
    iput v5, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    goto/16 :goto_0
.end method

.method public find(Lcom/htc/sunnyCore/Queue$ItemComparator;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/Queue$ItemComparator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    .local p1, itemComparator:Lcom/htc/sunnyCore/Queue$ItemComparator;,"Lcom/htc/sunnyCore/Queue$ItemComparator<TT;>;"
    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-object v1

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 376
    iget v0, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 380
    .local v0, i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lcom/htc/sunnyCore/Queue$ItemComparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 382
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0

    .line 385
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 386
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 388
    const/4 v0, 0x0

    .line 391
    :cond_4
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    iget-object v0, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v0, v0, v1

    .line 346
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v0, v2, v3

    .line 312
    .local v0, out:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_3

    .line 314
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-eq v2, v3, :cond_2

    .line 316
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "poll() NG - index error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 319
    goto :goto_0

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aput-object v1, v2, v3

    .line 326
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 327
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    iget-object v2, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 329
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 407
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 426
    iget v1, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 427
    .local v1, i:I
    const/4 v0, 0x0

    .line 431
    .local v0, gotIt:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 433
    add-int/lit8 v2, v1, 0x1

    .line 434
    .local v2, next:I
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 436
    const/4 v2, 0x0

    .line 439
    :cond_3
    iget v3, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ne v2, v3, :cond_4

    .line 441
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 442
    iput v1, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    goto :goto_0

    .line 447
    :cond_4
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 448
    move v1, v2

    .line 450
    goto :goto_1

    .line 453
    .end local v2           #next:I
    :cond_5
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_6

    .line 455
    const/4 v0, 0x1

    .line 456
    goto :goto_1

    .line 459
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 460
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v1, v3, :cond_7

    .line 462
    const/4 v1, 0x0

    .line 465
    :cond_7
    iget v3, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    if-ne v1, v3, :cond_2

    goto :goto_0
.end method

.method public swapWith(Lcom/htc/sunnyCore/Queue;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    .local p1, b:Lcom/htc/sunnyCore/Queue;,"Lcom/htc/sunnyCore/Queue<TT;>;"
    if-nez p1, :cond_0

    .line 58
    iget-object v3, p0, Lcom/htc/sunnyCore/Queue;->name:Ljava/lang/String;

    const-string v4, "swap NG"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    .line 63
    .local v1, bufferTemp:[Ljava/lang/Object;,"[TT;"
    iget-object v3, p1, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    .line 64
    iput-object v1, p1, Lcom/htc/sunnyCore/Queue;->buffer:[Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 68
    .local v0, addIndexTemp:I
    iget v3, p1, Lcom/htc/sunnyCore/Queue;->addIndex:I

    iput v3, p0, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 69
    iput v0, p1, Lcom/htc/sunnyCore/Queue;->addIndex:I

    .line 71
    iget v2, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 72
    .local v2, pollIndexTemp:I
    iget v3, p1, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    iput v3, p0, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    .line 73
    iput v2, p1, Lcom/htc/sunnyCore/Queue;->pollIndex:I

    goto :goto_0
.end method
