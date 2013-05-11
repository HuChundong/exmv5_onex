.class Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;
.super Ljava/lang/Object;
.source "HtcWrapHardwareRenderer.java"

# interfaces
.implements Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;


# direct methods
.method constructor <init>(Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardwarePostDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method public onHardwarePreDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method
