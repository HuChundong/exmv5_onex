.class Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;
.super Ljava/lang/Object;
.source "MimeIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/MimeIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dimension"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->reset()V

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    .line 88
    iput p2, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    .line 89
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;-><init>()V

    .line 106
    .local v0, cloned:Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;
    iget v1, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    iput v1, v0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    .line 107
    iget v1, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    iput v1, v0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    .line 108
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
    .line 82
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;

    move-result-object v0

    return-object v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

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
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    iput v0, p0, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    .line 97
    return-void
.end method
