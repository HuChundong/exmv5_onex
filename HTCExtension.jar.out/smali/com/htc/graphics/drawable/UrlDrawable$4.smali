.class Lcom/htc/graphics/drawable/UrlDrawable$4;
.super Landroid/os/AsyncTask;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmaps"

    .prologue
    const/4 v6, 0x0

    .line 1209
    aget-object v0, p1, v6

    .line 1211
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 1213
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Lcom/htc/graphics/util/HtcBitmapUtils;->getMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1215
    :cond_0
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    .line 1217
    .local v1, default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 1218
    .local v2, forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1219
    invoke-virtual {v2, v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1220
    iget v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v4, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1229
    :cond_1
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    if-eqz v3, :cond_2

    .line 1230
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1233
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1205
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$4;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1238
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput-object p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 1240
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->invalidateSelf()V

    .line 1242
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1205
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
