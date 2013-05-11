.class Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildGlobalSBitmapRunnable"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .parameter
    .parameter "d"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1109
    iput p3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mWidth:I

    .line 1110
    iput p4, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mHeight:I

    .line 1111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1115
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 1116
    .local v0, sBmpBkg:Lcom/htc/sunnyCore/SBitmap;
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->mHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 1117
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 1119
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Lcom/htc/sunnyCore/SBitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$302(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 1121
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 1127
    :goto_0
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$1300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 1132
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$1400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 1133
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$1400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunnyCore/Sprite;)V

    .line 1135
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z
    invoke-static {v1, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$1502(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Z)Z

    .line 1136
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;
    invoke-static {v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$1602(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    .line 1137
    return-void

    .line 1124
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    goto :goto_0
.end method
