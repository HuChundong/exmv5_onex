.class public Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
.super Ljava/lang/Object;
.source "CacheUrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/CacheUrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimension"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->reset()V

    .line 302
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 310
    iput p2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    .line 311
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    .line 356
    .local v0, cloned:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 357
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    .line 358
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v0

    return-object v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 347
    iget v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 335
    instance-of v2, p1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 336
    check-cast v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    .line 337
    .local v0, other:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v3, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v3, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 339
    .end local v0           #other:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    :cond_0
    return v1
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iput v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
