.class Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;
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
    name = "AlphaFadeOutRunnable"
.end annotation


# instance fields
.field mSprite:Lcom/htc/sunnyCore/Sprite;

.field mStartTime:J

.field mStop:Z

.field final synthetic this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;


# direct methods
.method private constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/view/SSurfaceView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1266
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 1283
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStop:Z

    if-nez v3, :cond_0

    .line 1284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1285
    .local v1, current:J
    iget-wide v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v0, v3, v4

    .line 1286
    .local v0, alpha:F
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    .line 1287
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mSprite:Lcom/htc/sunnyCore/Sprite;

    sub-float v4, v5, v0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    .line 1288
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v3, v3, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
    invoke-static {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1200(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->post(Ljava/lang/Runnable;)V

    .line 1294
    .end local v0           #alpha:F
    .end local v1           #current:J
    :cond_0
    :goto_0
    return-void

    .line 1291
    .restart local v0       #alpha:F
    .restart local v1       #current:J
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_0
.end method

.method start(JLcom/htc/sunnyCore/Sprite;)V
    .locals 1
    .parameter "startTime"
    .parameter "sprite"

    .prologue
    .line 1271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStop:Z

    .line 1272
    iput-wide p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStartTime:J

    .line 1273
    iput-object p3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1274
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1200(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->post(Ljava/lang/Runnable;)V

    .line 1275
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 1277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStartTime:J

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->mStop:Z

    .line 1279
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1200(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1280
    return-void
.end method
