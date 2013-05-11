.class Lcom/htc/painting/penmenu/PenMenu$3$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/painting/penmenu/PenMenu$3;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu$3;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 468
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "PenMenu"

    const-string v3, "reset foreground for mMoveInAnimListener.onAnimationEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    iget-object v2, v2, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 472
    .local v1, foreground:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 474
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    iget-object v2, v2, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2, v4}, Lcom/htc/painting/penmenu/PenMenu;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 475
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 476
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #foreground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
