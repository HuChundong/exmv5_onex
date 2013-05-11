.class public Lcom/htc/album/TabPluginDevice/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final CROP_DONE:I = 0x2

.field private static final Log_TAG:Ljava/lang/String; = null

.field private static final PHOTO_PICKED:I = 0x1


# instance fields
.field private mShowDoneMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const-class v0, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/Wallpaper;->Log_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 292
    const/16 v0, 0x7f04

    if-ne p1, v0, :cond_1

    .line 294
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    .line 298
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/Wallpaper;->setResult(I)V

    .line 299
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/Wallpaper;->finish()V

    .line 301
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x7f04

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 257
    .local v3, source:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 258
    .local v0, imageToUse:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 262
    const-string v4, "drm_content"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 264
    .local v2, noCrop:Z
    if-eqz v2, :cond_0

    .line 266
    const-class v4, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 272
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .end local v2           #noCrop:Z
    :goto_1
    const-string v4, "cropType"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v1, v6}, Lcom/htc/album/TabPluginDevice/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    return-void

    .line 270
    .restart local v2       #noCrop:Z
    :cond_0
    const-class v4, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 279
    .end local v2           #noCrop:Z
    :cond_1
    const-string v4, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v4, "show_drm_settable"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    if-eqz v0, :cond_0

    .line 307
    const v0, 0x7f0a0083

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    :cond_0
    return-void
.end method
