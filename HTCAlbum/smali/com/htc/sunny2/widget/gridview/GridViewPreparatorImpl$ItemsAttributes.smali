.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemsAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    }
.end annotation


# instance fields
.field private itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

.field private itemsCount:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "GridviewPreparatorImpl.ItemsAttributes"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .line 77
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0           #i:I
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    .line 94
    return-void
.end method

.method public getDecodedQuality(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 238
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecodedQuality NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    :goto_0
    return v1

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 243
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 246
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->decodedQuality:I

    goto :goto_0
.end method

.method public getProcessQuality(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 264
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessQuality NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    :goto_0
    return v1

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 269
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 272
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->processQuality:I

    goto :goto_0
.end method

.method public getTextureId(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 134
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextureId NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    :goto_0
    return v1

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 139
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 142
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    goto :goto_0
.end method

.method public isFileCacheNotSaved(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 211
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileCacheNotSaved NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    :goto_0
    return v1

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 217
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 220
    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public isOffLineDecode(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 185
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffLineDecode NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    :goto_0
    return v1

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 190
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 193
    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public isProcessed(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 109
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProcessed NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return v1

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 114
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 117
    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    goto :goto_0
.end method

.method public isTextureDirty(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 159
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextureDirty NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    :goto_0
    return v1

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 164
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 167
    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public reset(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "itemsCount"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 82
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    .line 84
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    new-array v0, v0, [Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .line 85
    return-void
.end method

.method public setDecodedQuality(II)V
    .locals 4
    .parameter "index"
    .parameter "decodedQuality"

    .prologue
    .line 225
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDecodedQuality NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 230
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 231
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 232
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 234
    :cond_2
    iput p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->decodedQuality:I

    goto :goto_0
.end method

.method public setFileCacheNotSaved(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fileCacheNotSaved"

    .prologue
    .line 198
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFileCacheNotSaved NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 203
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 204
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 205
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 207
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public setOffLineDecode(IZ)V
    .locals 4
    .parameter "index"
    .parameter "offLineDecode"

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffLineDecode NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 177
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 179
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 181
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public setProcessQuality(II)V
    .locals 4
    .parameter "index"
    .parameter "processQuality"

    .prologue
    .line 251
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProcessQuality NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 256
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 257
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 258
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 260
    :cond_2
    iput p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->processQuality:I

    goto :goto_0
.end method

.method public setProcessed(IZ)V
    .locals 4
    .parameter "index"
    .parameter "isProcessed"

    .prologue
    .line 97
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProcessed NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 102
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 103
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 104
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 106
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    goto :goto_0
.end method

.method public setTextureDirty(IZ)V
    .locals 4
    .parameter "index"
    .parameter "dirty"

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureDirty NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 152
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 154
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 156
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public setTextureId(II)V
    .locals 4
    .parameter "index"
    .parameter "identifier"

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureId NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 127
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 128
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    .line 129
    .restart local v0       #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 131
    :cond_2
    iput p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    goto :goto_0
.end method
