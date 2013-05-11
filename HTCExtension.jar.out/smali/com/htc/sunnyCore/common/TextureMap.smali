.class public Lcom/htc/sunnyCore/common/TextureMap;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "TextureMap"


# instance fields
.field private mMaxValidIndex:I

.field private mMinValidIndex:I

.field protected mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

.field private mValidItemsCount:I

.field private textureInfoRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter "contentListItemsCount"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v4, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    .line 40
    iput v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    .line 41
    iput v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .line 42
    iput v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    .line 44
    new-instance v1, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v2, "TextureMap.TextureInfo Recycler"

    invoke-direct {v1, v2}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 63
    new-array v1, p1, [Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    iput-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aput-object v4, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iput p1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .line 68
    iput v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    .line 69
    return-void
.end method


# virtual methods
.method public findAValidIndexNotInRange(II)I
    .locals 3
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 87
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 88
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 101
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 88
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 95
    add-int/lit8 v0, p2, 0x1

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-gt v0, v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    .end local v0           #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findAValidIndexNotInRange(III)I
    .locals 4
    .parameter "begin"
    .parameter "end"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    .line 109
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v1, v3

    .line 110
    .local v1, textureLength:I
    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ge v3, v1, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-lt v3, v1, :cond_2

    :cond_0
    move v0, v2

    .line 132
    :cond_1
    :goto_0
    return v0

    .line 113
    :cond_2
    if-ltz p3, :cond_4

    .line 114
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    if-ge v0, v1, :cond_3

    .line 115
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_3
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    :goto_2
    if-le v0, p2, :cond_6

    if-lez v0, :cond_6

    .line 119
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 118
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 123
    .end local v0           #i:I
    :cond_4
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    .restart local v0       #i:I
    :goto_3
    if-le v0, p2, :cond_5

    if-lez v0, :cond_5

    .line 124
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 127
    :cond_5
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    :goto_4
    if-ge v0, p1, :cond_6

    if-ge v0, v1, :cond_6

    .line 128
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v2

    .line 132
    goto :goto_0
.end method

.method public findAValidIndexNotInRangeNotEqualToInputTexture(IIILcom/htc/sunnyCore/Texture;)I
    .locals 4
    .parameter "begin"
    .parameter "end"
    .parameter "direction"
    .parameter "inputTexture"

    .prologue
    const/4 v2, -0x1

    .line 137
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v1, v3

    .line 138
    .local v1, textureLength:I
    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ge v3, v1, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-lt v3, v1, :cond_2

    :cond_0
    move v0, v2

    .line 160
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    if-ltz p3, :cond_6

    .line 142
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4

    if-ge v0, v1, :cond_4

    .line 143
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v3, p4, :cond_1

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_4
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    :goto_2
    if-le v0, p2, :cond_a

    if-lez v0, :cond_a

    .line 147
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v3, p4, :cond_1

    .line 146
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    .end local v0           #i:I
    :cond_6
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    .restart local v0       #i:I
    :goto_3
    if-le v0, p2, :cond_8

    if-lez v0, :cond_8

    .line 152
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v3, p4, :cond_1

    .line 151
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 155
    :cond_8
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    :goto_4
    if-ge v0, p1, :cond_a

    if-ge v0, v1, :cond_a

    .line 156
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v3, p4, :cond_1

    .line 155
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    .line 160
    goto :goto_0
.end method

.method public get(I)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 235
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v0, v2, p1

    .line 240
    .local v0, textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_2

    .line 245
    const-string v1, "TextureMap"

    const-string v2, "get() - sunnyTexture should not be 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v1, v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0
.end method

.method public getContentListItemsCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v0, v0

    return v0
.end method

.method public getIdentifier(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 256
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v0, v2, p1

    .line 261
    .local v0, textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    if-eqz v0, :cond_0

    .line 265
    iget-object v1, v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_2

    .line 266
    const-string v1, "TextureMap"

    const-string v2, "getIdentifier() - sunnyTexture should not be 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    iget-object v1, v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxValidIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    return v0
.end method

.method public getMinValidIndex()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    return v0
.end method

.method public put(ILcom/htc/sunnyCore/Texture;)V
    .locals 1
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "texture"
    .parameter "identifier"

    .prologue
    .line 283
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    if-nez p2, :cond_3

    .line 288
    :cond_2
    const-string v1, "TextureMap"

    const-string v2, "put()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    .line 293
    .local v0, textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    if-nez v0, :cond_4

    .line 294
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    .end local v0           #textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;-><init>(Lcom/htc/sunnyCore/common/TextureMap;)V

    .line 297
    .restart local v0       #textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->set(Lcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aput-object v0, v1, p1

    .line 299
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    .line 301
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ge p1, v1, :cond_5

    .line 302
    iput p1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .line 305
    :cond_5
    iget v1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-le p1, v1, :cond_0

    .line 306
    iput p1, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    goto :goto_0
.end method

.method public remove(I)Lcom/htc/sunnyCore/Texture;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 168
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v3, v3

    if-lt p1, v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 201
    :cond_1
    :goto_0
    return-object v0

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v1, v3, p1

    .line 173
    .local v1, textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    if-nez v1, :cond_3

    move-object v0, v2

    .line 174
    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, v1, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    .line 179
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->free()V

    .line 180
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v3, v1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    .line 182
    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aput-object v2, v3, p1

    .line 183
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    .line 185
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    if-ne p1, v2, :cond_4

    .line 186
    :goto_1
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    iget-object v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 187
    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 193
    :cond_4
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-ne p1, v2, :cond_1

    .line 194
    :goto_2
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-ltz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    iget v3, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 194
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    goto :goto_2

    .line 186
    :cond_5
    iget v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 209
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v3

    .line 213
    :cond_1
    const/4 v1, -0x1

    .line 215
    .local v1, removeIndex:I
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/htc/sunnyCore/common/TextureMap;->mMaxValidIndex:I

    if-gt v0, v4, :cond_2

    .line 216
    iget-object v4, p0, Lcom/htc/sunnyCore/common/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v2, v4, v0

    .line 217
    .local v2, textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    move v1, v0

    .line 223
    .end local v2           #textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    :cond_2
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 227
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    goto :goto_0

    .line 215
    .restart local v2       #textureInfo:Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/sunnyCore/common/TextureMap;->mValidItemsCount:I

    return v0
.end method
